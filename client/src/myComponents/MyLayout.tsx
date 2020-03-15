import React from "react";
import { Layout } from "react-admin";
import MySidebar from "./MySidebar";

const MyLayout = (props: any) => (
	<Layout {...props} sidebar={MySidebar} appBar={() => <div />} />
	// `() => <div />` to remove no appBar
);

export default MyLayout;
