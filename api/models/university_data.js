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
    name: DataTypes.STRING,
    state: DataTypes.STRING,
    abbrevation: DataTypes.STRING,
    location: DataTypes.STRING,
    type: DataTypes.STRING,
    founded: DataTypes.STRING,
    location_address: DataTypes.STRING,
    number_of_students: DataTypes.STRING,
    chancellor: DataTypes.STRING,
    pro_chancellor: DataTypes.STRING,
    vice_chancellor: DataTypes.STRING,
    url: DataTypes.STRING,
    social_media_handle_url: DataTypes.STRING,
    number_of_faculties: DataTypes.STRING,
    motto: DataTypes.STRING,
    programme_offered: DataTypes.STRING
  }, {
    sequelize,
    modelName: "university_data"
  });
  return university_data;
};
