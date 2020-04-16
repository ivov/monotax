import React from "react";
import { Admin, Resource } from "react-admin";
import { createBrowserHistory } from "history";

import InvoicesList from "./autoRoutes/InvoicesList";
import EarningsList from "./autoRoutes/EarningsList";
import ExpensesList from "./autoRoutes/ExpensesList";
import SavingsList from "./autoRoutes/SavingsList";
import customRoutes from "./customRoutes/customRoutes";
import dataProvider from "../dataProvider";
import MyLayout from "./MyLayout";
import { Redirect } from "react-router-dom";

const browserHistory = createBrowserHistory();

const MyAdmin = () => {
	return (
		<Admin
			dataProvider={dataProvider}
			layout={MyLayout}
			customRoutes={customRoutes} // sets overview route
			history={browserHistory} // prevents pound sign (#) in url
			dashboard={() => <Redirect to="/overview-for-2019" />}
			// homepage "/" redirects to "/overview-for-2019"
		>
			<Resource name="earnings" list={EarningsList} />
			<Resource name="invoices" list={InvoicesList} />
			<Resource name="expenses" list={ExpensesList} />
			<Resource name="savings" list={SavingsList} />
		</Admin>
	);
};

export default MyAdmin;
