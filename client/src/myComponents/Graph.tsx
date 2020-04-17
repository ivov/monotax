import React from "react";
import Chartist from "chartist";
import ChartistGraph from "react-chartist";
import { makeStyles } from "@material-ui/core/styles";
import GridItem from "mdr/components/Grid/GridItem";
import Card from "mdr/components/Card/Card";
import CardHeader from "mdr/components/Card/CardHeader";
import CardFooter from "mdr/components/Card/CardFooter";
import styles from "mdr/assets/jss/material-dashboard-react/views/dashboardStyle";

const useStyles = makeStyles(styles as any);

// Format defaults to line graph, unless `format: "bar"`
const Graph = (props: any) => {
	const { size, type, frequency, data, format, footer } = props;
	// @ts-ignore: empty initialization
	let graphData: GraphData = {};
	const classes = useStyles();

	graphData = convertToGraphData(data, frequency);

	const lineGraphOptions: any = {
		lineSmooth: Chartist.Interpolation.cardinal({
			tension: 0
		}),
		low: calculateBottomOfGraph(graphData["series"]),
		high: calculateTopOfGraph(graphData["series"]),
		showArea: true,
		chartPadding: {
			top: 0,
			right: 0,
			bottom: 0,
			left: 0
		}
	};

	const barGraphOptions: any = {
		axisX: {
			showGrid: false
		},
		low: 0,
		high: calculateTopOfGraph(graphData["series"]),
		chartPadding: {
			top: 0,
			right: 5,
			bottom: 0,
			left: 0
		}
	};

	const lineGraphAnimation: any = {
		draw: (data: any) => {
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
						begin: (data.index + 1) * 80,
						dur: 500,
						from: 0,
						to: 1,
						easing: "ease"
					}
				});
			}
		}
	};

	const barGraphAnimation: any = {
		draw: function(data: any) {
			if (data.type === "bar") {
				data.element.animate({
					opacity: {
						begin: (data.index + 1) * 80,
						dur: 500,
						from: 0,
						to: 1,
						easing: "ease"
					}
				});
			}
		}
	};

	return (
		<GridItem {...size}>
			<Card chart>
				<CardHeader color={type}>
					<ChartistGraph
						className="ct-chart"
						data={graphData}
						type={format === "bar" ? "Bar" : "Line"}
						options={format === "bar" ? barGraphOptions : lineGraphOptions}
						listener={format === "bar" ? barGraphAnimation : lineGraphAnimation}
					/>
				</CardHeader>
				<CardFooter chart>
					{/* <div className={classes.stats}>Comparison or other info</div> */}
					{footer ? <div className={classes.stats}>{footer}</div> : null}
				</CardFooter>
			</Card>
		</GridItem>
	);
};

const convertToGraphData = (
	data: any,
	frequency: "month" | "quarter" | "year"
): GraphData => {
	let labels: string[] = [];
	let series: number[][] = [[]];
	for (let obj of data) {
		labels.push(obj[frequency].toString());
		series[0].push(obj["total"]);
	}

	return {
		labels,
		series
	};
};

const calculateTopOfGraph = ([series]: any) => {
	const MARGIN_ABOVE_HIGHEST_VALUE = 250;
	return Math.max(...series) + MARGIN_ABOVE_HIGHEST_VALUE;
};

const calculateBottomOfGraph = ([series]: any) => {
	const MARGIN_BELOW_LOWEST_VALUE = 250;
	return Math.max(...series) + MARGIN_BELOW_LOWEST_VALUE;
};

export default Graph;
