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
  date: Date;
  number: string;
  name: string;
  address: { street: string; province: string };
  ID: { type: string; number: string };
  vatStatus: string;
  amount: number;
};
