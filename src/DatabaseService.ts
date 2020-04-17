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
      ORDER BY ${field} ${order} LIMIT ${limit} OFFSET ${offset};`
		);
		return getAllStatement.all();
	}

	static getCount(table: string) {
		const countStatement = DatabaseService.db.prepare(
			`SELECT COUNT(*) AS count FROM ${table};`
		);
		return countStatement.get().count;
	}

	static insert(invoice: InvoiceData): void {
		const insertionStatement = DatabaseService.db.prepare(`
      INSERT INTO
        invoices (
          id,
          year,
          month,
          day,
          client_name,
          client_street,
          client_province,
          client_id_type,
          client_id_number,
          client_vat_status,
          ars_amount
        )
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);
    `);

		const {
			id,
			date,
			clientName,
			clientAddress: { street, province },
			clientId: { idType, idNumber },
			clientVatStatus,
			arsAmount
		} = invoice;

		const { year, month, day } = extractYearMonthAndDay(date);

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
			arsAmount
		);
	}

	static getQuarterlyData(): QuarterlyData {
		const categories = ["earnings", "expenses", "invoiced", "savings"];

		// @ts-ignore: empty initialization
		let overviewData: QuarterlyData = {};

		categories.forEach(category => {
			const statement = DatabaseService.db.prepare(
				`SELECT * FROM ${category}_per_quarter_and_year;`
			);
			overviewData[category] = statement.all();
		});

		return overviewData;
	}

	static getAllTimeTotals(): AllTimeTotals {
		const categories = ["earnings", "expenses", "invoiced", "savings"];

		// @ts-ignore: empty initialization
		let allTimeTotals: AllTimeTotals = {};

		categories.forEach(category => {
			const statement = DatabaseService.db.prepare(
				`SELECT * FROM ${category}_total_all_time;`
			);
			allTimeTotals[category] = statement.get()["total"];
		});

		return allTimeTotals;
	}

	static getYearlyTotals(): YearlyTotals {
		const categories = ["earnings", "expenses", "invoiced", "savings"];

		// @ts-ignore: empty initialization
		let yearlyTotals: YearlyTotals = {};

		categories.forEach(category => {
			const statement = DatabaseService.db.prepare(
				`SELECT * FROM ${category}_per_year;`
			);
			yearlyTotals[category] = statement.all();
		});

		return yearlyTotals;
	}

	static getMonthlyAveragesPerYear(): MonthlyAverages {
		const categories = ["earnings", "expenses", "invoiced", "savings"];

		// @ts-ignore: empty initialization
		let monthlyAveragesPerYear: MonthlyAverages = {};

		categories.forEach(category => {
			const statement = DatabaseService.db.prepare(
				`SELECT year, average AS total FROM ${category}_monthly_average_per_year;`
			);
			monthlyAveragesPerYear[category] = statement.all();
		});
		// `average` renamed as `total` for `convertToGraphData`
		return monthlyAveragesPerYear;
	}

	static getLastSixMonthsValues(): YearData {
		const categories = ["earnings", "expenses", "invoiced", "savings"];

		// @ts-ignore: empty initialization
		let lastSixMonthsValues: YearData = {};

		categories.forEach(category => {
			const statement = DatabaseService.db.prepare(
				`SELECT month, total FROM ${category}_last_six_months;`
			);
			lastSixMonthsValues[category] = statement.all();
		});

		return lastSixMonthsValues;
	}

	static getYearData(year: string): YearData {
		const categories = ["earnings", "expenses", "invoiced", "savings"];

		// @ts-ignore: empty initialization
		let yearviewData: YearData = {};

		categories.forEach(category => {
			const statement = DatabaseService.db.prepare(
				`
				WITH ${category}_per_month_and_year_with_record AS (
					SELECT *,
					CASE
						WHEN LENGTH(year || month) = 5
						THEN year || 0 || month
						ELSE year || month
					END AS record
					FROM ${category}_per_month_and_year
				)

				SELECT
					year, month, round(total, 2) AS total
				FROM (
						SELECT *
						FROM ${category}_per_month_and_year_with_record
						WHERE year = ${year}
						ORDER BY record DESC) t
				ORDER BY t.record ASC;
				`
			);
			yearviewData[category] = statement.all();
		});

		return yearviewData;
	}
}
