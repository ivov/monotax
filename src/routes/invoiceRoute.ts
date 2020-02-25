import express from "express";
import DatabaseService from "../DatabaseService";

const router = express.Router();

router.get("/", (request, response) => {
  const { offset, limit } = request.query;
  const [field, order] = JSON.parse(request.query.sort);
  const results = DatabaseService.getAllInvoices(offset, limit, field, order);
  return response
    .status(200)
    .set("Content-Range", "invoices 0-15/707")
    .set("Access-Control-Expose-Headers", "Content-Range")
    .json(results);
});

export default router;
