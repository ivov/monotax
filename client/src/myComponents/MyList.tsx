import React from "react";
import { List } from "react-admin";
import { makeStyles } from "@material-ui/core";

const useStyles = makeStyles({
	root: {
		width: 1000,
		marginLeft: 300
	}
});

export const MyList = (props: any) => {
	const classes = useStyles();
	return <List {...props} classes={{ root: classes.root }} />;
};
