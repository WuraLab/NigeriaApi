/* eslint-disable camelcase */
const db = require("../models/index");
const { Op } = require("sequelize")
const { university_data } = db;
const query = require("../helpers/query");

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

exports.updateUniversity = async (req, res) => {
  const id = req.params.id;
  if (!req.user || req.user === undefined) {
    return res.status(401).json({ response: "you dont have access to this endpoint" });
  }
  try {
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
      Memberships_and_Affiliations: req.body.Members_and_Affiliations,
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

exports.deleteUniversity = async (req, res) => {
  const id = req.params.id;
  if (!req.user || req.user === undefined) {
    return res.status(401).json({ response: "you dont have access to this endpoint" });
  }
  try {
    const deleteDoc = await university_data.destroy({ where: { id: id } });
    if (deleteDoc) return res.status(200).json({ response: "university deteled", count: deleteDoc });
    return res.status(204).json({ response: "It looks like this data no longer exist or has been moved" });

  } catch (error) {
    return res.status(500).json({ response: `${error} occured` })
  }
}

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