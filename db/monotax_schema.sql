BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "invoices" (
	"invoice_number"	INTEGER,
	"invoice_year"	TEXT,
	"invoice_month"	TEXT,
	"invoice_day"	TEXT,
	"client_name"	TEXT,
	"client_street"	TEXT,
	"client_province"	TEXT,
	"client_id_type"	TEXT,
	"client_id_number"	TEXT,
	"client_vat_status"	TEXT,
	"invoice_ars_amount"	REAL,
	PRIMARY KEY("invoice_number")
);
CREATE TABLE IF NOT EXISTS "usd_ars_xrate" (
	"xrate_day"	TEXT,
	"xrate_month"	TEXT,
	"xrate_year"	TEXT,
	"official_buy_rate"	REAL,
	"official_sell_rate"	REAL,
	"blue_in_effect"	TEXT,
	"blue_buy_rate"	REAL,
	"blue_sell_rate"	REAL
);
CREATE VIEW most_invoiced_clients AS
SELECT
	client_name,
	ROUND(SUM(i.invoice_ars_amount / mx.mon_avg_sell_rate_official_then_blue), 2) AS usd_amount
FROM
	invoices i
JOIN
	monthly_average_xrates mx
ON
	i.invoice_year = mx.xrate_year AND 
	i.invoice_month = mx.xrate_month
GROUP BY
	i.client_name
ORDER BY
	usd_amount DESC;
CREATE VIEW most_invoiced_provinces AS
SELECT
	client_province,
	ROUND(SUM(i.invoice_ars_amount / mx.mon_avg_sell_rate_official_then_blue), 2) AS usd_amount
FROM
	invoices i
JOIN
	monthly_average_xrates mx
ON
	i.invoice_year = mx.xrate_year AND 
	i.invoice_month = mx.xrate_month
GROUP BY
	i.client_province
ORDER BY
	usd_amount DESC;
CREATE VIEW invoiced_in_current_fiscal_period AS
SELECT 
	sum(ars_amount) AS 'invoiced_in_current_fiscal_period'
FROM
	invoice_amounts_in_ars_and_usd
WHERE
	CASE
	-- if today is *before* 1 july of this year,
	-- then current fiscal period is second half of previous year and first half of this year
	WHEN 
		date('now') < date('now','start of year','+6 months')
	THEN
		(invoice_year = (SELECT strftime('%Y', date('now', '-1 year'))) AND invoice_month > '06') OR
		(invoice_year = (SELECT strftime('%Y', date('now'))) AND invoice_month < '06')
	-- if today is *after* 1 july of this year,
	-- then current fiscal period is this year
	ELSE
		invoice_year = (SELECT strftime('%Y', date('now')))
	END;
CREATE VIEW average_invoiced_per_month AS
SELECT
	invoice_month,
	ROUND(AVG(total_per_month_in_usd),2) AS avg_in_usd
FROM
	total_invoiced_per_month_and_year
GROUP BY
	invoice_month;
CREATE VIEW invoice_amounts_in_ars_and_usd AS
SELECT
	invoice_number,
	invoice_year,
	invoice_month,
	invoice_day,
	invoice_ars_amount AS ars_amount,
	ROUND((invoice_ars_amount / mx.mon_avg_sell_rate_official_then_blue),2) AS usd_amount
FROM
	invoices i
JOIN
	monthly_average_xrates mx
ON
	i.invoice_year = mx.xrate_year AND 
	i.invoice_month = mx.xrate_month
ORDER BY 
	invoice_number;
CREATE VIEW invoices_per_year AS 
SELECT
	count(invoice_number) AS invoices_per_year, 
	invoice_year
FROM 
	invoices
GROUP BY
	invoice_year
ORDER BY
	invoice_year DESC;
CREATE VIEW total_invoiced_per_month_and_year AS
SELECT
	invoice_year,
	invoice_month,
	SUM(usd_amount) AS total_per_month_in_usd
FROM
	invoice_amounts_in_ars_and_usd
GROUP BY
	invoice_year, invoice_month;
CREATE VIEW total_invoiced_per_year AS
SELECT 
	invoice_year, 
	SUM(usd_amount) AS total_per_year_in_usd
FROM 
	invoice_amounts_in_ars_and_usd
GROUP BY 
	invoice_year
ORDER BY
	invoice_year;
CREATE VIEW monthly_average_xrates AS
SELECT 
	xrate_month,
	xrate_year,
	ROUND(AVG(official_sell_rate), 2) AS mon_avg_sell_rate_official_only,
	CASE
		WHEN blue_in_effect = 'false' THEN ROUND(AVG(official_sell_rate), 2)
		ELSE ROUND(AVG(blue_sell_rate), 2)
	END AS mon_avg_sell_rate_official_then_blue
FROM
	usd_ars_xrate x
GROUP BY
	xrate_month, xrate_year
ORDER BY
	xrate_year, xrate_month;
COMMIT;
