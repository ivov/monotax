import express from "express";
import DatabaseService from "../DatabaseService";
import { VIEWS } from "../utils";

const router = express.Router();

router.get("/", (request, response) => {
  const { offset, limit } = request.query;
  const [field, order] = JSON.parse(request.query.sort);
  const results = DatabaseService.getAllRecords(
    VIEWS["ADWORDS"],
    offset,
    limit,
    field,
    order
  );
  const total = DatabaseService.getCount("adwords_amounts_in_ars_and_usd");
  return response
    .status(200)
    .set("Content-Range", "adwords 0-15/" + total)
    .set("Access-Control-Expose-Headers", "Content-Range")
    .json(results);
});

export default router;
