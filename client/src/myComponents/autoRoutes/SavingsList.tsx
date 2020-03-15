import React from "react";
import { List, Datagrid, TextField, NumberField } from "react-admin";
import MainAreaWrapper from "../utilities/MainAreaWrapper";

const SavingsList = (props: []) => {
	return (
		<MainAreaWrapper>
			<List
				{...props}
				sort={{ field: "id", order: "DESC" }}
				perPage={25}
				bulkActionButtons={false}
			>
				<Datagrid rowClick="edit">
					<TextField source="year" label="Year" />
					<TextField source="month" label="Month" />
					<NumberField
						source="earned_in_usd"
						label="Earned in USD"
						options={{ minimumFractionDigits: 2 }}
					/>
					<NumberField
						source="expenses_in_usd"
						label="Expenses in USD"
						options={{ minimumFractionDigits: 2 }}
					/>
					<NumberField
						source="savings_in_usd"
						label="Savings in USD"
						options={{ minimumFractionDigits: 2 }}
					/>
				</Datagrid>
			</List>
		</MainAreaWrapper>
	);
};

export default SavingsList;
