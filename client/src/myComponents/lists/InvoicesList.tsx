import React from "react";
import { List, Datagrid, TextField } from "react-admin";
import MainAreaWrapper from "myComponents/MainAreaWrapper";
import ExpandingInfoPanel from "myComponents/ExpandingInfoPanel";
import DecimalNumberField from "myComponents/DecimalNumberField";

const InvoicesList = (props: any) => {
	return (
		<MainAreaWrapper>
			<List
				{...props}
				sort={{ field: "id", order: "DESC" }}
				perPage={12}
				bulkActionButtons={false}
			>
				<Datagrid rowClick="edit" expand={<ExpandingInfoPanel />}>
					<TextField source="id" label="No." />
					<TextField source="year" label="Year" sortable={false} />
					<TextField source="month" label="Month" sortable={false} />
					<TextField source="day" label="Day" sortable={false} />
					<TextField source="client_name" label="Client" sortable={false} />
					<TextField
						source="tax_id"
						label="Tax ID"
						sortable={false}
						style={{ width: 250 }}
					/>
					<DecimalNumberField source="ars_amount" label="Amount" />
				</Datagrid>
			</List>
		</MainAreaWrapper>
	);
};

export default InvoicesList;
