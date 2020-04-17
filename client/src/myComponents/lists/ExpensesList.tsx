import React from "react";
import { List, Datagrid, TextField, NumberField } from "react-admin";
import { makeStyles } from "@material-ui/core/styles";
import MainAreaWrapper from "myComponents/MainAreaWrapper";

const useListStyles = makeStyles({
	headerCell: {
		backgroundColor: "#e73345"
	}
});

const ExpensesList = (props: any) => {
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
					<NumberField
						source="ars_amount"
						label="ARS"
						options={{ minimumFractionDigits: 2 }}
					/>
					<NumberField
						source="usd_amount"
						label="USD"
						options={{ minimumFractionDigits: 2 }}
					/>
				</Datagrid>
			</List>
		</MainAreaWrapper>
	);
};

export default ExpensesList;
