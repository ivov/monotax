const fs = require("fs");

export default class TextFetcher {
  static fetchFilenames(): Promise<string[]> {
    const dirpath = process.cwd() + "/invoices";

    return new Promise((resolve, reject) => {
      fs.readdir(dirpath, (error: Error, filenames: string[]) =>
        resolve(filenames)
      );
    });
  }
}
