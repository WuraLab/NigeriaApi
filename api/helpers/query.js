const { Op } = require("sequelize")

let query = (query) => {
  try {
    let Query = {};
    const { Type, dateRange, region } = query;
    if (Type != null) Query.Type = Type
    if (dateRange != null) Query.Founded = { [Op.gte]: dateRange }
    if (region != null || region != undefined) Query.Region = region
    return Query;
  } catch (error) {
    return res.status(500).json({ response: `error ${error} from the query middleware` })
  }
 
}

module.exports = query;
