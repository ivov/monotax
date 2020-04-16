import React from "react";
import Chartist from "chartist";
import ChartistGraph from "react-chartist";

import GridItem from "mdr/components/Grid/GridItem";
import Card from "mdr/components/Card/Card";
import CardHeader from "mdr/components/Card/CardHeader";
import CardFooter from "mdr/components/Card/CardFooter";

const LineGraph = (props: any) => {
	const { size, type, frequency, data } = props;
	// @ts-ignore: empty initialization
	let lineGraphData: LineGraphData = {};

	lineGraphData = convertDataToLineGraphData(data, frequency);

	const graphOptions: any = {
		lineSmooth: Chartist.Interpolation.cardinal({
			tension: 0
		}),
		low: calculateBottomOfGraph(lineGraphData["series"]),
		high: calculateTopOfGraph(lineGraphData["series"]),
		chartPadding: {
			top: 0,
			right: 0,
			bottom: 0,
			left: 0
		}
	};

	const graphAnimation: any = {
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

	return (
		<GridItem {...size}>
			<Card chart>
				<CardHeader color={type}>
					<ChartistGraph
						className="ct-chart"
						data={lineGraphData}
						type="Line"
						options={graphOptions}
						listener={graphAnimation}
					/>
				</CardHeader>
				<CardFooter chart>
					{/* <div className={classes.stats}>Comparison or other info</div> */}
				</CardFooter>
			</Card>
		</GridItem>
	);
};

const convertDataToLineGraphData = (
	data: any,
	frequency: "month" | "quarter"
): LineGraphData => {
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

export default LineGraph;
