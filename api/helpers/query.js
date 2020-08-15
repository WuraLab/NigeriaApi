const { Op } = require("sequelize")

let query = (query) => {
    let Query = {};
    const { Type, dateRange, region } = query;
    if (Type != null) Query.Type = Type
    if (dateRange != null) Query.Founded = { [Op.gte]: dateRange }
    if (region != null || region != undefined) Query.Region = region 
    return Query ;
  }
  
  module.exports = query;