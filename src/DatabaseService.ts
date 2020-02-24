const path = require("path");
import betterSqlite3 = require("better-sqlite3"); // `import` to enable intellisense

export default class DatabaseService {
  static dbpath = path.join(process.cwd(), "data", "sql", "monotax.db");
  static db = new betterSqlite3(DatabaseService.dbpath);

  static readAllInvoices() {
    return DatabaseService.db.prepare("SELECT * FROM invoices").all();
  }

  static getInvoice(number: number) {
    return DatabaseService.db
      .prepare("SELECT * FROM invoices WHERE invoice_number = ?")
      .get(number.toString());
  }

  static insert(invoice: InvoiceData): void {
    const insertionStatement = DatabaseService.db.prepare(`
      INSERT OR IGNORE INTO
        invoices (
          invoice_number,
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
      invoiceNumber,
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
      invoiceNumber,
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
