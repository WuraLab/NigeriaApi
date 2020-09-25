const db = require("../models/index");
const { polytechnic_data } = db;
const query = require("../helpers/query");


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