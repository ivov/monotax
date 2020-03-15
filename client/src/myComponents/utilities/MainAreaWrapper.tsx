import React, { CSSProperties } from "react";

const wrapperStyle: CSSProperties = {
	width: 1000,
	marginLeft: 300
};

// Wrapper for the main area, to the right of the sidebar.
const MainAreaWrapper = (props: any) => {
	return <div {...props} style={wrapperStyle} />;
};

export default MainAreaWrapper;
