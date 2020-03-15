import React from "react";
import { Route } from "react-router-dom";
import Overview from "./Overview";

const customRoutes = [<Route exact path="/overview" component={Overview} />];

export default customRoutes;
