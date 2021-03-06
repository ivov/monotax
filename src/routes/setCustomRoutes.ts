import express from "express";

import DatabaseService from "../DatabaseService";

const setCustomRoutes = (app: express.Application) => {
	// overview route
	app.get("/api/overview/", (request, response) => {
		const quarterlyData = DatabaseService.getQuarterlyData();
		const allTimeTotals = DatabaseService.getAllTimeTotals();
		const yearlyTotals = DatabaseService.getYearlyTotals();
		const monthlyAveragesPerYear = DatabaseService.getMonthlyAveragesPerYear();
		const lastSixMonthsValues = DatabaseService.getLastSixMonthsValues();

		response.status(200).json({
			quarterlyData,
			allTimeTotals,
			yearlyTotals,
			monthlyAveragesPerYear,
			lastSixMonthsValues
		});
	});

	// year routes
	const years = ["2017", "2018", "2019"];
	years.forEach(year =>
		app.get("/api/year/" + year, (request, response) => {
			const yearData = DatabaseService.getYearData(year);
			const totalsForYear = calculateTotals(yearData);

			response.status(200).json({
				earningsForYear: yearData["earnings"],
				expensesForYear: yearData["expenses"],
				savingsForYear: yearData["savings"],
				invoicedForYear: yearData["invoiced"],
				totalsForYear
			});
		})
	);
};

const calculateTotals = (yearData: YearData): TotalsForYear => {
	// @ts-ignore: empty initialization
	let totals: TotalsForYear = {};

	for (let category in yearData) {
		totals[category] = yearData[category].reduce(
			(acc, cur) => acc + cur.total,
			0
		);
	}
	return totals;
};

export default setCustomRoutes;
