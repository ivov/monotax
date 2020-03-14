import React from "react";
import { List, Datagrid, TextField } from "react-admin";
import DecimalNumberField from "./DecimalNumberField";
import { MyWrapper } from "./MyWrapper";

export const AdwordsList = (props: []) => {
	return (
		<MyWrapper>
			<List
				{...props}
				sort={{ field: "id", order: "DESC" }}
				perPage={25}
				bulkActionButtons={false}
			>
				<Datagrid rowClick="edit">
					<TextField source="year" label="Year" />
					<TextField source="month" label="Month" />
					<DecimalNumberField source="ars_main" label="Main in ARS" />
					<DecimalNumberField source="ars_mobile" label="Mobile in ARS" />
					<DecimalNumberField source="ars_total" label="Total in ARS" />
					<DecimalNumberField source="usd_main" label="Main in USD" />
					<DecimalNumberField source="usd_mobile" label="Mobile in USD" />
					<DecimalNumberField source="usd_total" label="Total in USD" />
				</Datagrid>
			</List>
		</MyWrapper>
	);
};
