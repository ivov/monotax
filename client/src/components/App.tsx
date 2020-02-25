import React from "react";
import { Admin, Resource } from "react-admin";
import { InvoiceList } from "../InvoiceList";
import dataProvider from "../dataProvider";

const App = () => (
  <Admin dataProvider={dataProvider}>
    <Resource name="invoices" list={InvoiceList} />
  </Admin>
);

export default App;
