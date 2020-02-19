const fs = require("fs");
const path = require("path");
const pdfParse = require("pdf-parse");

class Parser {
  static async readInvoices() {
    const filenames = await this.getFilenames();

    filenames.forEach(filename => this.parseIntoInvoice(filename));
  }

  static getFilenames(): Promise<string[]> {
    const dirpath = process.cwd() + "/invoices";
    return new Promise((resolve, reject) => {
      fs.readdir(dirpath, (error: Error, filenames: string[]) =>
        resolve(filenames)
      );
    });
  }

  static async parseIntoInvoice(filename: string) {
    const filepath = path.join(process.cwd(), "invoices", filename);
    const pdfText = await this.readFile(filepath);
    let raw;
    try {
      raw = this.extractRaw(pdfText);
    } catch (e) {
      throw Error(`\n\nPARSING FAILED AT ${filename}\n\n`);
    }

    let invoiceData: invoiceData = {
      invoiceNumber: this.parseInvoiceNumber(filename),
      invoiceDate: this.parseInvoiceDate(raw.invoiceDate),
      clientName: this.parseClientName(raw.clientName),
      clientAddress: this.parseClientAddress(raw.clientAddress),
      clientID: this.parseClientID(raw.clientID),
      clientVatStatus: raw.clientVatStatus,
      invoiceAmount: this.parseAmount(raw.invoiceAmount)
    };

    console.log(invoiceData);
  }

  static extractRaw(pdfText: string): { [key: string]: string } {
    const regexes = {
      invoiceDate: /Domicilio:\n(.{10})/,
      clientNameAndAddress: /\d{11}\n([\w\sñÑ.,()É-]*)\n([\w\s'ñÑ°áéíóúª:.,-/()ã+]*?)(Código|Contado)/,
      clientID: /(\w*: \d*)\n(Código|Precio Unit\.)/,
      clientVatStatus: /Monotributo\n([\w\s]*)\nExento/,
      invoiceAmount: /([\d,]*)\nSubtotal/
    };

    const rawClientNameAndAddress = pdfText.match(
      regexes["clientNameAndAddress"]
    );

    return {
      invoiceDate: pdfText.match(regexes["invoiceDate"])![1],
      clientName: rawClientNameAndAddress![1],
      clientAddress: rawClientNameAndAddress![2].replace("\n", " ") || "",
      clientID: pdfText.match(regexes["clientID"])![1],
      clientVatStatus: pdfText.match(regexes["clientVatStatus"])![1],
      invoiceAmount: pdfText.match(regexes["invoiceAmount"])![1]
    };
  }

  static parseInvoiceNumber(filename: string): string {
    const regexForInvoiceNumber = /_0+(\d*).pdf/;
    return filename.match(regexForInvoiceNumber)![1];
  }

  static async readFile(filepath: string): Promise<string> {
    let buffer = fs.readFileSync(filepath);
    let pdfContents: pdfContents = await pdfParse(buffer, { max: 1 }); // parse first page only
    // console.log(pdfContents.text);
    return pdfContents.text;
  }

  static parseInvoiceDate(date: string): Date {
    const parts = date.split("/").map(part => parseInt(part));
    return new Date(parts[2], parts[1] - 1, parts[0]);
  }

  static parseClientName(name: string): string {
    // correct company name
    if (name.includes("S.R.L.") || name.includes("S.A.")) return name;

    // mistake in company name
    const wrongAbbreviations: { [key: string]: string } = {
      "S A": "S.A.",
      "S.A": "S.A.",
      "S R L": "S.R.L.",
      "S.R.L": "S.R.L."
    };

    for (let mistake in wrongAbbreviations) {
      if (name.includes(mistake))
        return name.replace(mistake, wrongAbbreviations[mistake]);
    }

    // not a company name
    return name;
  }

  static parseClientAddress(address: string) {
    // if no address
    if (address === "")
      return {
        street: "",
        province: ""
      };

    // if no province section
    if (!address.includes(","))
      return {
        street: address,
        province: ""
      };

    // if not in Argentina
    if (address.includes("Uruguay")) {
      const regexForUruguay = /-(?!.*-)[\s\n]*(\w*)/;
      const countrySection = address.match(regexForUruguay)![1];
      return {
        street: address.replace("- " + countrySection, "").trim(),
        province: countrySection.trim()
      };
    }

    // if province name is to be corrected
    const cleanPlacenames: { [key: string]: string } = {
      "Ciudad de Buenos Aires": "Ciudad Autónoma de Buenos Aires",
      "Buenos Aires": "Provincia de Buenos Aires"
    };

    for (let name in cleanPlacenames) {
      if (address.includes(name)) {
        return {
          street: address.replace(", " + name, "").trim(),
          province: cleanPlacenames[name]
        };
      }
    }

    // if province name is to stand as is
    const provinceSection = address.match(/, (.*)$/)![1];
    return {
      street: address.replace(", " + provinceSection, "").trim(),
      province: provinceSection.trim()
    };
  }

  static parseClientID(ID: string) {
    const [type, number] = ID.split(": ");
    return {
      type,
      number
    };
  }

  static parseAmount(amount: string): number {
    return parseFloat(amount.replace(",", "."));
  }
}

Parser.readInvoices();
