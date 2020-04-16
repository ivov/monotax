import React from "react";
import { List, Datagrid, TextField } from "react-admin";
import MainAreaWrapper from "../MainAreaWrapper";
import DecimalNumberField from "myComponents/DecimalNumberField";

const EarningsList = (props: any) => (
	<MainAreaWrapper>
		<List
			{...props}
			sort={{ field: "id", order: "DESC" }}
			perPage={15}
			bulkActionButtons={false}
		>
			<Datagrid rowClick="edit">
				<TextField source="earnings_year" label="Year" />
				<TextField source="earnings_month" label="Month" />
				<TextField source="earnings_day" label="Day" />
				<TextField source="client_name" label="Client" />
				<TextField source="client_type" label="Client type" />
				<DecimalNumberField source="ars_amount" label="ARS" />
				<DecimalNumberField source="usd_amount" label="USD" />
			</Datagrid>
		</List>
	</MainAreaWrapper>
);

export default EarningsList;
