import React from "react";
import { Admin, Resource } from "react-admin";
import InvoicesList from "./autoRoutes/InvoicesList";
import EarningsList from "./autoRoutes/EarningsList";
import ExpensesList from "./autoRoutes/ExpensesList";
import SavingsList from "./autoRoutes/SavingsList";
import AdwordsList from "./autoRoutes/AdwordsList";
import dataProvider from "../dataProvider";
import customRoutes from "./customRoutes/customRoutes";
import MyLayout from "./MyLayout";

const MyAdmin = () => {
	return (
		<Admin
			dataProvider={dataProvider}
			layout={MyLayout}
			customRoutes={customRoutes} // contains overview route
		>
			<Resource name="earnings" list={EarningsList} />
			<Resource name="invoices" list={InvoicesList} />
			<Resource name="expenses" list={ExpensesList} />
			<Resource name="savings" list={SavingsList} />
			<Resource name="adwords" list={AdwordsList} />
		</Admin>
	);
};

export default MyAdmin;
