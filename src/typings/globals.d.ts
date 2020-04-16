type PdfContents = {
	numpages: number;
	numrender: number;
	info: {
		PDFFormatVersion: string;
		IsAcroFormPresent: boolean;
		IsXFAPresent: boolean;
		Author: string;
		Creator: string;
		Producer: string;
		CreationDate: string;
		ModDate: string;
	};
	metadata: null;
	text: string;
	version: string;
};

type InvoiceData = {
	id: number;
	date: Date;
	clientName: string;
	clientAddress: { street: string; province: string };
	clientId: { idType: string; idNumber: string };
	clientVatStatus: string;
	arsAmount: number;
};

type ValuesForYear = { total: number; month: string; year: string }[];

type OverviewData = {
	[key: string]: { quarter: string; total: number }[];
	earnings: { quarter: string; total: number }[];
	expenses: { quarter: string; total: number }[];
	invoiced: { quarter: string; total: number }[];
	savings: { quarter: string; total: number }[];
};

type YearData = {
	[key: string]: { year: string; month: number; total: number }[];
	earnings: { year: string; month: number; total: number }[];
	expenses: { year: string; month: number; total: number }[];
	invoiced: { year: string; month: number; total: number }[];
	savings: { year: string; month: number; total: number }[];
};

type TotalsForYear = {
	[key: string]: number;
	earnings: number;
	expenses: number;
	savings: number;
	invoiced: number;
};
