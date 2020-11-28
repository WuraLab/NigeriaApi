'use strict';

const { sequelize } = require("../models");

module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.createTable('users', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      email: {
        type: Sequelize.STRING
      },
      password: {
        type: Sequelize.STRING
      },
      username: {
        type: Sequelize.STRING
      },
      activated: {
        type: Sequelize.STRING
      },
      createdAt: {
        allowNull: false,
        type: Sequelize.DATE
      },
      apikey: {
        allowNull: false,
        type: Sequelize.STRING
      },
      updatedAt: {
        allowNull: false,
        type: Sequelize.DATE
      }
    });
  },
  up: async (queryInterface, Sequelize) => {
    queryInterface.addColumn(
      'users',
      'role',
      {
        type: Sequelize.STRING,
        allowNull: false
      }
    )
  },
  // up: async (queryInterface, Sequelize) => {
  //  await queryInterface.addColumn('users', 
  //   "apikey",
  //    {
  //     type: Sequelize.STRING,
  //     allowNull: true
  //   }
  //  );
  // },
  down: async (queryInterface, Sequelize) => {
    await queryInterface.dropTable('users');
  }
};