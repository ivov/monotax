BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "expenses" (
	"expense_year"	TEXT,
	"expense_month"	TEXT,
	"expense_ars_amount"	REAL
);
CREATE TABLE IF NOT EXISTS "earnings" (
	"id"	TEXT,
	"earnings_year"	TEXT,
	"earnings_month"	TEXT,
	"earnings_day"	TEXT,
	"client_name"	TEXT,
	"earnings_ars_amount"	TEXT,
	"person_or_company"	TEXT
);
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
CREATE VIEW expenses_per_year_monthly_average AS
SELECT expense_year, ROUND(AVG(usd_amount), 2) AS monthly_average_in_usd
FROM expense_amounts_in_ars_and_usd
GROUP BY expense_year;
CREATE VIEW savings_per_year_monthly_average  AS
SELECT year, ROUND(AVG(savings_in_usd), 2) AS average_savings_per_year 
FROM savings_per_month_and_year
GROUP BY year;
CREATE VIEW earned_per_year_total AS
SELECT 
	earnings_year, 
	SUM(usd_amount) AS total_per_year_in_usd
FROM 
	earned_amounts_in_ars_and_usd
GROUP BY 
	earnings_year
ORDER BY
	earnings_year;
CREATE VIEW earned_per_month_and_year_total AS
SELECT
	earnings_year,
	earnings_month,
	SUM(usd_amount) AS total_per_month_in_usd
FROM
	earned_amounts_in_ars_and_usd
GROUP BY
	earnings_year, earnings_month;
CREATE VIEW earned_amounts_in_ars_and_usd AS
SELECT
	id,
	earnings_year,
	earnings_month,
	earnings_day,
	earnings_ars_amount AS ars_amount,
	ROUND((earnings_ars_amount / x.mon_avg_sell_rate_official_then_blue),2) AS usd_amount
FROM
	earnings e
JOIN
	xrates_monthly_averages x
ON
	e.earnings_year = x.xrate_year AND 
	e.earnings_month = x.xrate_month
ORDER BY 
	id;
CREATE VIEW savings_per_month_and_year AS
SELECT 
	ea.earnings_year AS year,
	ea.earnings_month AS month,
	ea.total_per_month_in_usd AS earned_in_USD,
	ex.usd_amount AS expenses_in_USD,
	ROUND(ea.total_per_month_in_usd - ex.usd_amount, 2) AS savings_in_usd
FROM earned_per_month_and_year_total ea
JOIN expense_amounts_in_ars_and_usd ex
ON ea.earnings_year = ex.expense_year AND ea.earnings_month = ex.expense_month;
CREATE VIEW expense_amounts_in_ars_and_usd AS
SELECT
	expense_year,
	expense_month,
	expense_ars_amount AS ars_amount,
	ROUND((expense_ars_amount / x.mon_avg_sell_rate_official_then_blue),2) AS usd_amount
FROM
	expenses e
JOIN
	xrates_monthly_averages x
ON
	e.expense_year = x.xrate_year AND 
	e.expense_month = x.xrate_month;
CREATE VIEW earned_per_year_monthly_average AS
SELECT
	earnings_year,
	ROUND(AVG(total_per_month_in_usd),2) AS average_per_month_in_usd
FROM
	earned_per_month_and_year_total
GROUP BY
	earnings_year;
CREATE VIEW earned_per_month_average AS
SELECT
	earnings_month,
	ROUND(AVG(total_per_month_in_usd),2) AS avg_in_usd
FROM
	earned_per_month_and_year_total
GROUP BY
	earnings_month;
CREATE VIEW earned_per_client AS
SELECT
	client_name,
	ROUND(SUM(e.earnings_ars_amount / x.mon_avg_sell_rate_official_then_blue), 2) AS usd_amount
FROM
	earnings e
JOIN
	xrates_monthly_averages x
ON
	e.earnings_year = x.xrate_year AND 
	e.earnings_month = x.xrate_month
GROUP BY
	e.client_name
ORDER BY
	usd_amount DESC;
CREATE VIEW invoiced_per_province AS
WITH total AS 
(SELECT
	client_province,
	ROUND(SUM(i.invoice_ars_amount / x.mon_avg_sell_rate_official_then_blue), 2) AS total_usd_amount
FROM
	invoices i
JOIN
	xrates_monthly_averages x
ON
	i.invoice_year = x.xrate_year AND 
	i.invoice_month = x.xrate_month
)
SELECT
	i.client_province AS province,
	ROUND(SUM(i.invoice_ars_amount / x.mon_avg_sell_rate_official_then_blue), 2) AS usd_amount,
	ROUND(SUM(i.invoice_ars_amount / x.mon_avg_sell_rate_official_then_blue) / t.total_usd_amount, 4) * 100 AS share
FROM
	total t,
	invoices i
JOIN
	xrates_monthly_averages x
ON
	i.invoice_year = x.xrate_year AND 
	i.invoice_month = x.xrate_month
GROUP BY
	i.client_province
ORDER BY
	usd_amount DESC;
CREATE VIEW earned_per_client_type AS
WITH total AS 
(SELECT
	person_or_company,
	ROUND(SUM(e.earnings_ars_amount / x.mon_avg_sell_rate_official_then_blue), 2) AS total_usd_amount
FROM
	earnings e
JOIN
	xrates_monthly_averages x
ON
	e.earnings_year = x.xrate_year AND 
	e.earnings_month = x.xrate_month
)
SELECT
	CASE WHEN e.person_or_company = 'C' THEN 'Company' ELSE 'Person' END AS client_type,
	ROUND(SUM(e.earnings_ars_amount / x.mon_avg_sell_rate_official_then_blue), 2) AS usd_amount,
	ROUND(SUM(e.earnings_ars_amount / x.mon_avg_sell_rate_official_then_blue) / t.total_usd_amount, 4) * 100 AS share
FROM
	total t,
	earnings e
JOIN
	xrates_monthly_averages x
ON
	e.earnings_year = x.xrate_year AND 
	e.earnings_month = x.xrate_month
GROUP BY
	e.person_or_company;
CREATE VIEW invoices_issued_per_year AS 
SELECT
	count(invoice_number) AS invoices_per_year, 
	invoice_year
FROM 
	invoices
GROUP BY
	invoice_year
ORDER BY
	invoice_year DESC;
CREATE VIEW invoiced_per_client AS
SELECT
	client_name,
	ROUND(SUM(i.invoice_ars_amount / x.mon_avg_sell_rate_official_then_blue), 2) AS usd_amount
FROM
	invoices i
JOIN
	xrates_monthly_averages x
ON
	i.invoice_year = x.xrate_year AND 
	i.invoice_month = x.xrate_month
GROUP BY
	i.client_name
ORDER BY
	usd_amount DESC;
CREATE VIEW invoice_amounts_in_ars_and_usd AS
SELECT
	invoice_number,
	invoice_year,
	invoice_month,
	invoice_day,
	invoice_ars_amount AS ars_amount,
	ROUND((invoice_ars_amount / x.mon_avg_sell_rate_official_then_blue),2) AS usd_amount
FROM
	invoices i
JOIN
	xrates_monthly_averages x
ON
	i.invoice_year = x.xrate_year AND 
	i.invoice_month = x.xrate_month
ORDER BY 
	invoice_number;
CREATE VIEW xrates_monthly_averages AS
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
CREATE VIEW invoiced_per_month_average AS
SELECT
	invoice_month,
	ROUND(AVG(total_per_month_in_usd),2) AS avg_in_usd
FROM
	invoiced_per_month_and_year_total
GROUP BY
	invoice_month;
CREATE VIEW invoiced_per_year_total AS
SELECT 
	invoice_year, 
	SUM(usd_amount) AS total_per_year_in_usd
FROM 
	invoice_amounts_in_ars_and_usd
GROUP BY 
	invoice_year
ORDER BY
	invoice_year;
CREATE VIEW invoiced_per_month_and_year_total AS
SELECT
	invoice_year,
	invoice_month,
	SUM(usd_amount) AS total_per_month_in_usd
FROM
	invoice_amounts_in_ars_and_usd
GROUP BY
	invoice_year, invoice_month;
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
COMMIT;
