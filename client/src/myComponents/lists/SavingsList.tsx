import React from "react";
import { List, Datagrid, TextField } from "react-admin";
import { makeStyles } from "@material-ui/core/styles";
import MainAreaWrapper from "myComponents/MainAreaWrapper";
import DecimalNumberField from "myComponents/DecimalNumberField";

const useListStyles = makeStyles({
	headerCell: {
		backgroundColor: "#05aec4"
	}
});

const SavingsList = (props: any) => {
	const classes = useListStyles();
	return (
		<MainAreaWrapper>
			<List
				{...props}
				sort={{ field: "id", order: "DESC" }}
				perPage={12}
				bulkActionButtons={false}
				exporter={false}
			>
				<Datagrid rowClick="edit" classes={classes}>
					<TextField source="year" label="Year" />
					<TextField source="month" label="Month" />
					<DecimalNumberField
						source="earnings_in_usd"
						label="Earnings in USD"
					/>
					<DecimalNumberField
						source="expenses_in_usd"
						label="Expenses in USD"
					/>
					<DecimalNumberField source="total" label="Savings in USD" />
				</Datagrid>
			</List>
		</MainAreaWrapper>
	);
};

export default SavingsList;
