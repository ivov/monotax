import React from "react";
import { Admin, Resource } from "react-admin";
import { Route, Redirect } from "react-router-dom";
import { createBrowserHistory } from "history";
import InvoicesList from "myComponents/lists/InvoicesList";
import EarningsList from "myComponents/lists/EarningsList";
import ExpensesList from "myComponents/lists/ExpensesList";
import SavingsList from "myComponents/lists/SavingsList";
import MyLayout from "myComponents/MyLayout";
import MyTheme from "myComponents/MyTheme";
import YearView from "myComponents/YearView";
import Overview from "myComponents/Overview";
import dataProvider from "../dataProvider";

const browserHistory = createBrowserHistory();

const customRoutes = [
	<Route exact path="/overview" component={() => Overview()} />, // FIXME
	<Route exact path="/2019" component={() => YearView("2019")} />,
	<Route exact path="/2018" component={() => YearView("2018")} />,
	<Route exact path="/2017" component={() => YearView("2017")} />
];

const MyAdmin = () => {
	const homepagePath = "/2019";
	return (
		<Admin
			theme={MyTheme}
			dataProvider={dataProvider}
			layout={MyLayout}
			customRoutes={customRoutes} // sets custom routes: global and yearviews
			history={browserHistory} // prevents pound sign (#) in url
			dashboard={() => <Redirect to={homepagePath} />}
		>
			<Resource name="earnings" list={EarningsList} />
			<Resource name="invoices" list={InvoicesList} />
			<Resource name="expenses" list={ExpensesList} />
			<Resource name="savings" list={SavingsList} />
		</Admin>
	);
};

export default MyAdmin;
