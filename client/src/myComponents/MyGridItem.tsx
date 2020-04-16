import React from "react";

import EarningsIcon from "@material-ui/icons/AddCircle";
import ExpensesIcon from "@material-ui/icons/RemoveCircle";
import InvoiceIcon from "@material-ui/icons/Description";
import SavingsIcon from "@material-ui/icons/Star";
import { SvgIconProps } from "@material-ui/core";
import { makeStyles } from "@material-ui/core/styles";

import GridItem from "mdr/components/Grid/GridItem";
import Card from "mdr/components/Card/Card";
import CardHeader from "mdr/components/Card/CardHeader";
import CardIcon from "mdr/components/Card/CardIcon";
import CardFooter from "mdr/components/Card/CardFooter";
import styles from "mdr/assets/jss/material-dashboard-react/views/dashboardStyle";

const useStyles = makeStyles(styles as any);

const MyGridItem = (props: any) => {
	const { name, type, size, total } = props;
	const classes = useStyles();

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

	const decimalFormat = { maximumFractionDigits: 0 };

	const getAverage = (total: number) =>
		(total / 12).toLocaleString(undefined, decimalFormat);

	const formatTotal = (total: number) =>
		total.toLocaleString(undefined, decimalFormat);

	return (
		<GridItem {...size}>
			<Card>
				<CardHeader color="warning" stats icon>
					<CardIcon color={type}>
						<RelevantIcon />
					</CardIcon>
					<p className={classes.cardCategory}>{capitalizeFirstLetter(name)}</p>
					{/* <h3 className={classes.stats}>${total}</h3> */}
					<h3 className="total">$ {formatTotal(total)}</h3>
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
