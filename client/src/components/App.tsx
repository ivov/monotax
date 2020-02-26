import React from "react";
import { Admin, Resource } from "react-admin";
import { InvoicesList } from "../InvoicesList";
import { EarningsList } from "../EarningsList";
import { ExpensesList } from "../ExpensesList";
import { SavingsList } from "../SavingsList";
import dataProvider from "../dataProvider";
import InvoiceIcon from "@material-ui/icons/Description";
import EarningsIcon from "@material-ui/icons/AttachMoney";
import ExpensesIcon from "@material-ui/icons/AccountBalanceWallet";
import SavingsIcon from "@material-ui/icons/Star";

const App = () => (
  <Admin dataProvider={dataProvider}>
    <Resource name="earnings" list={EarningsList} icon={EarningsIcon} />
    <Resource name="invoices" list={InvoicesList} icon={InvoiceIcon} />
    <Resource name="expenses" list={ExpensesList} icon={ExpensesIcon} />
    <Resource name="savings" list={SavingsList} icon={SavingsIcon} />
  </Admin>
);

export default App;
