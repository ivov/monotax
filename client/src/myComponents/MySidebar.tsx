import React from "react";
import Sidebar from "../mdr/components/Sidebar/Sidebar";
import OverviewIcon from "@material-ui/icons/Apps";
import EarningsIcon from "@material-ui/icons/AddCircle";
import ExpensesIcon from "@material-ui/icons/RemoveCircle";
import InvoiceIcon from "@material-ui/icons/Description";
import SavingsIcon from "@material-ui/icons/Star";
import AdwordsIcon from "@material-ui/icons/Language";
import DashboardPage from "../mdr/views/Dashboard/Dashboard";
import sidebarImage from "mdr/assets/img/sidebar-7.jpg";
import Overview from "./customRoutes/Overview";

const sidebarProps = {
	color: "purple",
	image: sidebarImage,
	routes: [
		{
			path: "/overview",
			name: "Overview",
			icon: OverviewIcon,
			component: Overview,
			layout: ""
		},
		{
			path: "/earnings",
			name: "Earnings",
			icon: EarningsIcon,
			component: DashboardPage,
			layout: ""
		},
		{
			path: "/expenses",
			name: "Expenses",
			icon: ExpensesIcon,
			component: DashboardPage,
			layout: ""
		},
		{
			path: "/savings",
			name: "Savings",
			icon: SavingsIcon,
			component: DashboardPage,
			layout: ""
		},
		{
			path: "/invoices",
			name: "Invoices",
			icon: InvoiceIcon,
			component: DashboardPage,
			layout: ""
		},
		{
			path: "/adwords",
			name: "Adwords",
			icon: AdwordsIcon,
			component: DashboardPage,
			layout: ""
		}
	]
};

const MySidebar = (props: any) => {
	return <Sidebar {...sidebarProps} />;
};

export default MySidebar;
