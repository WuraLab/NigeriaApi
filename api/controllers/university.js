/* eslint-disable camelcase */
const db = require("../models/index");
const { Op } = require("sequelize")
const { university_data } = db;
const query = require("../helpers/query");

/**
 * University API Module
 * @module university
 */

/**
 * This function queries the database for all universities data
 * @param {object} req HTTP request argument to the middleware function.
 * @param {object} res HTTP response argument to the middleware function.
 * @param {object} return 401 code if user is not authenticated
 * @param {object} return 200 success code and json file contain all polytechnic data
 * @param {object} return 500 code if there is a server error
 */


exports.allUniversity = async (req, res) => {
  const { limit } = req.query;
  if (!req.user || req.user === undefined) {
    return res.status(401).json({ response: "you dont have access to this endpoint" });
  }

  const dbQuery = query(req.query);

  try {
    let response;
    // check for all the query parameter here and run each one by one
    if (req.query) {
      response = await university_data.findAll({
        limit,
        attributes: {
          exclude: ["createdAt", "updatedAt"]
        },
        where: dbQuery
      });
    } else {
      response = await university_data.findAll({ limit, attributes: { exclude: ["createdAt", "updatedAt"] } });
    }
    return res.status(200).json({ length: response.length, response: response });
  } catch (error) {
    return res.status(500).json({ response: `internal server error ${error}` })

  }

};

/**
 * This function queries the database for one university data
 * @param {object} req HTTP request argument to the middleware function.
 * @param {object} res HTTP response argument to the middleware function.
 * @param {object} return 401 code if user is not authenticated
 * @param {object} return 404 code if the returned data is less than one
 * @param {object} return 200 success code and json file contain all polytechnic data
 * @param {object} return 500 code if there is a server error
 */


exports.oneUniversity = async (req, res) => {
  const name = req.params.name;
  const capitalize = name.toUpperCase();
  console.log(capitalize);
  try {

    if (!req.user || req.user === undefined) {
      return res.status(401).json({ response: "you dont have access to this endpoint" });
    }

    const response = await university_data.findOne({
      attributes: { exclude: ["createdAt", "updatedAt"] },
      where: {
        Abbrevation: capitalize
      }
    })
    if (response == null || response.length < 1) {
      return res.status(404).json({ response: "data not found, probably we dont have the requested university data" })
    }
    return res.status(200).json({ response });
  } catch (error) {
    return res.status(500).json({ response: `${error} occured` });
  }


}
/**
 * This function updates the university data in the database
 * @param {object} req HTTP request argument to the middleware function.
 * @param {object} res HTTP response argument to the middleware function.
 * @param {string} id takes the id of the university to be updated
 * @param {string} response find a university with the id of the university to be updated and return
 * corresponding status code
 * @param {object} update takes in object from the body of the request and update the university data.
 * @param {object} return 401 code if user is not authenticated
 * @param {object} return 404 code if the returned data is less than one
 * @param {object} return 200 success code when a university is updated successfully
 * @param {object} return 500 code if there is a server error
 */
exports.updateUniversity = async (req, res) => {
  const id = req.params.id;
  if (!req.user || req.user === undefined) {
    return res.status(401).json({ response: "you dont have access to this endpoint" });
  }
  try {
    const response = await university_data.findOne({
      attributes: { exclude: ["createdAt", "updatedAt"] },
      where: {
        id: id
      }
    });
    if (!response || response === null) return res.status(404).json({ response: "We couldnt find the university, it has been deleted or moved" })
    const update = await university_data.update(
      {
        Name: req.body.Name,
        State: req.body.State,
        Location: req.body.Location,
        Type: req.body.Type,
        Founded: req.body.Founded,
        URl: req.body.URl,
        Social_media_handle_URL: req.body.Social_media_handle_URL,
        Motto: req.body.Motto,
        Abbrevation: req.body.Abbrevation,
        Academic_Calendar: req.body.Academic_Calendar,
        Academic_Staff: req.body.Academic_Staff,
        Accreditations: req.body.Accreditations,
        Admission_Rate: req.body.Admission_Rate,
        Campus_Setting: req.body.Campus_Setting,
        Colours: req.body.Colours,
        Distance_Learning: req.body.Distance_Learning,
        Entity_Type: req.body.Entity_Type,
        Faculty_or_Colleges: req.body.Faculty_or_Colleges,
        Financial_Aids: req.body.Financial_Aids,
        Gender: req.body.Gender,
        Housing: req.body.Housing,
        International_Students: req.body.International_Students,
        Library: req.body.Library,
        Number_of_Students: req.body.Number_of_Students,
        Number_of_Faculties: req.body.Number_of_Faculties,
        Programme_Offered: req.body.Programme_Offered,
        Region: req.body.Region,
        Selection_Type: req.body.Selection_Type,
        Sport_Facilities: req.body.Sport_Facilities,
        Study_Abroad: req.body.Study_Abroad,
        University_Overview: req.body.University_Overview,
        Wikipedia_Article: req.body.Wikipedia_Article,
        Memberships_and_Affiliations: req.body.Members_and_Affiliations,
        Religious_Affiliation: req.body.Religious_Affiliation

      },
      {
        where: { id: id },
        returning: true
      },
    )
    console.log(update)
    return res.status(200).json({
      response: "data updated successfully",
      update
    })
  } catch (error) {
    return res.status(500).json({ response: `${error} occured` });
  }
}

/**
 * This function enable a new university data to be posted into the database
 * @param {object} req HTTP request argument to the middleware function.
 * @param {object} res HTTP response argument to the middleware function.
 * @param {object} payload takes the new university data from the body of the request
 * @param {object} createUni persist the payload data to create a new university data into database
 * @param {object} return 401 code if user is not authenticated
 * @param {object} return 403 code if the access to the requested resource is forbidden
 * @param {object} return 201 success code and json file when a a new university data is saved successfully
 * @param {object} return 500 code if there is a server error
 */

exports.postUniversity = async (req, res) => {
  if (!req.user || req.user === undefined) {
    return res.status(401).json({ response: "you dont have access to this endpoint" });
  }
  try {
    const payload = {
      Name: req.body.Name,
      State: req.body.State,
      Location: req.body.Location,
      Type: req.body.Type,
      Founded: req.body.Founded,
      URl: req.body.URl,
      Social_media_handle_URL: req.body.Social_media_handle_URL,
      Motto: req.body.Motto,
      Abbrevation: req.body.Abbrevation,
      Academic_Calendar: req.body.Academic_Calendar,
      Academic_Staff: req.body.Academic_Staff,
      Accreditations: req.body.Accreditations,
      Admission_Rate: req.body.Admission_Rate,
      Campus_Setting: req.body.Campus_Setting,
      Colours: req.body.Colours,
      Distance_Learning: req.body.Distance_Learning,
      Entity_Type: req.body.Entity_Type,
      Faculty_or_Colleges: req.body.Faculty_or_Colleges,
      Financial_Aids: req.body.Financial_Aids,
      Gender: req.body.Gender,
      Housing: req.body.Housing,
      International_Students: req.body.International_Students,
      Library: req.body.Library,
      Number_of_Students: req.body.Number_of_Students,
      Number_of_Faculties: req.body.Number_of_Faculties,
      Programme_Offered: req.body.Programme_Offered,
      Region: req.body.Region,
      Selection_Type: req.body.Selection_Type,
      Sport_Facilities: req.body.Sport_Facilities,
      Study_Abroad: req.body.Study_Abroad,
      University_Overview: req.body.University_Overview,
      Wikipedia_Article: req.body.Wikipedia_Article,
      Memberships_and_Affiliations: req.body.Memberships_and_Affiliations,
      Religious_Affiliation: req.body.Religious_Affiliation
    };

    const createUni = await university_data.create(payload);
    if (createUni) {
      return res.status(201).json({ response: "New university Data saved", createUni });
    }
    return res.status(403).json({ response: "Unable to save university data, please try again" });

  } catch (error) {
    return res.status(500).json({ response: `${error} occured` })
  }
}

/**
 * This function enable a university data to be deleted from the database
 * @param {object} req HTTP request argument to the middleware function.
 * @param {object} res HTTP response argument to the middleware function.
 * @param {string} id takes the id of the university to be deleted
 * @param {object} deleteDoc persist the data to be deleted from the database
 * @param {object} return 401 code if user is not authenticated
 * @param {object} return 200 success code when a university is successfully delete
 * @param {object} return 204 if there is no data with the id specified
 * @param {object} return 500 code if there is a server error
 */

exports.deleteUniversity = async (req, res) => {
  const id = req.params.id;
  if (!req.user || req.user === undefined) {
    return res.status(401).json({ response: "you dont have access to this endpoint" });
  }
  try {
    const deleteDoc = await university_data.destroy({ where: { id: id } });
    if (deleteDoc) return res.status(200).json({ response: "university deleted", count: deleteDoc });
    return res.status(204).json({ response: "It looks like this data no longer exist or has been moved" });

  } catch (error) {
    return res.status(500).json({ response: `${error} occured` })
  }
}

/**
 * This function enable all universities data to be queried and retrieved from the database
 * @param {object} req HTTP request argument to the middleware function.
 * @param {object} res HTTP response argument to the middleware function.
 * @param {object} response finds and return all universities data from the database
 * @param {object} return 401 code if user is not authenticated
 * @param {object} return 200 success code when universities data is found

 * @param {object} return 500 code if there is a server error
 */

exports.getAllUniversity = async (req, res) => {
  const { limit } = req.query;
  if (!req.user || req.user === undefined) {
    return res.status(401).json({ response: "you dont have access to this endpoint" });
  }

  const dbQuery = query(req.query);

  try {
    let response;
    // check for all the query parameter here and run each one by one
    if (req.query) {
      response = await university_data.findAll({
        limit,
        attributes: {
          exclude: ["createdAt", "updatedAt"]
        },
        where: dbQuery
      });
    } else {
      response = await university_data.findAll({ limit, attributes: { exclude: ["createdAt", "updatedAt"] } });
    }
    return res.status(200).json({ length: response.length, response: response });
  } catch (error) {
    return res.status(500).json({ response: `internal server error ${error}` })

  }

};

/**
 * This function enable on university data to be queried and retrieved from the database
 * @param {object} req HTTP request argument to the middleware function.
 * @param {object} res HTTP response argument to the middleware function.
 * @param {string} id take the id of the university data you want to retrieve.cd
 * @param {object} response finds and return all universities data from the database
 * @param {object} return 404 code if no university data is found
 * @param {object} return 200 success code when a university data is found
 * @param {object} return 500 code if there is a server error
 */

exports.getOneUni = async (req, res) => {
  const id  = req.params.id;
  try {

    if (!req.user || req.user === undefined) {
      return res.status(401).json({ response: "you dont have access to this endpoint" });
    }

    const response = await university_data.findOne({
      attributes: { exclude: ["createdAt", "updatedAt"] },
      where: {
        id: id
      }
    })
    console.log(response);
    if (response == null || response.length < 1) {
      return res.status(404).json({ response: "data not found, probably we dont have the requested university data" })
    }
    return res.status(200).json({ response });
  } catch (error) {
    return res.status(500).json({ response: `${error} occured` });
  }
}