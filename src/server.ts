import express from "express";
import cors from "cors";
import setAutomaticRoutes from "./routes/setAutomaticRoutes";
import setCustomRoutes from "./routes/setCustomRoutes";

const app = express();

app.use(cors());
setAutomaticRoutes(app);
setCustomRoutes(app);

const port = process.env.PORT || 5000;
app.listen(port, () => console.log(`App listening on port ${port}`));
