import React from "react";

const ExpandingInfoPanel = ({ id, record, resource }: any) => (
	<div
		dangerouslySetInnerHTML={{
			__html:
				record.client_street +
				" " +
				record.client_province +
				" | " +
				record.client_vat_status
		}}
	/>
);

export default ExpandingInfoPanel;
