export const padWithZeros = (number: string) => {
  const pad = "0000";
  return pad.substring(0, pad.length - number.length) + number;
};

/* Collection of react-admin views and their corresponding views in monotax.db*/
export const VIEWS: { [key: string]: string } = {
  INVOICES: "invoices_with_tax_id",
  EARNINGS: "earned_amounts_in_ars_and_usd",
  SAVINGS: "savings_per_month_and_year",
  EXPENSES: "expense_amounts_in_ars_and_usd",
  ADWORDS: "adwords_amounts_in_ars_and_usd"
};

export const extractYearMonthAndDay = (invoiceDate: Date) => {
  const rawMonth = (invoiceDate.getMonth() + 1).toString();
  const rawDay = invoiceDate.getDate().toString();

  const year = invoiceDate.getFullYear().toString();
  const month = rawMonth.length < 2 ? "0" + rawMonth : rawMonth;
  const day = rawDay.length < 2 ? "0" + rawDay : rawDay;

  return { year, month, day };
};
