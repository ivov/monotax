import React from "react";
import { List, Datagrid, TextField, NumberField } from "react-admin";
import { makeStyles } from "@material-ui/core";

const useStyles = makeStyles({
  th: {
    backgroundColor: "yellow"
  }
});

export const InvoiceList = (props: []) => {
  const classes = useStyles();
  return (
    <List
      {...props}
      sort={{ field: "id", order: "DESC" }}
      classes={{ header: classes.th }}
    >
      <Datagrid rowClick="edit">
        <TextField source="id" label="No." />
        <TextField source="invoice_year" label="Year" />
        <TextField source="invoice_month" label="Month" />
        <TextField source="invoice_day" label="Day" />
        <TextField source="client_name" label="Client" />
        <TextField source="client_street" label="Address" />
        <TextField source="client_province" label="Jurisdiction" />
        <TextField source="client_id_type" label="ID type" />
        <TextField source="client_id_number" label="ID no." />
        <TextField source="client_vat_status" label="Tax status" />
        <NumberField source="invoice_ars_amount" label="Amount" />
      </Datagrid>
    </List>
  );
};
