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
		</div>
	);
};

export default OverviewUpperSection;
