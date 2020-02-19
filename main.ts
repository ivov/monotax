const fs = require("fs");
const path = require("path");
const pdfParse = require("pdf-parse");

class Parser {
  static async processInvoices() {
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
      number: this.parseNumber(filename),
      date: this.parseDate(raw.date),
      name: this.parseName(raw.name),
      address: this.parseAddress(raw.address),
      ID: this.parseID(raw.ID),
      vatStatus: raw.vatStatus,
      amount: this.parseAmount(raw.amount)
    };
    // console.log(invoiceData);

    console.log("'" + invoiceData.name + "'" + invoiceData.number);
  }

  /** Returns an object containing the raw strings to be used in `invoiceData`.*/
  static extractRaw(pdfText: string): { [key: string]: string } {
    const regexes = {
      date: /Domicilio:\n(.{10})/,
      nameAndAddress: /\d{11}\n([A-Z0-9 ñÑ.,()É\-\n]*)\n([\w\s'ñÑ°áéíóúª:.,\-/()ã+]*?)(Código|Contado)/,
      ID: /(\w*: \d*)\n(Código|Precio Unit\.)/,
      vatStatus: /Monotributo\n([\w\s]*)\nExento/,
      amount: /([\d,]*)\nSubtotal/
    };
    let rawNameAndAddress = pdfText.match(regexes["nameAndAddress"])!;

    // exceptional: if client name is not capitalized (only 3 out of hundreds)
    const name = /(Cassandra Gleeson|ONU Mujeres|Valeriy Shcheglov)\n([\w\s'ñÑ°áéíóúª:.,\-/()ã+]*?)(Código|Contado)/;
    if (name.test(pdfText)) {
      rawNameAndAddress = pdfText.match(name)!;
    }

    return {
      date: pdfText.match(regexes["date"])![1],
      name: rawNameAndAddress![1].replace("\n", " ").replace("  ", " "),
      address: rawNameAndAddress![2].replace("\n", " ").trim() || "",
      ID: pdfText.match(regexes["ID"])![1],
      vatStatus: pdfText.match(regexes["vatStatus"])![1],
      amount: pdfText.match(regexes["amount"])![1]
    };
  }

  static parseNumber(filename: string): string {
    const regexForNumber = /_0+(\d*).pdf/;
    return filename.match(regexForNumber)![1];
  }

  static async readFile(filepath: string): Promise<string> {
    let buffer = fs.readFileSync(filepath);
    let pdfContents: pdfContents = await pdfParse(buffer, { max: 1 }); // parse first page only
    // console.log(pdfContents.text);
    return pdfContents.text;
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
      "SRL.": "SRL",
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
        province: countrySection.trim()
      };
    }

    // exceptional: if from Uruguay
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

  static parseID(ID: string) {
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

Parser.processInvoices();
