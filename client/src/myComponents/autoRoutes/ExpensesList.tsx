import React from "react";
import { List, Datagrid, TextField, NumberField } from "react-admin";
import MainAreaWrapper from "../utilities/MainAreaWrapper";

const ExpensesList = (props: any) => {
	return (
		<MainAreaWrapper>
			<List
				{...props}
				sort={{ field: "id", order: "DESC" }}
				perPage={25}
				bulkActionButtons={false}
			>
				<Datagrid rowClick="edit">
					<TextField source="expense_year" label="Year" />
					<TextField source="expense_month" label="Month" />
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
