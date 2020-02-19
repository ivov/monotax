import FilenameFetcher from "./FilenameFetcher";
import InvoiceParser from "./InvoiceParser";

const main = async () => {
  const filenames = await FilenameFetcher.fetchFilenames();
  filenames.forEach(filename => InvoiceParser.process(filename));
};

main();
