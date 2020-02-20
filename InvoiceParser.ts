const fs = require("fs");
const path = require("path");
const pdfParse = require("pdf-parse");

export default class InvoiceParser {
  /**Receives a filename, extracts raw strings, parses them and returns an `invoiceData` object:
   *
   *Example:
   * ```
      {
        date: "Mon Jul 17 2017 00:00:00 GMT-0300 (Argentina Standard Time)";
        number: "208";
        name: "JOHN MALKOVICH";
        address: { street: "Av. ABC 123"; province: "Córdoba" };
        ID: { type: "DNI"; number: "14581331" };
        vatStatus: "IVA Responsable Inscripto";
        amount: 123456.78;
      }
   * ```
   */
  static async process(filename: string): Promise<InvoiceData> {
    let invoiceText;
    let raw;

    try {
      invoiceText = await this.getInvoiceText(filename);
    } catch (error) {
      throw Error(`Failed at getting text from invoice ${filename}`);
    }

    try {
      raw = this.extractRawStrings(invoiceText);
    } catch (error) {
      throw Error(`Failed at extracting strings from invoice ${filename}`);
    }

    return {
      invoiceNumber: this.parseNumber(filename),
      invoiceDate: this.parseDate(raw.date),
      clientName: this.parseName(raw.name),
      clientAddress: this.parseAddress(raw.address),
      clientId: this.parseId(raw.id),
      clientVatStatus: raw.vatStatus,
      invoiceAmount: this.parseAmount(raw.amount)
    };
  }

  static async getInvoiceText(filename: string): Promise<string> {
    const filepath = path.join(process.cwd(), "invoices", filename);
    const buffer = fs.readFileSync(filepath);
    let pdfContents: PdfContents = await pdfParse(buffer, { max: 1 }); // `max: 1` for first page only
    return pdfContents.text;
  }

  /** Returns an object containing the raw strings, i.e. the unparsed relevant segments of the invoice.*/
  static extractRawStrings(invoiceText: string): { [key: string]: string } {
    const regexes = {
      date: /Domicilio:\n(.{10})/,
      nameAndAddress: /\d{11}\n([A-Z0-9 ñÑ.,()É\-\n]*)\n([\w\s'ñÑ°áéíóúª:.,\-/()ã+]*?)(Código|Contado)/,
      id: /(\w*: \d*)\n(Código|Precio Unit\.)/,
      vatStatus: /Monotributo\n([\w\s]*)\nExento/,
      amount: /([\d,]*)\nSubtotal/
    };
    let rawNameAndAddress = invoiceText.match(regexes["nameAndAddress"])!;

    // exceptional: if client name is not capitalized
    const name = /(Cassandra Gleeson|ONU Mujeres|Valeriy Shcheglov)\n([\w\s'ñÑ°áéíóúª:.,\-/()ã+]*?)(Código|Contado)/;
    if (name.test(invoiceText)) {
      rawNameAndAddress = invoiceText.match(name)!;
    }

    return {
      date: invoiceText.match(regexes["date"])![1],
      name: rawNameAndAddress![1].replace("\n", " ").replace("  ", " "),
      address: rawNameAndAddress![2].replace("\n", " ").trim() || "",
      id: invoiceText.match(regexes["id"])![1],
      vatStatus: invoiceText.match(regexes["vatStatus"])![1],
      amount: invoiceText.match(regexes["amount"])![1]
    };
  }

  static parseNumber(filename: string): number {
    const regexForNumber = /_0+(\d*).pdf/;
    return parseInt(filename.match(regexForNumber)![1]);
  }

  static parseDate(date: string): Date {
    const parts = date.split("/").map(part => parseInt(part));
    return new Date(parts[2], parts[1] - 1, parts[0]);
  }

  static parseName(name: string): string {
    // correct sloppy company name (specific)
    if (name.includes("S A I C")) return name.replace("S A I C", "SAIC");
    if (name.includes("S A C I")) return name.replace("S A C I", "SACI");

    // correct sloppy company name (generic)
    const wrongAbbreviations: { [key: string]: string } = {
      "S A": "SA",
      "S.A.": "SA",
      "S.A": "SA",
      "SOCIEDAD ANONIMA": "SA",
      "S R L": "SRL",
      "S.R.L": "SRL",
      "SRL.": "SRL", // TODO: db records still show "SRL.
      "SOCIEDAD DE RESPONSABILIDAD LIMITADA": "SRL"
    };
    for (let mistake in wrongAbbreviations) {
      if (name.includes(mistake))
        return name.replace(mistake, wrongAbbreviations[mistake]);
    }

    // not a company name, leave untouched
    return name;
  }

  static parseAddress(address: string) {
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

    // exceptional: if from Panama
    if (address.includes("PANAMA")) {
      const [streetSection, countrySection] = address.split(", ");
      return {
        street: streetSection.trim(),
        province:
          "Exterior - " +
          countrySection.charAt(0).toUpperCase() +
          countrySection.slice(1, 5).toLowerCase() +
          "á"
      };
    }

    // exceptional: if from Uruguay
    if (address.includes("Montevideo - Uruguay")) {
      const regexForUruguay = /-(?!.*-)[\s\n]*(\w*)/;
      const countrySection = address.match(regexForUruguay)![1];
      return {
        street: address.replace("- " + countrySection, "").trim(),
        province: "Exterior - " + countrySection.trim()
      };
    }

    // if province name is to be corrected
    const cleanPlacenames: { [key: string]: string } = {
      "Ciudad de Buenos Aires": "Ciudad Autónoma de Buenos Aires",
      CABA: "Ciudad Autónoma de Buenos Aires",
      Capital: "Ciudad Autónoma de Buenos Aires",
      "CABA (1424)": "Ciudad Autónoma de Buenos Aires",
      "Buenos Aires": "Provincia de Buenos Aires",
      PBA: "Provincia de Buenos Aires",
      "Florencio Varela (1888)": "Provincia de Buenos Aires",
      "Patiño, Formosa": "Formosa",
      Funes: "Santa Fe"
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

  static parseId(id: string) {
    const [idType, idNumber] = id.split(": ");
    return {
      idType,
      idNumber
    };
  }

  static parseAmount(amount: string): number {
    return parseFloat(amount.replace(",", "."));
  }
}
