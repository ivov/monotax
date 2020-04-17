import React from "react";
import GridItem from "mdr/components/Grid/GridItem.js";
import Card from "mdr/components/Card/Card.js";
import CardHeader from "mdr/components/Card/CardHeader.js";
import CardBody from "mdr/components/Card/CardBody.js";
import MyTable from "myComponents/MyTable";

class RegularTable extends MyTable {
	render() {
		const { size, invoicedForYear } = this.props;

		return (
			<GridItem {...size}>
				<Card>
					<CardHeader color="warning">
						<h4 className="invoices-header">Invoices</h4>
						{/* <p className={classes.cardCategoryWhite}>Per month</p> */}
					</CardHeader>
					<CardBody>{this.generateTable(invoicedForYear, "warning")}</CardBody>
				</Card>
			</GridItem>
		);
	}
}

export default RegularTable;
