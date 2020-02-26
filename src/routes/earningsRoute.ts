import express from "express";
import DatabaseService from "../DatabaseService";

const router = express.Router();

router.get("/", (request, response) => {
  const { offset, limit } = request.query;
  const [field, order] = JSON.parse(request.query.sort);
  const results = DatabaseService.getAllEarnings(offset, limit, field, order);
  const total = DatabaseService.getCount("earnings");
  return response
    .status(200)
    .set("Content-Range", "earnings 0-15/" + total)
    .set("Access-Control-Expose-Headers", "Content-Range")
    .json(results);
});

export default router;
