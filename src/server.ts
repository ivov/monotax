import express from "express";
import cors from "cors";
import invoiceRouter from "./routes/invoiceRoute";

const app = express();

app.use(cors());

app.use("/api/invoices", invoiceRouter);

const port = process.env.PORT || 5000;
app.listen(port, () => console.log(`App listening on port ${port}`));
