import React from "react";
import GlobalIcon from "@material-ui/icons/Apps";
import OverviewIcon from "@material-ui/icons/Schedule";
import EarningsIcon from "@material-ui/icons/AddCircle";
import ExpensesIcon from "@material-ui/icons/RemoveCircle";
import InvoiceIcon from "@material-ui/icons/Description";
import SavingsIcon from "@material-ui/icons/Star";
import Sidebar from "mdr/components/Sidebar/Sidebar";

import DashboardPage from "mdr/views/Dashboard/Dashboard";
import sidebarImage from "mdr/assets/img/sidebar-7.jpg";
import Overview from "./customRoutes/Overview";

const sidebarProps = {
	color: "blue",
	image: sidebarImage,
	routes: [
		{
			path: "/overview-for-2019",
			name: "2019 Overview",
			icon: OverviewIcon,
			component: Overview,
			layout: ""
		},
		{
			path: "/overview-for-2018",
			name: "2018 Overview",
			icon: OverviewIcon,
			component: Overview,
			layout: ""
		},
		{
			path: "/overview-for-2017",
			name: "2017 Overview",
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
		}
	]
};

const MySidebar = (props: any) => <Sidebar {...sidebarProps} />;

export default MySidebar;
