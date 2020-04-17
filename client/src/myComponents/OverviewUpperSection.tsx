import React from "react";

import GridContainer from "mdr/components/Grid/GridContainer";

import MyGridItem from "myComponents/MyGridItem";
import Graph from "myComponents/Graph";

interface OverviewUpperSectionProps {
	name: string;
	type: string;
	sizes: Sizes;
	allTimeTotalsForSection: number;
	quarterlyDataForSection: { quarter: string; total: number }[];
}

const OverviewUpperSection = (props: OverviewUpperSectionProps) => {
	const {
		sizes,
		name,
		type,
		allTimeTotalsForSection,
		quarterlyDataForSection
	} = props;

	return (
		<div>
			<GridContainer>
				<MyGridItem
					name={name}
					type={type}
					size={sizes["oneFourth"]}
					total={allTimeTotalsForSection}
					frequency="quarter"
					divisor={quarterlyDataForSection.length}
				/>
				<Graph
					size={sizes["nineTwelfths"]}
					type={type}
					frequency="quarter"
					data={quarterlyDataForSection}
				/>
			</GridContainer>
			{/* <GridContainer>
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
			</GridContainer> */}
		</div>
	);
};

export default OverviewUpperSection;
