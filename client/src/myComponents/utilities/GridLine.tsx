import React from "react";
import GridContainer from "mdr/components/Grid/GridContainer";
import { MyGridItem } from "./MyGridItem";

// size for single item with three items per line
const sizeThree = { xs: 12, sm: 12, md: 4 };

// size for single item with four items per line
const sizeFour = { xs: 12, sm: 6, md: 3 };

const GridLine = ({ size }: { size: Number }) => {
	const selectedSize = size === 3 ? sizeThree : sizeFour;
	return (
		<GridContainer>
			<MyGridItem name="earnings" type="success" size={selectedSize} />
			<MyGridItem name="expenses" type="danger" size={selectedSize} />
			<MyGridItem name="savings" type="info" size={selectedSize} />
		</GridContainer>
	);
};

export default GridLine;
