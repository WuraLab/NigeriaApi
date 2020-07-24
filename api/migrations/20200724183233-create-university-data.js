module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.createTable("university_data", {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      name: {
        type: Sequelize.STRING
      },
      state: {
        type: Sequelize.STRING
      },
      abbrevation: {
        type: Sequelize.STRING
      },
      location: {
        type: Sequelize.STRING
      },
      type: {
        type: Sequelize.STRING
      },
      founded: {
        type: Sequelize.STRING
      },
      location_address: {
        type: Sequelize.STRING
      },
      number_of_students: {
        type: Sequelize.STRING
      },
      chancellor: {
        type: Sequelize.STRING
      },
      pro_chancellor: {
        type: Sequelize.STRING
      },
      vice_chancellor: {
        type: Sequelize.STRING
      },
      url: {
        type: Sequelize.STRING
      },
      social_media_handle_url: {
        type: Sequelize.STRING
      },
      number_of_faculties: {
        type: Sequelize.STRING
      },
      motto: {
        type: Sequelize.STRING
      },
      programme_offered: {
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
    await queryInterface.dropTable("university_data");
  }
};
