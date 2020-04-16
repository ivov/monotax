declare module "*.svg" {
	const content: string;
	export default content;
}

type LineGraphData = {
	[key: string]: string[] | number[][];
	labels: string[];
	series: number[][];
};

type OverviewData = {
	[key: string]: { quarter: string; total: number }[];
	earnings: { quarter: string; total: number }[];
	expenses: { quarter: string; total: number }[];
	invoiced: { quarter: string; total: number }[];
	savings: { quarter: string; total: number }[];
};
