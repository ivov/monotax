import express from "express";
import cors from "cors";
import invoiceRouter from "./routes/invoicesRoute";
import earningsRouter from "./routes/earningsRoute";
import expensesRouter from "./routes/expensesRoute";
import savingsRouter from "./routes/savingsRoute";

const app = express();

app.use(cors());

app.use("/api/invoices", invoiceRouter);
app.use("/api/earnings", earningsRouter);
app.use("/api/expenses", expensesRouter);
app.use("/api/savings", savingsRouter);

const port = process.env.PORT || 5000;
app.listen(port, () => console.log(`App listening on port ${port}`));
