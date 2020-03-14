import React, { CSSProperties } from "react";

const wrapperStyle: CSSProperties = {
	width: 1000,
	marginLeft: 300
};

export const MyWrapper = (props: any) => {
	return <div {...props} style={wrapperStyle} />;
};
