import express from "express";
import DatabaseService from "../DatabaseService";

const setCustomRoutes = (app: express.Application) => {
	app.get(
		"/api/most-recent",
		(request: express.Request, response: express.Response) => {
			const mostRecentEarnings = DatabaseService.getMostRecent("earnings");
			const mostRecentExpenses = DatabaseService.getMostRecent("expenses");
			const mostRecentSavings = DatabaseService.getMostRecent("savings");
			return response.status(200).json(mostRecentEarnings);
		}
	);
};

export default setCustomRoutes;
