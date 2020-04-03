import express from "express";
import cors from "cors";
import setAutoRoutes from "./routes/setAutoRoutes";

const app = express();

app.use(cors());
setAutoRoutes(app);

const port = process.env.PORT || 5000;
app.listen(port, () => console.log(`App listening on port ${port}`));
