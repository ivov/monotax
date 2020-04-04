import express from "express";
import DatabaseService from "../DatabaseService";

const setCustomRoutes = (app: express.Application) => {
	app.get(
		"/api/most-recent",
		(request: express.Request, response: express.Response) => {
			console.log("ENDPOINT HIT " + "/api/most-recent");

			const mostRecentEarnings = DatabaseService.getMostRecent("earnings");
			const mostRecentExpenses = DatabaseService.getMostRecent("expenses");
			const mostRecentSavings = DatabaseService.getMostRecent("savings");
			const allThreeCategories = {
				mostRecentEarnings,
				mostRecentExpenses,
				mostRecentSavings
			};
			response.status(200).json(allThreeCategories);
		}
	);
};

export default setCustomRoutes;
