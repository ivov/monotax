import express from "express";
import cors from "cors";
import setRoutes from "./routes/mainRouteCreator";

const app = express();

app.use(cors());
setRoutes(app);

const port = process.env.PORT || 5000;
app.listen(port, () => console.log(`App listening on port ${port}`));
