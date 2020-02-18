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
  invoiceNumber: string;
  invoiceDate: Date;
  clientName: string;
  clientAddress: clientAddress;
  clientID: { type: string; number: string };
  clientVatStatus: string;
  invoiceAmount: number;
};

type clientAddress = {
  street: string;
  province: string;
};
