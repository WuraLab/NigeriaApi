'use strict';
const {
    Model, DataTypes
} = require("sequelize")
module.exports = (sequelize, DataTypes) => {
    class polytechnic_data extends Model {
        static associate(models) {
            // define association here
        }
    };
    polytechnic_data.init({
        State: DataTypes.STRING,
        Name: DataTypes.STRING,
        Type: DataTypes.STRING,
        Location: DataTypes.STRING,
        Status: DataTypes.STRING
    }, {
        sequelize,
        timestamps: false,
        modelName: 'polytechnic_data',
    });
    return polytechnic_data;
}