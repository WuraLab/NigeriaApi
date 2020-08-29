'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class University_data extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  };
  University_data.init({
    Name: DataTypes.STRING,
    State: DataTypes.STRING,
    Abbrevation: DataTypes.STRING,
    Location: DataTypes.STRING,
    Type: DataTypes.STRING,
    Founded: DataTypes.STRING,
    Number_of_students: DataTypes.STRING,
    Chancellor: DataTypes.STRING,
    Pro_chancellor: DataTypes.STRING,
    Vice_chancellor: DataTypes.STRING,
    URl: DataTypes.STRING,
    Social_media_handle_URL: DataTypes.STRING,
    Number_of_faculties: DataTypes.STRING,
    Motto: DataTypes.STRING,
    Programme_offered: DataTypes.STRING,
    Religious_Affiliation: DataTypes.STRING,
    Memberships_and_Affiliations: DataTypes.STRING,
    Wikipedia_Article: DataTypes.STRING,
    University_Overview: DataTypes.STRING,
    Study_Abroad: DataTypes.STRING,
    Sport_Facilities: DataTypes.STRING,
    Selection_Type: DataTypes.STRING,
    Region: DataTypes.STRING,
    Library: DataTypes.STRING,
    International_Students: DataTypes.STRING,
    Housing: DataTypes.STRING,
    Gender: DataTypes.STRING,
    Financial_Aids: DataTypes.STRING,
    Academic_Calendar: DataTypes.STRING,
    Academic_Staff: DataTypes.STRING,
    Accreditations: DataTypes.STRING,
    Admission_Rate: DataTypes.STRING,
    Campus_Setting: DataTypes.STRING,
    Faculty_or_Colleges: DataTypes.STRING,
    Entity_Type: DataTypes.STRING,
    Distance_Learning: DataTypes.STRING,
    Colours: DataTypes.STRING
  }, {
    sequelize,
    modelName: 'University_data',
  });
  return University_data;
};