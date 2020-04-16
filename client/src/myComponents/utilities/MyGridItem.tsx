import React from "react";
import GridItem from "mdr/components/Grid/GridItem";
import Card from "mdr/components/Card/Card";
import CardHeader from "mdr/components/Card/CardHeader";
import CardIcon from "mdr/components/Card/CardIcon";
import CardFooter from "mdr/components/Card/CardFooter";
import EarningsIcon from "@material-ui/icons/AddCircle";
import ExpensesIcon from "@material-ui/icons/RemoveCircle";
import InvoiceIcon from "@material-ui/icons/Description";
import SavingsIcon from "@material-ui/icons/Star";

import { makeStyles } from "@material-ui/core/styles";
import styles from "mdr/assets/jss/material-dashboard-react/views/dashboardStyle";
import { SvgIconProps } from "@material-ui/core";
import Danger from "mdr/components/Typography/Danger";
import Warning from "mdr/components/Typography/Warning";

const useStyles = makeStyles(styles as any);

const MyGridItem = (props: any) => {
	const { name, type, size, total } = props;

	const getIcon = (name: string) => {
		const icons: { [key: string]: (props: SvgIconProps) => JSX.Element } = {
			earnings: EarningsIcon,
			expenses: ExpensesIcon,
			savings: SavingsIcon,
			invoices: InvoiceIcon
		};
		return icons[name];
	};
	const RelevantIcon = getIcon(name);

	const capitalizeFirstLetter = (name: string) =>
		name.charAt(0).toUpperCase() + name.slice(1);

	const classes = useStyles();
	const getAverage = (str: string) => {
		const avg = parseFloat(str.replace(",", "")) / 12;
		return avg.toLocaleString();
		// 	parseInt(str.replace(/\.\d*/, "").replace(",", "")) / 2
		// .toLocaleString();
	};

	return (
		<GridItem {...size}>
			<Card>
				<CardHeader color="warning" stats icon>
					<CardIcon color={type}>
						<RelevantIcon />
					</CardIcon>
					<p className={classes.cardCategory}>{capitalizeFirstLetter(name)}</p>
					{/* <h3 className={classes.stats}>${total}</h3> */}
					<h3 className="total">$ {total}</h3>
				</CardHeader>
				<CardFooter stats>
					<div className={classes.stats}>
						Average: <b>&nbsp;$&nbsp;{getAverage(total)}&nbsp;</b> per month
					</div>
				</CardFooter>
			</Card>
		</GridItem>
	);
};

export default MyGridItem;
