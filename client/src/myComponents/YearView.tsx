import React, { useEffect, useState } from "react";

import GridContainer from "mdr/components/Grid/GridContainer";

import MainAreaWrapper from "myComponents/MainAreaWrapper";
import MyGridItem from "myComponents/MyGridItem";
import LineGraph from "myComponents/LineGraph";
import GridHeader from "myComponents/GridHeader";
import TabbedTable from "myComponents/TabbedTable";
import RegularTable from "myComponents/RegularTable";
import "styling/chartist.css";

const YearView = (year: string) => {
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
	const [totalsForYear, setTotalsForYear] = useState({
		earnings: 0,
		expenses: 0,
		savings: 0,
		invoiced: 0
	});

	useEffect(() => {
		fetch("/api/year/" + year)
			.then(res => res.json())
			.then(data => {
				setEarningsForYear(data["earningsForYear"]);
				setExpensesForYear(data["expensesForYear"]);
				setSavingsForYear(data["savingsForYear"]);
				setInvoicedForYear(data["invoicedForYear"]);
				setTotalsForYear(data["totalsForYear"]);
			});
	}, []); // empty array as second arg to run api call only once at first render

	return (
		<MainAreaWrapper>
			<GridContainer>
				<GridHeader
					size={sizes["fullWidth"]}
					title={"Overview for Year " + year}
				/>
				<MyGridItem
					name="earnings"
					type="success"
					size={sizes["oneFourth"]}
					total={totalsForYear["earnings"]}
				/>
				<MyGridItem
					name="expenses"
					type="danger"
					size={sizes["oneFourth"]}
					total={totalsForYear["expenses"]}
				/>
				<MyGridItem
					name="savings"
					type="info"
					size={sizes["oneFourth"]}
					total={totalsForYear["savings"]}
				/>
				<MyGridItem
					name="invoices"
					type="primary"
					size={sizes["oneFourth"]}
					total={totalsForYear["invoiced"]}
				/>
			</GridContainer>
			<GridContainer>
				<LineGraph
					size={sizes["oneHalf"]}
					type="success"
					data={earningsForYear}
					frequency="month"
				/>
				<LineGraph
					size={sizes["oneHalf"]}
					type="danger"
					data={expensesForYear}
					frequency="month"
				/>
				<LineGraph
					size={sizes["oneHalf"]}
					type="info"
					data={savingsForYear}
					frequency="month"
				/>
				<LineGraph
					size={sizes["oneHalf"]}
					type="primary"
					data={invoicedForYear}
					frequency="month"
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

export default YearView;
