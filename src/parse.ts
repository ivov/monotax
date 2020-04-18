import FilenameFetcher from "./FilenameFetcher";
import InvoiceParser from "./InvoiceParser";
import DatabaseService from "./DatabaseService";

const parse = async () => {
	console.log("Fetching filenames...");
	let counter = 0;
	let filenames = await FilenameFetcher.fetchFilenames();

	filenames = filenames.filter(filename => filename !== ".gitignore");

	filenames.forEach(async filename => {
		const invoice = await InvoiceParser.process(filename);
		DatabaseService.insert(invoice);

		counter++;
		const progress =
			((counter * 100) / filenames.length).toFixed(1).toString() + "%";
		const parseMessage = `Parsed invoice ID ${invoice.id}`;
		console.log(
			parseMessage +
				counter.toString().padStart(30 - parseMessage.length) +
				progress.padStart(10)
		);
	});
};

parse();
