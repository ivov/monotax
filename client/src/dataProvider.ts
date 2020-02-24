import {
  GetListParams,
  GetOneParams,
  GetManyParams,
  GetManyReferenceParams,
  CreateParams,
  UpdateParams,
  UpdateManyParams,
  DeleteParams,
  DeleteManyParams
} from "ra-core";

import { fetchUtils } from "react-admin";
import { stringify } from "query-string";

// https://marmelab.com/react-admin/DataProviders.html

const apiUrl = "http://localhost:5000/api";
const httpClient = fetchUtils.fetchJson;

export default {
  getList: (resource: string, params: GetListParams) => {
    const { page, perPage } = params.pagination;
    const { field, order } = params.sort;
    const query = {
      sort: JSON.stringify([field, order]),
      range: JSON.stringify([(page - 1) * perPage, page * perPage - 1]),
      filter: JSON.stringify(params.filter)
    };
    const url = `${apiUrl}/${resource}?${stringify(query)}`;
    fetch(url).then((obj: any) => console.log(obj));

    return httpClient(url).then((response: any) => {
      return {
        data: response.json,
        total: parseInt(
          response.headers // TODO: response.headers is empty!
            .get("Content-Range")
            .split("/")
            .pop(),
          10
        )
      };
    });
  },

  getOne: (resource: string, params: GetOneParams) => Promise,
  getMany: (resource: string, params: GetManyParams) => Promise,
  getManyReference: (resource: string, params: GetManyReferenceParams) =>
    Promise,
  create: (resource: string, params: CreateParams) => Promise,
  update: (resource: string, params: UpdateParams) => Promise,
  updateMany: (resource: string, params: UpdateManyParams) => Promise,
  delete: (resource: string, params: DeleteParams) => Promise,
  deleteMany: (resource: string, params: DeleteManyParams) => Promise
};
