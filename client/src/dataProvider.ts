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

const apiUrl = "http://localhost:5000/api";
const httpClient = fetchUtils.fetchJson;

export default {
	getList: (resource: string, params: GetListParams) => {
		const { page, perPage } = params.pagination; // from react-admin
		const { field, order } = params.sort; // from react-admin

		const query = {
			filter: JSON.stringify(params.filter),
			offset: JSON.stringify((page - 1) * perPage),
			limit: JSON.stringify(perPage),
			sort: JSON.stringify([field, order])
		};
		const url = `${apiUrl}/${resource}?${stringify(query)}`;

		return httpClient(url).then(({ json, headers }: any) => {
			return {
				data: json,
				total: parseInt(
					headers
						.get("Content-Range")
						.split("/")
						.pop(),
					10
				)
			};
		});
	}

	// getOne: (resource: string, params: GetOneParams) => Promise,
	// getMany: (resource: string, params: GetManyParams) => Promise,
	// getManyReference: (resource: string, params: GetManyReferenceParams) =>
	// 	Promise,
	// create: (resource: string, params: CreateParams) => Promise,
	// update: (resource: string, params: UpdateParams) => Promise,
	// updateMany: (resource: string, params: UpdateManyParams) => Promise,
	// delete: (resource: string, params: DeleteParams) => Promise,
	// deleteMany: (resource: string, params: DeleteManyParams) => Promise
};
