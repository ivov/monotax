export const padWithZeros = (number: string) => {
  const pad = "0000";
  return pad.substring(0, pad.length - number.length) + number;
};

export const extractYearMonthAndDay = (invoiceDate: Date) => {
  const rawMonth = (invoiceDate.getMonth() + 1).toString();
  const rawDay = invoiceDate.getDate().toString();

  const year = invoiceDate.getFullYear().toString();
  const month = rawMonth.length < 2 ? "0" + rawMonth : rawMonth;
  const day = rawDay.length < 2 ? "0" + rawDay : rawDay;

  return { year, month, day };
};
