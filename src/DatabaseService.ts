import path from "path";
import betterSqlite3 = require("better-sqlite3"); // `import X = require(X)` to enable Intellisense
import { extractYearMonthAndDay } from "./utils";

export default class DatabaseService {
	static dbpath = path.join(process.cwd(), "data", "sql", "monotax.db");
	static db = new betterSqlite3(DatabaseService.dbpath, {
		// verbose: console.log
	});

	static getAllRecords(
		table: string,
		offset: string,
		limit: string,
		field: string,
		order: string
	) {
		const getAllStatement = DatabaseService.db.prepare(
			`SELECT * FROM ${table}
      ORDER BY ${field} ${order} LIMIT ${limit} OFFSET ${offset}`
		);
		return getAllStatement.all();
	}

	static getCount(table: string) {
		const countStatement = DatabaseService.db.prepare(
			`SELECT COUNT(*) AS count FROM ${table}`
		);
		return countStatement.get().count;
	}

	static insert(invoice: InvoiceData): void {
		const insertionStatement = DatabaseService.db.prepare(`
      INSERT OR IGNORE INTO
        invoices (
          id,
          invoice_year,
          invoice_month,
          invoice_day,
          client_name,
          client_street,
          client_province,
          client_id_type,
          client_id_number,
          client_vat_status,
          invoice_ars_amount
        )
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
    `);

		const {
			id,
			invoiceDate,
			clientName,
			clientAddress: { street, province },
			clientId: { idType, idNumber },
			clientVatStatus,
			invoiceAmount
		} = invoice;

		const { year, month, day } = extractYearMonthAndDay(invoiceDate);

		insertionStatement.run(
			id,
			year,
			month,
			day,
			clientName,
			street === "" ? null : street,
			province === "" ? null : province,
			idType,
			idNumber,
			clientVatStatus,
			invoiceAmount
		);
	}

	static getDataForYear(
		table: "earnings" | "expenses" | "savings" | "invoiced" | "totals"
	) {
		let statement: betterSqlite3.Statement;
		if (table === "totals") {
			statement = DatabaseService.db.prepare(
				`SELECT * FROM historical_totals_2019`
			);
		} else {
			statement = DatabaseService.db.prepare(
				`SELECT * FROM historical_${table}_2019`
			);
		}

		return statement.all();
	}

	static getEarningsForYear(year: string) {
		const statement = DatabaseService.db.prepare(
			`
			WITH earned_per_month_and_year_total_with_record AS (
				SELECT *,
				CASE
					WHEN LENGTH(earnings_year || earnings_month) = 5
					THEN earnings_year || 0 || earnings_month
					ELSE earnings_year || earnings_month
				END AS record
				-- record is added to allow ordering
				FROM earned_per_month_and_year_total
			)

			SELECT
				earnings_year AS year, earnings_month AS month, round(total_per_month_in_usd, 2) AS total
			FROM (
					SELECT *
					FROM earned_per_month_and_year_total_with_record
					WHERE earnings_year = ${year}
					ORDER BY record DESC) t
			ORDER BY t.record ASC
			`
		);
		return statement.all();
	}

	static getExpensesForYear(year: string) {
		const statement = DatabaseService.db.prepare(
			`
			WITH expenses_per_month_and_year_total_with_record AS (
				SELECT *,
				CASE
					WHEN LENGTH(expense_year || expense_month) = 5
					THEN expense_year || 0 || expense_month
					ELSE expense_year || expense_month
				END AS record
				-- record is added to allow ordering
				FROM expense_amounts_in_ars_and_usd
			)

			SELECT
				expense_year AS year, expense_month AS month, ROUND(usd_amount, 2) AS total
			FROM (
				SELECT *
				FROM expenses_per_month_and_year_total_with_record
				WHERE expense_year = ${year}
				ORDER BY record DESC ) t
			ORDER BY t.record ASC
			`
		);
		return statement.all();
	}

	static getSavingsForYear(year: string) {
		const statement = DatabaseService.db.prepare(
			`
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
				year, month, ROUND(savings_in_usd, 2) as total
			FROM (
				SELECT *
				FROM savings_per_month_and_year_total_with_record
				WHERE year = ${year}
				ORDER BY record DESC) t
			ORDER BY t.record ASC
			`
		);
		return statement.all();
	}

	static getInvoicedForYear(year: string) {
		const statement = DatabaseService.db.prepare(
			`
			WITH invoiced_per_month_and_year_total_with_record AS (
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
				year, month, ROUND(total_per_month_in_usd, 2) as total
			FROM (
				SELECT *
				FROM invoiced_per_month_and_year_total_with_record
				WHERE year = ${year}
				ORDER BY record DESC) t
			ORDER BY t.record ASC
			`
		);
		return statement.all();
	}

	static getTotalsForYear(year: string) {
		const statement = DatabaseService.db.prepare(
			`
			WITH all_totals AS (
				SELECT
					ROUND(SUM(total), 2) as total_earnings,
					"earnings"
				FROM
					historical_earnings_${year}
				UNION
				SELECT
					ROUND(SUM(total), 2) as total_expenses,
					"expenses"
				FROM
					historical_expenses_${year}
				UNION
				SELECT
					ROUND(SUM(total), 2) as total_savings,
					"savings"
				FROM
					historical_savings_${year}
				UNION
				SELECT
					ROUND(SUM(total), 2) as total_invoiced,
					"invoiced"
				FROM
					historical_invoiced_${year}
				)

				SELECT total_earnings AS total, earnings AS category from all_totals
			`
		);
		return statement.all();
	}
}
