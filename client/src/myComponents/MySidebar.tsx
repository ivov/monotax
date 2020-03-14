import React from "react";
import Sidebar from "../components/Sidebar/Sidebar";
import Money from "@material-ui/icons/AttachMoney";
import Invoices from "@material-ui/icons/LibraryBooks";
import DashboardPage from "views/Dashboard/Dashboard.js";
import sidebarImage from "assets/img/sidebar-4.jpg";

const sidebarProps = {
	color: "purple",
	image: sidebarImage, // no image, but triggers shadow background
	routes: [
		{
			path: "/earnings",
			name: "Earnings",
			icon: Money,
			component: DashboardPage,
			layout: ""
		},
		{
			path: "/invoices",
			name: "Invoices",
			icon: Invoices,
			component: DashboardPage,
			layout: ""
		}
	]
};

const MySidebar = (props: any) => {
	return <Sidebar {...sidebarProps} />;
};

export default MySidebar;
