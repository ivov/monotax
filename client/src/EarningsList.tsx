import React from "react";
import { List, Datagrid, TextField, NumberField } from "react-admin";

export const EarningsList = (props: []) => {
  return (
    <List
      {...props}
      sort={{ field: "id", order: "DESC" }}
      perPage={25}
      bulkActionButtons={false}
    >
      <Datagrid rowClick="edit">
        <TextField source="earnings_year" label="Year" />
        <TextField source="earnings_month" label="Month" />
        <TextField source="earnings_day" label="Day" />
        <TextField source="client_name" label="Client" />
        <TextField source="client_type" label="Client type" />
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
  );
};
