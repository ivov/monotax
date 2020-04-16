import React, { useEffect, useState } from "react";

import MainAreaWrapper from "../utilities/MainAreaWrapper";
import GridContainer from "mdr/components/Grid/GridContainer";
import MyGridItem from "myComponents/utilities/MyGridItem";
import LineGraph from "myComponents/utilities/LineGraph";
import GridHeader from "myComponents/utilities/GridHeader";
import TabbedTable from "myComponents/utilities/TabbedTable";

import "../../styling/chartist.css";
import RegularTable from "myComponents/utilities/RegularTable";

const Overview = () => {
	// sizes for X items per line
	const sizes: { [key: string]: { [key: string]: Number } } = {
		oneFourth: { xs: 12, sm: 6, md: 3 },
		oneThird: { xs: 12, sm: 12, md: 4 },
		oneHalf: { xs: 12, sm: 6, md: 6 },
		fullWidth: { xs: 12, sm: 6, md: 12 },
		sevenTwelfths: { xs: 12, sm: 6, md: 7 },
		fiveTwelfths: { xs: 12, sm: 6, md: 5 }
	};

	const [earningsForYear, setEarningsForYear] = useState([]);
	const [expensesForYear, setExpensesForYear] = useState([]);
	const [savingsForYear, setSavingsForYear] = useState([]);
	const [invoicedForYear, setInvoicedForYear] = useState([]);
	const [totalsForYear, setTotalsForYear] = useState([]);

	useEffect(() => {
		fetch("/api/most-recent")
			.then(res => res.json())
			.then(data => {
				setEarningsForYear(data["earningsForYear"]);
				setExpensesForYear(data["expensesForYear"]);
				setSavingsForYear(data["savingsForYear"]);
				setInvoicedForYear(data["invoicedForYear"]);
				setTotalsForYear(data["totalsForYear"]);
			});
	}, []); // empty array as second arg to run api call only once at first render

	/* Turns API array into useful object.
	API array:
	[ { total: 6978.99, category: "expenses" },
		​{ total: 12891.95, category: "savings" },
		{ total: 13948.79, category: "invoiced" },
		{ total: 19870.94, category: "earnings" } ]

	Useful object:
		{ earnings: "19,870.94", expenses: "6,978.99", savings: "12,891.95", invoiced: "13,948.79" }
	*/
	const objectifyTotals = (
		array: { category: string; total: string }[]
	): { [key: string]: string } => {
		let output: { [key: string]: string } = {};
		for (let obj of array) {
			output[obj.category] = obj.total.toLocaleString();
		}
		return output;
	};
	const totals = objectifyTotals(totalsForYear);

	return (
		<MainAreaWrapper>
			<GridContainer>
				<GridHeader size={sizes["fullWidth"]} title="2019" />
				<MyGridItem
					name="earnings"
					type="success"
					size={sizes["oneFourth"]}
					total={totals["earnings"]}
				/>
				<MyGridItem
					name="expenses"
					type="danger"
					size={sizes["oneFourth"]}
					total={totals["expenses"]}
				/>
				<MyGridItem
					name="savings"
					type="info"
					size={sizes["oneFourth"]}
					total={totals["savings"]}
				/>
				<MyGridItem
					name="invoices"
					type="primary"
					size={sizes["oneFourth"]}
					total={totals["invoiced"]}
				/>
			</GridContainer>
			<GridContainer>
				<LineGraph
					size={sizes["oneHalf"]}
					type="success"
					data={earningsForYear}
				/>
				<LineGraph
					size={sizes["oneHalf"]}
					type="danger"
					data={expensesForYear}
				/>
				<LineGraph size={sizes["oneHalf"]} type="info" data={savingsForYear} />
				<LineGraph
					size={sizes["oneHalf"]}
					type="primary"
					data={invoicedForYear}
				/>
			</GridContainer>
			<GridContainer>
				<TabbedTable
					size={sizes["sevenTwelfths"]}
					earningsForYear={earningsForYear}
					expensesForYear={expensesForYear}
					savingsForYear={savingsForYear}
				/>
				<RegularTable
					size={sizes["fiveTwelfths"]}
					invoicedForYear={invoicedForYear}
				/>
			</GridContainer>
		</MainAreaWrapper>
	);
};

export default Overview;
