const db = require("../models/index");
const { polytechnic_data } = db;
const query = require("../helpers/query");

/**
 * Polytechnic API Module
 * @module polytechnic
 */

/**
 * This function queries the database for all polytechnic data
 * @param {object} req HTTP request argument to the middleware function.
 * @param {object} res HTTP response argument to the middleware function.
 * @param {object} return 401 code if user is not authenticated
 * @param {object} return 200 success code and json file contain all polytechnic data
 * @param {object} return 500 code if there is a server error
 */
exports.allPolytechnic = async (req, res) => {
    const { limit } = req.query;
    if (!req.user || req.user === undefined) {
        return res.status(401).json({ response: "You dont have access to this endpoint" });
    }

    const dbQuery = query(req.query);

    try {
        let response;
        if (req.query) {
            response = await polytechnic_data.findAll({
                limit,
                attributes: {
                    exclude: ["createdAt", "updatedAt"]
                },
                where: dbQuery
            });
        } else {
            response = await polytechnic_data.findAll({ limit, attributes: { exclude: ["createdAt", "updatedAt"] } });
        }
        return res.status(200).json({ length: response.length, response });
    } catch (error) {
        return res.status(500).json({ response: `internal server error ${error}` });
    }
};

/**
 * This function queries the database for one polytechnic data
 * @param {object} req HTTP request argument to the middleware function.
 * @param {object} res HTTP response argument to the middleware function.
 * @param {object} return 401 code if user is not authenticated
 * @param {object} return 404 code if the returned data is less than one
 * @param {object} return 200 success code and json file contain all polytechnic data
 * @param {object} return 500 code if there is a server error
 */

exports.onePolytechnic = async (req, res) => {
    const name = req.params.name;
    try {
        if (!req.user || req.user === undefined) return res.status(401).json({ response: "you dont have access to this endpoint" });
        const response = await polytechnic_data.findOne({
            attributes: { exclude: ["createdAt", "updatedAt"] },
            where: {
                Name: name
            }
        })
        if (response === null || response.length < 1) {
            return res.status(404).json({ response: "data not found, probably we dont have the requested university data" })
        }
        return res.status(200).json({ response });
    } catch (error) {
        return res.status(500).json({ response: `${error} occured` })

    }
}