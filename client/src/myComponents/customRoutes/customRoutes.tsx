import React from "react";
import { Route } from "react-router-dom";
import Overview from "./Overview";

const customRoutes = [
	<Route exact path="/overview-for-2019" component={() => Overview("2019")} />,
	<Route exact path="/overview-for-2018" component={() => Overview("2018")} />,
	<Route exact path="/overview-for-2017" component={() => Overview("2017")} />
];

export default customRoutes;
