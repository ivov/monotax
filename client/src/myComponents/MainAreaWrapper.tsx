import React, { CSSProperties } from "react";

const wrapperStyle: CSSProperties = {
	width: 1000,
	marginLeft: 300,
	marginTop: -40 // offsets `RaLayout-appFrame`
};

// Wrapper for the main area, to the right of the sidebar.
const MainAreaWrapper = (props: any) => {
	return <div {...props} style={wrapperStyle} />;
};

export default MainAreaWrapper;
