import express from "express";
import DatabaseService from "../DatabaseService";

const router = express.Router();

router.get("/", (request, response) => {
  const results = DatabaseService.getAllInvoices();
  return response
    .status(200)
    .set("Access-Control-Expose-Headers", "Content-Range")
    .set("Content-Range", "invoices 0-24/707")
    .json(results);
});

export default router;
