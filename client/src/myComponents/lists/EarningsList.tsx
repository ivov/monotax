import React from "react";
import { makeStyles } from "@material-ui/core/styles";
import { List, Datagrid, TextField } from "react-admin";
import MainAreaWrapper from "myComponents/MainAreaWrapper";
import DecimalNumberField from "myComponents/DecimalNumberField";

const useListStyles = makeStyles({
	headerCell: {
		backgroundColor: "#48a34c"
	}
});

const EarningsList = (props: any) => {
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
					<TextField source="day" label="Day" />
					<TextField source="client_name" label="Client" />
					<TextField source="client_type" label="Client type" />
					<DecimalNumberField source="ars_amount" label="ARS" />
					<DecimalNumberField source="usd_amount" label="USD" />
				</Datagrid>
			</List>
		</MainAreaWrapper>
	);
};

export default EarningsList;
