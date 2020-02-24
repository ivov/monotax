import express from "express";
import DatabaseService from "../DatabaseService";

const router = express.Router();

router.get("/", (request, response) => {
  const results = DatabaseService.readAllInvoices();
  response.status(200).json(results);
});

export default router;
