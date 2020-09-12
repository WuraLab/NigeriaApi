'use strict';
module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.createTable('university_data', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      Name: {
        type: Sequelize.STRING
      },
      State: {
        type: Sequelize.STRING
      },
      Abbrevation: {
        type: Sequelize.STRING
      },
      Location: {
        type: Sequelize.STRING
      },
      Type: {
        type: Sequelize.STRING
      },
      Founded: {
        type: Sequelize.STRING
      },
      Number_of_Students: {
        type: Sequelize.STRING
      },
      Chancellor: {
        type: Sequelize.STRING
      },
      Pro_chancellor: {
        type: Sequelize.STRING
      },
      Vice_chancellor: {
        type: Sequelize.STRING
      },
      URl: {
        type: Sequelize.STRING
      },
      Social_media_handle_URL: {
        type: Sequelize.STRING
      },
      Number_of_faculties: {
        type: Sequelize.STRING
      },
      Motto: {
        type: Sequelize.STRING
      },
      Programme_offered: {
        type: Sequelize.STRING
      },
      Religious_Affiliation: {
        type: Sequelize.STRING
      },
      Memberships_and_Affiliations: {
        type: Sequelize.STRING
      },
      Wikipedia_Article: {
        type: Sequelize.STRING
      },
      University_Overview: {
        type: Sequelize.STRING
      },
      Study_Abroad: {
        type: Sequelize.STRING
      },
      Sport_Facilities: {
        type: Sequelize.STRING
      },
      Selection_Type: {
        type: Sequelize.STRING
      },
      Region: {
        type: Sequelize.STRING
      },
      Library: {
        type: Sequelize.STRING
      },
      International_Students: {
        type: Sequelize.STRING
      },
      Housing: {
        type: Sequelize.STRING
      },
      Gender: {
        type: Sequelize.STRING
      },
      Financial_Aids: {
        type: Sequelize.STRING
      },
      Academic_Calendar: {
        type: Sequelize.STRING
      },
      Academic_Staff: {
        type: Sequelize.STRING
      },
      Accreditations: {
        type: Sequelize.STRING
      },
      Admission_Rate: {
        type: Sequelize.STRING
      },
      Campus_Setting: {
        type: Sequelize.STRING
      },
      Faculty_or_Colleges: {
        type: Sequelize.STRING
      },
      Entity_Type: {
        type: Sequelize.STRING
      },
      Distance_Learning: {
        type: Sequelize.STRING
      },
      Colours: {
        type: Sequelize.STRING
      },
      createdAt: {
        allowNull: false,
        type: Sequelize.DATE
      },
      updatedAt: {
        allowNull: false,
        type: Sequelize.DATE
      }
    });
  },
  down: async (queryInterface, Sequelize) => {
    await queryInterface.dropTable('university_data');
  }
};