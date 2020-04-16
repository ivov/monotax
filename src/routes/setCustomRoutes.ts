import express from "express";
import DatabaseService from "../DatabaseService";

type valuesForYear = { total: number; month: string; year: string }[];
type totalsForYear = {
	earnings: string;
	expenses: string;
	savings: string;
	invoiced: string;
};

const setCustomRoutes = (app: express.Application) => {
	const years = ["2017", "2018", "2019"];
	years.forEach(year =>
		app.get(
			"/api/year/" + year,
			(request: express.Request, response: express.Response) =>
				createCustomRoute(request, response, year)
		)
	);
};

const createCustomRoute = (
	request: express.Request,
	response: express.Response,
	year: string
) => {
	const earningsForYear = DatabaseService.getValueForYear("earnings", year);
	const expensesForYear = DatabaseService.getValueForYear("expenses", year);
	const invoicedForYear = DatabaseService.getValueForYear("invoiced", year);
	const savingsForYear = DatabaseService.getValueForYear("savings", year);

	const calculateTotalFor = (category: valuesForYear) =>
		category.reduce((acc, cur) => acc + cur.total, 0);

	const totalsForYear: totalsForYear = {
		earnings: calculateTotalFor(earningsForYear).toLocaleString(),
		expenses: calculateTotalFor(expensesForYear).toLocaleString(),
		savings: calculateTotalFor(savingsForYear).toLocaleString(),
		invoiced: calculateTotalFor(invoicedForYear).toLocaleString()
	};

	response.status(200).json({
		earningsForYear,
		expensesForYear,
		savingsForYear,
		invoicedForYear,
		totalsForYear
	});
};

export default setCustomRoutes;
