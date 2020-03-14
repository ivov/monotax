import React from "react";
import { Admin, Resource } from "react-admin";
import { InvoicesList } from "./InvoicesList";
import { EarningsList } from "./EarningsList";
import { ExpensesList } from "./ExpensesList";
import { SavingsList } from "./SavingsList";
import { AdwordsList } from "./AdwordsList";
import dataProvider from "../dataProvider";

import MyLayout from "./MyLayout";

const MyAdmin = () => {
	return (
		<Admin dataProvider={dataProvider} layout={MyLayout}>
			<Resource name="earnings" list={EarningsList} />
			<Resource name="invoices" list={InvoicesList} />
			<Resource name="expenses" list={ExpensesList} />
			<Resource name="savings" list={SavingsList} />
			<Resource name="adwords" list={AdwordsList} />
		</Admin>
	);
};

export default MyAdmin;
