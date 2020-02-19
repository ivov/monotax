const path = require("path");
import betterSqlite3 = require("better-sqlite3"); // `import` to enable intellisense

/**
 * Available views:
 * - most_invoiced_clients
 * - invoice_amount_per_year
 */
export default class DatabaseService {
  static dbpath = path.join(process.cwd(), "data", "invoices.db");
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
      INSERT INTO
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
          invoice_amount
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

    const year = invoiceDate.getFullYear().toString();
    const month = invoiceDate.getDay().toString();
    const day = invoiceDate.getMonth().toString();

    insertionStatement.run(
      invoiceNumber,
      year,
      month,
      day,
      clientName,
      street === "" ? null : street,
      province === "" ? null : street,
      idType,
      idNumber,
      clientVatStatus,
      invoiceAmount
    );
  }
}
