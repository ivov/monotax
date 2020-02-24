import React from "react";
import { Admin, Resource, ListGuesser } from "react-admin";
import dataProvider from "../dataProvider";

const App = () => (
  <Admin dataProvider={dataProvider}>
    <Resource name="invoices" list={ListGuesser} />
  </Admin>
);

export default App;
