import FilenameFetcher from "./FilenameFetcher";
import InvoiceParser from "./InvoiceParser";
import DatabaseService from "./DatabaseService";

const main = async () => {
  const filenames = await FilenameFetcher.fetchFilenames();
  filenames.forEach(async filename => {
    const invoice = await InvoiceParser.process(filename);
    DatabaseService.insert(invoice);
  });
};

main();
