import React from "react";
import GridItem from "mdr/components/Grid/GridItem";
import ChartistGraph, { ChartitGraphLineProps } from "react-chartist";
import Card from "mdr/components/Card/Card";
import CardHeader from "mdr/components/Card/CardHeader";
import CardFooter from "mdr/components/Card/CardFooter";
import styles from "mdr/assets/jss/material-dashboard-react/views/dashboardStyle";
import { makeStyles } from "@material-ui/core/styles";
import Chartist from "chartist";

var delays = 80,
	durations = 500;

type chartProps = ChartitGraphLineProps & { animation: { draw: Function } };

const dailySalesChart: chartProps = {
	type: "Line",
	data: {
		labels: ["1", "2", "3", "4", "5", "6"],
		series: [[12, 17, 7, 17, 23, 38]]
	},
	options: {
		lineSmooth: Chartist.Interpolation.cardinal({
			tension: 0
		}),
		low: 0,
		high: 50, // creative tim: we recommend you to set the high as the biggest value + something for a better look
		chartPadding: {
			top: 0,
			right: 0,
			bottom: 0,
			left: 0
		}
	},
	animation: {
		draw: function(data: any) {
			if (data.type === "line" || data.type === "area") {
				data.element.animate({
					d: {
						begin: 600,
						dur: 700,
						from: data.path
							.clone()
							.scale(1, 0)
							.translate(0, data.chartRect.height())
							.stringify(),
						to: data.path.clone().stringify(),
						easing: Chartist.Svg.Easing.easeOutQuint
					}
				});
			} else if (data.type === "point") {
				data.element.animate({
					opacity: {
						begin: (data.index + 1) * delays,
						dur: durations,
						from: 0,
						to: 1,
						easing: "ease"
					}
				});
			}
		}
	}
};

const LineGraph = (props: any) => {
	// const useStyles = makeStyles((theme: Theme) => createStyles({ styles }));
	const useStyles = makeStyles(styles as any);
	const classes = useStyles();
	const { size, type } = props;
	return (
		<GridItem {...size}>
			<Card chart>
				<CardHeader color={type}>
					<ChartistGraph
						className="ct-chart"
						data={dailySalesChart.data}
						type="Line"
						options={dailySalesChart.options}
						listener={dailySalesChart.animation}
					/>
				</CardHeader>
				<CardFooter chart>
					<div className={classes.stats}>Comparison or other info</div>
				</CardFooter>
			</Card>
		</GridItem>
	);
};

export default LineGraph;
