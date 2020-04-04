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

	static getMostRecent(table: "earnings" | "expenses" | "savings") {
		const mostRecentStatement = DatabaseService.db.prepare(
			`SELECT * FROM most_recent_months_${table}`
		);
		return mostRecentStatement.all();
	}
}
