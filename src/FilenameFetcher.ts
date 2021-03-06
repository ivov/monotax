const fs = require("fs");

export default class FilenameFetcher {
	static fetchFilenames(): Promise<string[]> {
		const dirpath = process.cwd() + "/data/pdf";

		return new Promise((resolve, reject) => {
			fs.readdir(dirpath, (error: Error, filenames: string[]) =>
				resolve(filenames)
			);
		});
	}
}
