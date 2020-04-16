import React from "react";

import Table from "mdr/components/Table/Table";

class MyTable extends React.Component<any, any> {
	generateTable = (
		mostRecentData: { year: number; month: number; total: string }[],
		tableHeaderColor: string
	) => {
		let tableData: string[][] = [];
		const monthNames = [
			"January",
			"February",
			"March",
			"April",
			"May",
			"June",
			"July",
			"August",
			"September",
			"October",
			"November",
			"December"
		];

		mostRecentData.forEach(obj => {
			tableData.push([
				obj.year.toString(),
				monthNames[obj.month - 1],
				"$ " + obj.total.toLocaleString()
			]);
		});

		return (
			<Table
				tableHeaderColor={tableHeaderColor}
				tableHead={["Year", "Month", "Total"]}
				tableData={tableData.reverse()}
			/>
		);
	};
}

export default MyTable;
