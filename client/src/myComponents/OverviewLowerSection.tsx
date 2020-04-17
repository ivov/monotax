import React from "react";

import GridContainer from "mdr/components/Grid/GridContainer";

import Graph from "myComponents/Graph";

interface OverviewLowerSectionProps {
	name: string;
	type: string;
	sizes: Sizes;
	yearlyTotalsForSection: { year: number; total: number }[];
	monthlyAveragesForSection: { year: number; average: number }[];
	lastSixMonthsValuesForSection: {
		year: number;
		month: number;
		total: number;
	}[];
}

const OverviewLowerSection = (props: OverviewLowerSectionProps) => {
	const {
		sizes,
		name,
		type,
		yearlyTotalsForSection,
		monthlyAveragesForSection,
		lastSixMonthsValuesForSection
	} = props;

	return (
		<div>
			<GridContainer>
				<Graph
					size={sizes["oneThird"]}
					type={type}
					frequency="year"
					data={yearlyTotalsForSection}
					style="bar"
					footer={`Total ${name} per year`}
				/>
				<Graph
					size={sizes["oneThird"]}
					type={type}
					frequency="year"
					data={monthlyAveragesForSection}
					style="bar"
					footer={`Monthly average ${name} per year`}
				/>
				<Graph
					size={sizes["oneThird"]}
					type={type}
					frequency="month"
					data={lastSixMonthsValuesForSection}
					footer={`Last six months of ${
						name === "invoiced" ? "invoices" : name
					}`}
				/>
			</GridContainer>
		</div>
	);
};

export default OverviewLowerSection;
