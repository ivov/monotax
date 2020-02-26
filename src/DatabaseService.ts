import path from "path";
import betterSqlite3 = require("better-sqlite3"); // `import` to enable intellisense

export default class DatabaseService {
  static dbpath = path.join(process.cwd(), "data", "sql", "monotax.db");
  static db = new betterSqlite3(DatabaseService.dbpath, {
    verbose: console.log
  });

  static getAllInvoices(
    offset: string,
    limit: string,
    field: string,
    order: string
  ) {
    const getAllStatement = DatabaseService.db.prepare(
      `SELECT *, (client_id_type || " " || client_id_number) AS tax_id FROM invoices
      ORDER BY ${field} ${order} LIMIT ${limit} OFFSET ${offset}`
    );
    return getAllStatement.all();
  }

  static getAllEarnings(
    offset: string,
    limit: string,
    field: string,
    order: string
  ) {
    const getAllStatement = DatabaseService.db.prepare(
      `SELECT * FROM earned_amounts_in_ars_and_usd ORDER BY ${field} ${order} LIMIT ${limit} OFFSET ${offset}`
    );
    return getAllStatement.all();
  }

  static getAllSavings(
    offset: string,
    limit: string,
    field: string,
    order: string
  ) {
    const getAllStatement = DatabaseService.db.prepare(
      `SELECT * FROM savings_per_month_and_year ORDER BY ${field} ${order} LIMIT ${limit} OFFSET ${offset}`
    );
    return getAllStatement.all();
  }

  static getAllExpenses(
    offset: string,
    limit: string,
    field: string,
    order: string
  ) {
    const getAllStatement = DatabaseService.db.prepare(
      `SELECT * FROM expense_amounts_in_ars_and_usd ORDER BY ${field} ${order} LIMIT ${limit} OFFSET ${offset}`
    );
    return getAllStatement.all();
  }

  static getCount(table: string) {
    const countStatement = DatabaseService.db.prepare(
      `SELECT COUNT(*) AS count FROM ${table}`
    );
    return countStatement.get().count;
  }

  static getInvoice(number: number) {
    return DatabaseService.db
      .prepare("SELECT * FROM invoices WHERE id = ?")
      .get(number.toString());
  }

  static insert(invoice: InvoiceData): void {
    const insertionStatement = DatabaseService.db.prepare(`
      INSERT OR IGNORE INTO
        invoices2 (
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

    const { year, month, day } = DatabaseService.getYearMonthAndDay(
      invoiceDate
    );

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

  static getYearMonthAndDay(invoiceDate: Date) {
    const rawMonth = (invoiceDate.getMonth() + 1).toString();
    const rawDay = invoiceDate.getDate().toString();

    const year = invoiceDate.getFullYear().toString();
    const month = rawMonth.length < 2 ? "0" + rawMonth : rawMonth;
    const day = rawDay.length < 2 ? "0" + rawDay : rawDay;

    return { year, month, day };
  }
}
