import React from "react";

import GridItem from "mdr/components/Grid/GridItem";
import Card from "mdr/components/Card/Card";
import CardHeader from "mdr/components/Card/CardHeader";
import CardFooter from "mdr/components/Card/CardFooter";

const GridHeader = (props: any) => {
	const { size, title } = props;
	return (
		<GridItem {...size}>
			<Card>
				<CardHeader color="warning" stats icon>
					{/* <CardIcon color={type}>
						<RelevantIcon />
					</CardIcon> */}
					<p className="grid-header-title">{title}</p>
				</CardHeader>
				<CardFooter stats>
					{/* <div className={classes.stats}>
						<Danger>
							<Warning />
						</Danger>
						Comparison to previous month goes here
					</div> */}
				</CardFooter>
			</Card>
		</GridItem>
	);
};

export default GridHeader;
