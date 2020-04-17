import React from "react";
import { List, Datagrid, TextField } from "react-admin";

import MainAreaWrapper from "myComponents/MainAreaWrapper";
import DecimalNumberField from "myComponents/DecimalNumberField";

const EarningsList = (props: any) => (
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
				<TextField source="day" label="Day" />
				<TextField source="client_name" label="Client" />
				<TextField source="client_type" label="Client type" />
				<DecimalNumberField source="ars_amount" label="ARS" />
				<DecimalNumberField source="usd_amount" label="USD" />
			</Datagrid>
		</List>
	</MainAreaWrapper>
);

export default EarningsList;
