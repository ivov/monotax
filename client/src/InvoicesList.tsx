import React from "react";
import { List, Datagrid, TextField, NumberField } from "react-admin";
import { makeStyles } from "@material-ui/core";

const useStyles = makeStyles({
  header: {
    backgroundColor: "yellow"
  }
});

export const InvoicesList = (props: []) => {
  // const classes = useStyles();
  return (
    <List
      // className={classes.header}
      {...props}
      sort={{ field: "id", order: "DESC" }}
      perPage={25}
      bulkActionButtons={false}
    >
      <Datagrid rowClick="edit" expand={<ExpandingInfoPanel />}>
        <TextField source="id" label="No." />
        <TextField source="invoice_year" label="Year" sortable={false} />
        <TextField source="invoice_month" label="Month" sortable={false} />
        <TextField source="invoice_day" label="Day" sortable={false} />
        <TextField source="client_name" label="Client" sortable={false} />
        <TextField
          source="tax_id"
          label="Tax ID"
          sortable={false}
          style={{ width: 250 }}
        />
        <NumberField
          source="invoice_ars_amount"
          label="Amount"
          options={{ minimumFractionDigits: 2 }}
        />
      </Datagrid>
    </List>
  );
};

const ExpandingInfoPanel = ({ id, record, resource }: any) => (
  <div
    dangerouslySetInnerHTML={{
      __html:
        record.client_street +
        " " +
        record.client_province +
        " | " +
        record.client_vat_status
    }}
  />
);
