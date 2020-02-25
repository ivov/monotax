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
  invoiceDate: Date;
  clientName: string;
  clientAddress: { street: string; province: string };
  clientId: { idType: string; idNumber: string };
  clientVatStatus: string;
  invoiceAmount: number;
};
