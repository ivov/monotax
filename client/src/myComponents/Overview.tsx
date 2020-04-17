import React, { useEffect, useState } from "react";

import MainAreaWrapper from "myComponents/MainAreaWrapper";
import OverviewUpperSection from "myComponents/OverviewUpperSection";
import GridHeader from "myComponents/GridHeader";
import OverviewLowerSection from "myComponents/OverviewLowerSection";
import "styling/chartist.css";

const Overview = () => {
	const sizes: Sizes = {
		oneFourth: { xs: 12, sm: 6, md: 3 },
		oneThird: { xs: 12, sm: 12, md: 4 },
		oneHalf: { xs: 12, sm: 6, md: 6 },
		fullWidth: { xs: 12, sm: 6, md: 12 },
		sevenTwelfths: { xs: 12, sm: 6, md: 7 },
		fiveTwelfths: { xs: 12, sm: 6, md: 5 },
		nineTwelfths: { xs: 12, sm: 6, md: 9 }
	};

	const [quarterlyData, setQuarterlyData] = useState<QuarterlyData>({
		earnings: [{ quarter: "", total: 0 }],
		expenses: [{ quarter: "", total: 0 }],
		invoiced: [{ quarter: "", total: 0 }],
		savings: [{ quarter: "", total: 0 }]
	});

	const [allTimeTotals, setAllTimeTotals] = useState<AllTimeTotals>({
		earnings: 0,
		expenses: 0,
		invoiced: 0,
		savings: 0
	});

	const [yearlyTotals, setYearlyTotals] = useState<YearlyTotals>({
		earnings: [{ year: 0, total: 0 }],
		expenses: [{ year: 0, total: 0 }],
		invoiced: [{ year: 0, total: 0 }],
		savings: [{ year: 0, total: 0 }]
	});

	const [monthlyAverages, setMonthlyAverages] = useState<MonthlyAverages>({
		earnings: [{ year: 0, average: 0 }],
		expenses: [{ year: 0, average: 0 }],
		invoiced: [{ year: 0, average: 0 }],
		savings: [{ year: 0, average: 0 }]
	});

	const [lastSixMonthsValues, setLastSixMonthsValues] = useState<YearData>({
		earnings: [{ year: 0, month: 0, total: 0 }],
		expenses: [{ year: 0, month: 0, total: 0 }],
		invoiced: [{ year: 0, month: 0, total: 0 }],
		savings: [{ year: 0, month: 0, total: 0 }]
	});

	useEffect(() => {
		fetch("/api/overview/")
			.then(res => res.json())
			.then(
				({
					quarterlyData,
					allTimeTotals,
					yearlyTotals,
					monthlyAveragesPerYear,
					lastSixMonthsValues
				}) => {
					setQuarterlyData(quarterlyData);
					setAllTimeTotals(allTimeTotals);
					setYearlyTotals(yearlyTotals);
					setMonthlyAverages(monthlyAveragesPerYear);
					setLastSixMonthsValues(lastSixMonthsValues);
				}
			);
	}, []);

	const sectionTypes: { [key: string]: string } = {
		earnings: "success",
		expenses: "danger",
		savings: "info",
		invoiced: "primary"
	};

	const sections = Object.keys(sectionTypes);

	return (
		<MainAreaWrapper>
			<GridHeader size={sizes["fullWidth"]} title="Global Overview" />
			{sections.map(section => {
				return (
					<OverviewUpperSection
						name={section}
						type={sectionTypes[section]}
						sizes={sizes}
						allTimeTotalsForSection={allTimeTotals[section]}
						quarterlyDataForSection={quarterlyData[section]}
					/>
				);
			})}

			{sections.map(section => {
				return (
					<OverviewLowerSection
						name={section}
						type={sectionTypes[section]}
						sizes={sizes}
						yearlyTotalsForSection={yearlyTotals[section]}
						monthlyAveragesForSection={monthlyAverages[section]}
						lastSixMonthsValuesForSection={lastSixMonthsValues[section]}
					/>
				);
			})}
		</MainAreaWrapper>
	);
};

export default Overview;
