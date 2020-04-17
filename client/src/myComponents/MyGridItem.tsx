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
	const { name, type, size, total, frequency, divisor } = props;

	const classes = useStyles();

	const getIcon = (name: string) => {
		const icons: { [key: string]: (props: SvgIconProps) => JSX.Element } = {
			earnings: EarningsIcon,
			expenses: ExpensesIcon,
			savings: SavingsIcon,
			invoiced: InvoiceIcon
		};
		return icons[name];
	};
	const RelevantIcon = getIcon(name);

	const capitalizeFirstLetter = (name: string) =>
		name.charAt(0).toUpperCase() + name.slice(1);

	const decimalFormat = { maximumFractionDigits: 0 };

	const getAverage = (total: number, divisor: number) => {
		if (frequency === "month") {
			divisor = 12;
		}
		return (total / divisor).toLocaleString(undefined, decimalFormat);
	};

	const formatTotal = (total: number) =>
		total.toLocaleString(undefined, decimalFormat);

	const averagesLabel = frequency === "quarter" ? "Averages:" : "Average:";

	return (
		<GridItem {...size}>
			<Card>
				<CardHeader color="warning" stats icon>
					<CardIcon color={type}>
						<RelevantIcon />
					</CardIcon>
					<p className={classes.cardCategory}>{capitalizeFirstLetter(name)}</p>
					<h3 className="total">$ {formatTotal(total)}</h3>
				</CardHeader>
				<CardFooter stats>
					<div className={classes.stats}>
						<div>
							{averagesLabel}
							<br />
							<b>$ {getAverage(total, divisor)}&nbsp;</b>per {frequency}
							{frequency === "quarter" ? (
								<div>
									<b>$ {getAverage(total, divisor * 3)}</b> per month
								</div>
							) : null}
						</div>
					</div>
				</CardFooter>
			</Card>
		</GridItem>
	);
};

export default MyGridItem;
