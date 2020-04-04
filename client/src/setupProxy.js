// Proxy for api requests:
// If a request comes from frontend at "http://localhost:3000/" and contains string "/api"
// then this proxy redirects that request to backend at "http://localhost:5000/"
// https://create-react-app.dev/docs/proxying-api-requests-in-development/

const { createProxyMiddleware } = require("http-proxy-middleware");

module.exports = function(app) {
	app.use(
		"/api",
		createProxyMiddleware({
			target: "http://localhost:5000",
			changeOrigin: true
		})
	);
};
