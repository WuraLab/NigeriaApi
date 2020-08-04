/* eslint-disable camelcase */
const {
  Model
} = require("sequelize");

module.exports = (sequelize, DataTypes) => {
  class university_data extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    // eslint-disable-next-line no-unused-vars
    static associate(models) {
      // define association here
    }
  }
  university_data.init({
    Name: DataTypes.STRING,
    State: DataTypes.STRING,
    Abbrevation: DataTypes.STRING,
    Location: DataTypes.STRING,
    Type: DataTypes.STRING,
    Founded: DataTypes.STRING,
    Location_Address: DataTypes.STRING,
    Number_of_students: DataTypes.STRING,
    Chancellor: DataTypes.STRING,
    Pro_chancellor: DataTypes.STRING,
    Vice_chancellor: DataTypes.STRING,
    URl: DataTypes.STRING,
    Social_media_handle_URL: DataTypes.STRING,
    Number_of_faculties: DataTypes.STRING,
    Motto: DataTypes.STRING,
    Programme_offered: DataTypes.STRING,
  }, {
    sequelize,
    modelName: "university_data"
  });
  return university_data;
};
