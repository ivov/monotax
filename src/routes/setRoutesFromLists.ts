import express from "express";
import DatabaseService from "../DatabaseService";

const setRoutesFromLists = (app: express.Application) => {
	const autoRoutes = ["invoices", "earnings", "expenses", "savings"];
	autoRoutes.forEach(route =>
		app.get(
			"/api/" + route,
			(request: express.Request, response: express.Response) =>
				createRouteFromList(request, response, route)
		)
	);
};

const createRouteFromList = (
	request: express.Request,
	response: express.Response,
	route: string
) => {
	const { offset, limit } = request.query;
	const [field, order] = JSON.parse(request.query.sort);
	const results = DatabaseService.getAllRecords(
		VIEWS[route],
		offset,
		limit,
		field,
		order
	);
	const total = DatabaseService.getCount(VIEWS[route]);
	return response
		.status(200)
		.set("Content-Range", route + "0-15/" + total)
		.set("Access-Control-Expose-Headers", "Content-Range")
		.json(results);
};

/* Collection of react-admin views and their corresponding views in monotax.db */
const VIEWS: { [key: string]: string } = {
	invoices: "invoices_with_tax_id",
	earnings: "earned_amounts_in_ars_and_usd",
	savings: "savings_per_month_and_year",
	expenses: "expense_amounts_in_ars_and_usd"
};

export default setRoutesFromLists;
