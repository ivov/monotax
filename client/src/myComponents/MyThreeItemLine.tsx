import React from "react";

import GridContainer from "components/Grid/GridContainer";
import { MyGridItem } from "./MyGridItem";

// size for single item with four items per line
const sizeFour = {
	xs: 12,
	sm: 6,
	md: 3
};

// size for single item with three items per line
const sizeThree = {
	xs: 12,
	sm: 12,
	md: 4
};

export const MyThreeItemLine = (props: any) => {
	return (
		<GridContainer>
			<MyGridItem name="earnings" type="success" size={sizeThree} />
			<MyGridItem name="expenses" type="danger" size={sizeThree} />
			<MyGridItem name="savings" type="info" size={sizeThree} />
			{/* <MyGridItem item="invoices" type="warning" /> */}
		</GridContainer>
	);
};
