import React, { useEffect, useState } from "react";

import MainAreaWrapper from "../utilities/MainAreaWrapper";
import GridContainer from "mdr/components/Grid/GridContainer";
import { MyGridItem } from "myComponents/utilities/MyGridItem";
import LineGraph from "myComponents/utilities/LineGraph";
import "../../styling/chartist.css";

type sizes = { [key: string]: { [key: string]: Number } };

const Overview = () => {
	const sizes: sizes = {
		three: { xs: 12, sm: 12, md: 4 }, // single item sized for allowing three items per line
		four: { xs: 12, sm: 6, md: 3 } // single item sized for allowing four items per line
	};
	const size = sizes["three"];

	const [mostRecentEarnings, setmostRecentEarnings] = useState([]);
	const [mostRecentExpenses, setmostRecentExpenses] = useState([]);
	const [mostRecentSavings, setmostRecentSavings] = useState([]);

	useEffect(() => {
		fetch("/api/most-recent")
			.then(res => res.json()) // required by fetch, for turning response to json data
			.then(data => {
				setmostRecentEarnings(data["mostRecentEarnings"]);
				setmostRecentExpenses(data["mostRecentExpenses"]);
				setmostRecentSavings(data["mostRecentSavings"]);
			});
	}, []); // empty array as second argument to useEffect to run api call only once at first render

	return (
		<MainAreaWrapper>
			<GridContainer>
				<MyGridItem name="earnings" type="success" size={size} />
				<MyGridItem name="expenses" type="danger" size={size} />
				<MyGridItem name="savings" type="info" size={size} />
			</GridContainer>
			<GridContainer>
				<LineGraph size={size} type="success" data={mostRecentEarnings} />
				<LineGraph size={size} type="danger" data={mostRecentExpenses} />
				<LineGraph size={size} type="info" data={mostRecentSavings} />
			</GridContainer>
		</MainAreaWrapper>
	);
};

export default Overview;
