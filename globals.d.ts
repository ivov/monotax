type pdfContents = {
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

type invoiceData = {
  date: Date;
  number: string;
  name: string;
  address: clientAddress;
  ID: { type: string; number: string };
  vatStatus: string;
  amount: number;
};

type clientAddress = {
  street: string;
  province: string;
};
