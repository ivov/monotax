declare module "*.svg" {
	const content: string;
	export default content;
}

type GraphData = {
	[key: string]: string[] | number[][];
	labels: string[];
	series: number[][];
};

type QuarterlyData = {
	[key: string]: { quarter: string; total: number }[];
	earnings: { quarter: string; total: number }[];
	expenses: { quarter: string; total: number }[];
	invoiced: { quarter: string; total: number }[];
	savings: { quarter: string; total: number }[];
};

type AllTimeTotals = {
	[key: string]: number;
	earnings: number;
	expenses: number;
	savings: number;
	invoiced: number;
};

type YearlyTotals = {
	[key: string]: { year: number; total: number }[];
	earnings: [{ year: number; total: number }];
	expenses: [{ year: number; total: number }];
	savings: [{ year: number; total: number }];
	invoiced: [{ year: number; total: number }];
};

type MonthlyAverages = {
	// per year
	[key: string]: { year: number; average: number }[];
	earnings: [{ year: number; average: number }];
	expenses: [{ year: number; average: number }];
	savings: [{ year: number; average: number }];
	invoiced: [{ year: number; average: number }];
};

type YearData = {
	[key: string]: { year: number; month: number; total: number }[];
	earnings: { year: number; month: number; total: number }[];
	expenses: { year: number; month: number; total: number }[];
	invoiced: { year: number; month: number; total: number }[];
	savings: { year: number; month: number; total: number }[];
};

type Sizes = {
	[key: string]: { [key: string]: number };
	oneFourth: { xs: number; sm: number; md: number };
	oneThird: { xs: number; sm: number; md: number };
	oneHalf: { xs: number; sm: number; md: number };
	fullWidth: { xs: number; sm: number; md: number };
	sevenTwelfths: { xs: number; sm: number; md: number };
	fiveTwelfths: { xs: number; sm: number; md: number };
	nineTwelfths: { xs: number; sm: number; md: number };
};

type TotalsForYear = {
	[key: string]: number;
	earnings: number;
	expenses: number;
	savings: number;
	invoiced: number;
};
