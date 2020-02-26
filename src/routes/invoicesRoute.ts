import express from "express";
import DatabaseService from "../DatabaseService";
import { VIEWS } from "../utils";

const router = express.Router();

router.get("/", (request, response) => {
  const { offset, limit } = request.query;
  const [field, order] = JSON.parse(request.query.sort);
  const results = DatabaseService.getAllRecords(
    VIEWS["INVOICES"],
    offset,
    limit,
    field,
    order
  );
  return response
    .status(200)
    .set("Content-Range", "invoices 0-15/707")
    .set("Access-Control-Expose-Headers", "Content-Range")
    .json(results);
});

export default router;
