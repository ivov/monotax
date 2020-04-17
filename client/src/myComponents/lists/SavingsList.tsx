import React from "react";
import { List, Datagrid, TextField } from "react-admin";

import MainAreaWrapper from "../MainAreaWrapper";
import DecimalNumberField from "myComponents/DecimalNumberField";

const SavingsList = (props: any) => {
	return (
		<MainAreaWrapper>
			<List
				{...props}
				sort={{ field: "id", order: "DESC" }}
				perPage={12}
				bulkActionButtons={false}
			>
				<Datagrid rowClick="edit">
					<TextField source="year" label="Year" />
					<TextField source="month" label="Month" />
					<DecimalNumberField source="earnings_in_usd" label="Earned in USD" />
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
