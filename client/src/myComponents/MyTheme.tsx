import { createMuiTheme } from "@material-ui/core/styles";

const MyTheme = createMuiTheme({
	typography: {
		fontFamily: [
			"-apple-system",
			"BlinkMacSystemFont",
			'"Segoe UI"',
			"Arial",
			"sans-serif"
		].join(",")
	},
	overrides: {
		MuiTable: {
			root: {
				marginTop: "-40px"
			}
		},
		MuiTableCell: {
			root: {
				textAlign: "center"
			},
			head: {
				color: "white",
				textAlign: "center"
			},
			body: {
				fontWeight: "bold",
				color: "dimgrey",
				height: "25px"
			}
		}
	}
});

export default MyTheme;
