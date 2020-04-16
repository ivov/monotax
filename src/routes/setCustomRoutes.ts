import express from "express";
import DatabaseService from "../DatabaseService";

const setCustomRoutes = (app: express.Application) => {
	app.get(
		"/api/most-recent",
		(request: express.Request, response: express.Response) => {
			console.log("ENDPOINT HIT " + "/api/most-recent");

			const earningsForYear = DatabaseService.getDataForYear("earnings");
			const expensesForYear = DatabaseService.getDataForYear("expenses");
			const savingsForYear = DatabaseService.getDataForYear("savings");
			const invoicedForYear = DatabaseService.getDataForYear("invoiced");
			const totalsForYear = DatabaseService.getDataForYear("totals");

			response.status(200).json({
				earningsForYear,
				expensesForYear,
				savingsForYear,
				invoicedForYear,
				totalsForYear
			});
		}
	);
};

export default setCustomRoutes;
