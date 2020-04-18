BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "usd_ars_xrate" (
	"day"	TEXT,
	"month"	TEXT,
	"year"	TEXT,
	"official_buy_rate"	REAL,
	"official_sell_rate"	REAL,
	"blue_in_effect"	TEXT,
	"blue_buy_rate"	REAL,
	"blue_sell_rate"	REAL
);
CREATE TABLE IF NOT EXISTS "invoices" (
	"id"	INTEGER,
	"year"	TEXT,
	"month"	TEXT,
	"day"	TEXT,
	"client_name"	TEXT,
	"client_street"	TEXT,
	"client_province"	TEXT,
	"client_id_type"	TEXT,
	"client_id_number"	TEXT,
	"client_vat_status"	TEXT,
	"ars_amount"	REAL
);
CREATE TABLE IF NOT EXISTS "expenses" (
	"id"	INTEGER,
	"year"	INTEGER,
	"month"	INTEGER,
	"ars_amount"	REAL
);
CREATE TABLE IF NOT EXISTS "earnings" (
	"id"	INTEGER,
	"year"	INTEGER,
	"month"	INTEGER,
	"day"	INTEGER,
	"client_name"	TEXT,
	"ars_amount"	REAL,
	"person_or_company"	TEXT
);
CREATE VIEW invoiced_with_tax_id AS
SELECT *, (client_id_type || " " || client_id_number) AS tax_id FROM invoices;
CREATE VIEW savings_monthly_average_per_year AS
SELECT year, ROUND(AVG(total), 2) AS average
FROM savings_per_month_and_year
GROUP BY year;
CREATE VIEW invoiced_monthly_average_per_year AS
SELECT 
	year, 
	ROUND(AVG(total), 2) AS average
FROM 
	invoiced_per_month_and_year
GROUP BY
	year;
CREATE VIEW savings_per_year AS
SELECT 
	year, 
	SUM(total) AS total
FROM 
	savings_per_month_and_year
GROUP BY 
	year
ORDER BY
	year;
CREATE VIEW expenses_per_year AS
SELECT 
	year, 
	SUM(usd_amount) AS total
FROM 
	expenses_in_ars_and_usd
GROUP BY 
	year
ORDER BY
	year;
CREATE VIEW invoiced_per_quarter_and_year AS
WITH invoiced_per_month_and_year_with_record AS (
	SELECT *,
	CASE
		WHEN LENGTH(year || month) = 5
		THEN year || 0 || month
		ELSE year || month
	END AS record -- record enables sorting
	FROM invoiced_per_month_and_year
	WHERE (month > 6 AND year = 2016) OR (year != 2016)
	-- WHERE ignores 2016 Q1 and Q2 to match data available in other tables
)

SELECT
	SUBSTR(year, 3, 2) || '-Q' || quarter as quarter, sum(round(total, 2)) AS total
FROM (
		SELECT 
			year,
			month,
			CASE 
				WHEN cast(month as integer) BETWEEN 1 AND 3 THEN 1
				WHEN cast(month as integer) BETWEEN 4 and 6 THEN 2
				WHEN cast(month as integer) BETWEEN 7 and 9 THEN 3
				ELSE 4
			END as quarter,
			total
		FROM invoiced_per_month_and_year_with_record
		ORDER BY record DESC) t
GROUP BY year, quarter;
CREATE VIEW invoiced_total_all_time AS
SELECT SUM(usd_amount) as total FROM invoiced_in_ars_and_usd;
CREATE VIEW expenses_total_all_time AS
SELECT SUM(usd_amount) as total FROM expenses_in_ars_and_usd;
CREATE VIEW earnings_total_all_time AS
SELECT SUM(usd_amount) as total FROM earnings_in_ars_and_usd;
CREATE VIEW savings_total_all_time AS
SELECT SUM(total) AS total FROM savings_per_month_and_year;
CREATE VIEW savings_per_quarter_and_year AS
WITH savings_per_month_and_year_with_record AS (
	SELECT *,
	CASE
		WHEN LENGTH(year || month) = 5
		THEN year || 0 || month
		ELSE year || month
	END AS record -- record enables sorting
	FROM savings_per_month_and_year
)

SELECT
	SUBSTR(year, 3, 2) || '-Q' || quarter as quarter, sum(round(total, 2)) AS total
FROM (
		SELECT 
			year,
			month,
			CASE 
				WHEN cast(month as integer) BETWEEN 1 AND 3 THEN 1
				WHEN cast(month as integer) BETWEEN 4 and 6 THEN 2
				WHEN cast(month as integer) BETWEEN 7 and 9 THEN 3
				ELSE 4
			END as quarter,
			total
		FROM savings_per_month_and_year_with_record
		ORDER BY record DESC) t
GROUP BY year, quarter;
CREATE VIEW expenses_per_quarter_and_year AS
WITH expenses_per_month_and_year_with_record AS (
	SELECT *,
	CASE
		WHEN LENGTH(year || month) = 5
		THEN year || 0 || month
		ELSE year || month
	END AS record -- record enables sorting
	FROM expenses_per_month_and_year
)

SELECT
	SUBSTR(year, 3, 2) || '-Q' || quarter as quarter, sum(round(total, 2)) AS total
FROM (
		SELECT 
			year,
			month,
			CASE 
				WHEN cast(month as integer) BETWEEN 1 AND 3 THEN 1
				WHEN cast(month as integer) BETWEEN 4 and 6 THEN 2
				WHEN cast(month as integer) BETWEEN 7 and 9 THEN 3
				ELSE 4
			END as quarter,
			total
		FROM expenses_per_month_and_year_with_record
		ORDER BY record DESC) t
GROUP BY year, quarter;
CREATE VIEW earnings_per_quarter_and_year AS
WITH earnings_per_month_and_year_with_record AS (
	SELECT *,
	CASE
		WHEN LENGTH(year || month) = 5
		THEN year || 0 || month
		ELSE year || month
	END AS record -- record enables sorting
	FROM earnings_per_month_and_year
)

SELECT
	SUBSTR(year, 3, 2) || '-Q' || quarter as quarter, sum(round(total, 2)) AS total
FROM (
		SELECT 
			year,
			month,
			CASE 
				WHEN cast(month as integer) BETWEEN 1 AND 3 THEN 1
				WHEN cast(month as integer) BETWEEN 4 and 6 THEN 2
				WHEN cast(month as integer) BETWEEN 7 and 9 THEN 3
				ELSE 4
			END as quarter,
			total
		FROM earnings_per_month_and_year_with_record
		ORDER BY record DESC) t
GROUP BY year, quarter;
CREATE VIEW invoices_quantity_per_year AS 
SELECT
	count(id) AS invoices, 
	year
FROM 
	invoices
GROUP BY
	year
ORDER BY
	year DESC;
CREATE VIEW savings_last_six_months AS 

WITH savings_per_month_and_year_total_with_record AS (
	SELECT *,
	CASE 
		WHEN LENGTH(year || month) = 5
		THEN year || 0 || month
		ELSE year || month
	END AS record
	-- record is added to allow ordering
	FROM savings_per_month_and_year
)

SELECT 
	year, month, ROUND(total, 2) as total
FROM (
	SELECT *
	FROM savings_per_month_and_year_total_with_record
	ORDER BY record DESC
	LIMIT 6) t
ORDER BY t.record ASC;
CREATE VIEW savings_per_month_and_year AS
SELECT 
	ex.id,
	ea.year AS year,
	ea.month AS month,
	ea.total AS earnings_in_usd,
	ex.usd_amount AS expenses_in_usd,
	ROUND(ea.total - ex.usd_amount, 2) AS total
FROM earnings_per_month_and_year ea
JOIN expenses_in_ars_and_usd ex
ON ea.year = ex.year AND ea.month = ex.month;
CREATE VIEW invoiced_last_six_months AS 
WITH invoiced_per_month_and_year_with_record AS (
	SELECT *,
	CASE 
		WHEN LENGTH(year || month) = 5
		THEN year || 0 || month
		ELSE year || month
	END AS record
	-- record is added to allow ordering
	FROM invoiced_per_month_and_year
)

SELECT 
	year, month, ROUND(total, 2) as total
FROM (
	SELECT *
	FROM invoiced_per_month_and_year_with_record 
	ORDER BY record DESC
	LIMIT 6) t
ORDER BY t.record ASC;
CREATE VIEW expenses_last_six_months AS

WITH expenses_per_month_and_year_with_record AS (
	SELECT *,
	CASE 
		WHEN LENGTH(year || month) = 5
		THEN year || 0 || month
		ELSE year || month
	END AS record
	-- record is added to allow ordering
	FROM expenses_per_month_and_year
)

SELECT 
	year, month, round(total, 2) AS total
FROM (
		SELECT * 
		FROM expenses_per_month_and_year_with_record
		ORDER BY record DESC
		LIMIT 6 ) t
ORDER BY t.record ASC;
CREATE VIEW earnings_last_six_months AS

WITH earnings_per_month_and_year_with_record AS (
	SELECT *,
	CASE 
		WHEN LENGTH(year || month) = 5
		THEN year || 0 || month
		ELSE year || month
	END AS record
	-- record is added to allow ordering
	FROM earnings_per_month_and_year
)

SELECT 
	year, month, round(total, 2) AS total
FROM (
		SELECT * 
		FROM earnings_per_month_and_year_with_record
		ORDER BY record DESC
		LIMIT 6 ) t
ORDER BY t.record ASC;
CREATE VIEW invoiced_per_year AS
SELECT 
	year, 
	SUM(usd_amount) AS total
FROM 
	invoiced_in_ars_and_usd
GROUP BY 
	year
ORDER BY
	year;
CREATE VIEW invoiced_in_current_fiscal_period AS
SELECT 
	sum(ars_amount) AS 'invoices_amounts_in_current_fiscal_period'
FROM
	invoiced_in_ars_and_usd
WHERE
	CASE
	-- if today is *before* 1 july of this year,
	-- then current fiscal period is second half of previous year and first half of this year
	WHEN 
		date('now') < date('now','start of year','+6 months')
	THEN
		(year = (SELECT strftime('%Y', date('now', '-1 year'))) AND month > '06') OR
		(year = (SELECT strftime('%Y', date('now'))) AND month < '06')
	-- if today is *after* 1 july of this year,
	-- then current fiscal period is this year
	ELSE
		year = (SELECT strftime('%Y', date('now')))
	END;
CREATE VIEW invoiced_per_month_and_year AS
SELECT
	year AS year,
	month AS month,
	SUM(usd_amount) AS total
FROM
	invoiced_in_ars_and_usd
GROUP BY
	year, month;
CREATE VIEW invoiced_in_ars_and_usd AS
SELECT
	id,
	i.year,
	i.month,
	day,
	ars_amount AS ars_amount,
	ROUND((ars_amount / x.mon_avg_sell_rate_official_then_blue),2) AS usd_amount
FROM
	invoices i
JOIN
	xrates_monthly_averages x
ON
	i.year = x.year AND 
	i.month = x.month
ORDER BY 
	id;
CREATE VIEW invoiced_per_province AS
WITH total AS 
(SELECT
	client_province,
	ROUND(SUM(i.ars_amount / x.mon_avg_sell_rate_official_then_blue), 2) AS usd_amount
FROM
	invoices i
JOIN
	xrates_monthly_averages x
ON
	i.year = x.year AND 
	i.month = x.month
)
SELECT
	i.client_province AS province,
	ROUND(SUM(i.ars_amount / x.mon_avg_sell_rate_official_then_blue), 2) AS usd_amount,
	ROUND(SUM(i.ars_amount / x.mon_avg_sell_rate_official_then_blue) / t.usd_amount, 4) * 100 AS share
FROM
	total t,
	invoices i
JOIN
	xrates_monthly_averages x
ON
	i.year = x.year AND 
	i.month = x.month
GROUP BY
	i.client_province
ORDER BY
	usd_amount DESC;
CREATE VIEW invoiced_per_month_average AS
SELECT
	month,
	ROUND(AVG(total),2) AS avg_in_usd
FROM
	invoiced_per_month_and_year
GROUP BY
	month;
CREATE VIEW invoiced_per_client AS
SELECT
	client_name,
	ROUND(SUM(i.ars_amount / x.mon_avg_sell_rate_official_then_blue), 2) AS usd_amount
FROM
	invoices i
JOIN
	xrates_monthly_averages x
ON
	i.year = x.year AND 
	i.month = x.month
GROUP BY
	i.client_name
ORDER BY
	usd_amount DESC;
CREATE VIEW expenses_monthly_average_per_year AS
SELECT 
	year, 
	ROUND(AVG(usd_amount), 2) AS average
FROM 
	expenses_in_ars_and_usd
GROUP BY
	year;
CREATE VIEW expenses_per_month_and_year AS
SELECT
	year,
	month,
	SUM(usd_amount) AS total
FROM
	expenses_in_ars_and_usd
GROUP BY
	year, month;
CREATE VIEW expenses_in_ars_and_usd AS
SELECT
	id,
	e.year,
	e.month,
	ars_amount,
	ROUND((ars_amount / x.mon_avg_sell_rate_official_then_blue),2) AS usd_amount
FROM
	expenses e
JOIN
	xrates_monthly_averages x
ON
	e.year = x.year AND 
	e.month = x.month;
CREATE VIEW earnings_per_client_type AS
WITH total AS 
(SELECT
	person_or_company,
	ROUND(SUM(e.ars_amount / x.mon_avg_sell_rate_official_then_blue), 2) AS total_usd_amount
FROM
	earnings e
JOIN
	xrates_monthly_averages x
ON
	e.year = x.year AND 
	e.month = x.month
)
SELECT
	CASE 
		WHEN e.person_or_company = 'C' THEN 'Company'
		ELSE 'Person'
	END AS client_type,
	ROUND(SUM(e.ars_amount / x.mon_avg_sell_rate_official_then_blue), 2) AS usd_amount,
	ROUND(SUM(e.ars_amount / x.mon_avg_sell_rate_official_then_blue) / t.total_usd_amount, 4) * 100 AS share
FROM
	total t,
	earnings e
JOIN
	xrates_monthly_averages x
ON
	e.year = x.year AND 
	e.month = x.month
GROUP BY
	e.person_or_company;
CREATE VIEW earnings_monthly_average_per_year AS
SELECT
	year,
	ROUND(AVG(total),2) AS average
FROM
	earnings_per_month_and_year
GROUP BY
	year;
CREATE VIEW earnings_per_month_average AS
SELECT
	month,
	ROUND(AVG(total),2) AS average
FROM
	earnings_per_month_and_year
GROUP BY
	month;
CREATE VIEW earnings_per_year AS
SELECT 
	year, 
	SUM(usd_amount) AS total
FROM 
	earnings_in_ars_and_usd
GROUP BY 
	year
ORDER BY
	year;
CREATE VIEW earnings_per_month_and_year AS
SELECT
	year,
	month,
	SUM(usd_amount) AS total
FROM
	earnings_in_ars_and_usd
GROUP BY
	year, month;
CREATE VIEW earnings_in_ars_and_usd AS
SELECT
	id,
	e.year,
	e.month,
	e.day,
	client_name,
	CASE 
		WHEN e.person_or_company = 'C' THEN 'Company' 
		ELSE 'Person'
	END AS client_type,
	ars_amount,
	ROUND((ars_amount / x.mon_avg_sell_rate_official_then_blue),2) AS usd_amount
FROM
	earnings e
JOIN
	xrates_monthly_averages x
ON
	e.year = x.year AND 
	e.month = x.month
ORDER BY 
	id;
CREATE VIEW earnings_per_client AS
SELECT
	client_name,
	ROUND(SUM(e.ars_amount / x.mon_avg_sell_rate_official_then_blue), 2) AS usd_amount
FROM
	earnings e
JOIN
	xrates_monthly_averages x
ON
	e.year = x.year AND 
	e.month = x.month
GROUP BY
	client_name
ORDER BY
	usd_amount DESC;
CREATE VIEW xrates_monthly_averages AS
SELECT 
	month,
	year,
	ROUND(AVG(official_sell_rate), 2) AS mon_avg_sell_rate_official_only,
	CASE
		WHEN blue_in_effect = 'false' THEN ROUND(AVG(official_sell_rate), 2)
		ELSE ROUND(AVG(blue_sell_rate), 2)
	END AS mon_avg_sell_rate_official_then_blue
FROM
	usd_ars_xrate x
GROUP BY
	month, year
ORDER BY
	year, month;
COMMIT;
