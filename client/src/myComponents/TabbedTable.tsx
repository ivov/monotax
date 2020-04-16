import React from "react";

import EarningsIcon from "@material-ui/icons/AddCircle";
import ExpensesIcon from "@material-ui/icons/RemoveCircle";
import SavingsIcon from "@material-ui/icons/Star";
import Grid from "@material-ui/core/Grid";
import CustomTabs from "mdr/components/CustomTabs/CustomTabs";
import MyTable from "./MyTable";

class TabbedTable extends MyTable {
	render() {
		const {
			size,
			earningsForYear,
			expensesForYear,
			savingsForYear,
			...rest
		} = this.props;

		return (
			<Grid {...size} item {...rest}>
				<CustomTabs
					title=""
					headerColor="rose"
					tabs={[
						{
							tabName: "Earnings",
							tabIcon: EarningsIcon,
							tabContent: this.generateTable(earningsForYear, "rose")
						},
						{
							tabName: "Expenses",
							tabIcon: ExpensesIcon,
							tabContent: this.generateTable(expensesForYear, "rose")
						},
						{
							tabName: "Savings",
							tabIcon: SavingsIcon,
							tabContent: this.generateTable(savingsForYear, "rose")
						}
					]}
				/>
			</Grid>
		);
	}
}

export default TabbedTable;
