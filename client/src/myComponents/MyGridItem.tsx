import React from "react";
import GridItem from "components/Grid/GridItem";
import Card from "components/Card/Card";
import CardHeader from "components/Card/CardHeader";
import CardIcon from "components/Card/CardIcon";
import CardFooter from "components/Card/CardFooter";
import Danger from "components/Typography/Danger";
import Warning from "components/Typography/Warning";
import EarningsIcon from "@material-ui/icons/AddCircle";
import ExpensesIcon from "@material-ui/icons/RemoveCircle";
import InvoiceIcon from "@material-ui/icons/Description";
import SavingsIcon from "@material-ui/icons/Star";
import AdwordsIcon from "@material-ui/icons/Language";

import { makeStyles } from "@material-ui/core/styles";
import styles from "assets/jss/material-dashboard-react/views/dashboardStyle.js";
import { SvgIconProps } from "@material-ui/core";

const useStyles = makeStyles(styles as any);

export const MyGridItem = (props: any) => {
	const { name, type, size } = props;

	const getIcon = (name: string) => {
		const icons: { [key: string]: (props: SvgIconProps) => JSX.Element } = {
			earnings: EarningsIcon,
			expenses: ExpensesIcon,
			savings: SavingsIcon,
			invoices: InvoiceIcon,
			adwords: AdwordsIcon
		};
		return icons[name];
	};

	const RelevantIcon = getIcon(name);

	const capitalizeFirstLetter = (name: string) =>
		name.charAt(0).toUpperCase() + name.slice(1);

	const classes = useStyles();
	return (
		<GridItem {...size}>
			<Card>
				<CardHeader color="warning" stats icon>
					<CardIcon color={type}>
						<RelevantIcon />
					</CardIcon>
					<p className={classes.cardCategory}>{capitalizeFirstLetter(name)}</p>
					<h3 className={classes.stats}>Money amount goes here</h3>
				</CardHeader>
				<CardFooter stats>
					<div className={classes.stats}>
						<Danger>
							<Warning />
						</Danger>
						<a onClick={e => e.preventDefault()}>
							Comparison to previous month goes here
						</a>
					</div>
				</CardFooter>
			</Card>
		</GridItem>
	);
};
