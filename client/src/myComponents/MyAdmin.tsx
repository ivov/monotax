import React from "react";
import { Admin, Resource } from "react-admin";
import { InvoicesList } from "./InvoicesList";
import { EarningsList } from "./EarningsList";
import { ExpensesList } from "./ExpensesList";
import { SavingsList } from "./SavingsList";
import { AdwordsList } from "./AdwordsList";
import dataProvider from "../dataProvider";
import InvoiceIcon from "@material-ui/icons/Description";
import EarningsIcon from "@material-ui/icons/AttachMoney";
import ExpensesIcon from "@material-ui/icons/AccountBalanceWallet";
import SavingsIcon from "@material-ui/icons/Star";
import AdwordsIcon from "@material-ui/icons/Brightness5";
import MyLayout from "./MyLayout";
import { makeStyles } from "@material-ui/core";

const useStyles = makeStyles({
	root: {
		width: 1000,
		marginLeft: 300,
		backgroundColor: "blue"
	}
});

const MyAdmin = () => {
	const classes = useStyles();
	return (
		<Admin dataProvider={dataProvider} layout={MyLayout}>
			<Resource name="earnings" list={EarningsList} icon={EarningsIcon} />
			<Resource
				name="invoices"
				list={InvoicesList}
				icon={InvoiceIcon}
				classes={{ root: classes.root }}
			/>
			<Resource name="expenses" list={ExpensesList} icon={ExpensesIcon} />
			<Resource name="savings" list={SavingsList} icon={SavingsIcon} />
			<Resource name="adwords" list={AdwordsList} icon={AdwordsIcon} />
		</Admin>
	);
};

export default MyAdmin;
