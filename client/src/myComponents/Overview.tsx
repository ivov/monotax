import React, { useEffect, useState } from "react";

import GridContainer from "mdr/components/Grid/GridContainer";

import MainAreaWrapper from "myComponents/MainAreaWrapper";
import MyGridItem from "myComponents/MyGridItem";
import LineGraph from "myComponents/LineGraph";
import GridHeader from "myComponents/GridHeader";

import "styling/chartist.css";

const Overview = () => {
	const sizes: { [key: string]: { [key: string]: Number } } = {
		oneFourth: { xs: 12, sm: 6, md: 3 },
		oneThird: { xs: 12, sm: 12, md: 4 },
		oneHalf: { xs: 12, sm: 6, md: 6 },
		fullWidth: { xs: 12, sm: 6, md: 12 },
		sevenTwelfths: { xs: 12, sm: 6, md: 7 },
		fiveTwelfths: { xs: 12, sm: 6, md: 5 },
		nineTwelfths: { xs: 12, sm: 6, md: 9 }
	};

	const [overviewData, setOverviewData] = useState<OverviewData>({
		earnings: [{ quarter: "", total: 0 }],
		expenses: [{ quarter: "", total: 0 }],
		invoiced: [{ quarter: "", total: 0 }],
		savings: [{ quarter: "", total: 0 }]
	});

	useEffect(() => {
		fetch("/api/overview/")
			.then(res => res.json())
			.then(data => setOverviewData(data));
	}, []);

	console.log(overviewData);

	return (
		<MainAreaWrapper>
			<GridContainer>
				<GridHeader size={sizes["fullWidth"]} title="Global Overview" />
				<MyGridItem
					name="earnings"
					type="success"
					size={sizes["oneFourth"]}
					total="123"
				/>
				<LineGraph
					size={sizes["nineTwelfths"]}
					type="success"
					frequency="quarter"
					data={overviewData["earnings"]}
				/>
			</GridContainer>
			<GridContainer>
				<MyGridItem
					name="expenses"
					type="danger"
					size={sizes["oneFourth"]}
					total="123"
				/>
				<LineGraph
					size={sizes["nineTwelfths"]}
					type="danger"
					frequency="quarter"
					data={overviewData["expenses"]}
				/>
			</GridContainer>

			<GridContainer>
				<MyGridItem
					name="savings"
					type="info"
					size={sizes["oneFourth"]}
					total="123"
				/>
				<LineGraph
					size={sizes["nineTwelfths"]}
					type="info"
					frequency="quarter"
					data={overviewData["savings"]}
				/>
			</GridContainer>

			<GridContainer>
				<MyGridItem
					name="invoices"
					type="primary"
					size={sizes["oneFourth"]}
					total="123"
				/>
				<LineGraph
					size={sizes["nineTwelfths"]}
					type="primary"
					frequency="quarter"
					data={overviewData["invoiced"]}
				/>
			</GridContainer>
		</MainAreaWrapper>
	);
};

export default Overview;
