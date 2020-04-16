export const padWithZeros = (number: string) => {
	const pad = "0000";
	return pad.substring(0, pad.length - number.length) + number;
};

export const extractYearMonthAndDay = (invoiceDate: Date) => {
	return {
		year: invoiceDate.getFullYear().toString(),
		month: (invoiceDate.getMonth() + 1).toString(),
		day: invoiceDate.getDate().toString()
	};
};
