const {
  DEV_DATABASE_NAME,
  DEV_DATABASE_USER,
  DEV_DATABASE_PASSWORD,
  DEV_DATABASE_HOST,
  DEV_DATABASE_PORT,
  LOCAL_DATABASE_NAME,
  LOCAL_DATABASE_USER,
  LOCAL_DATABASE_PASSWORD,
  LOCAL_DATABASE_HOST,
  LOCAL_DATABASE_PORT
} = process.env;

module.exports = {
  development: {
    username: DEV_DATABASE_USER,
    password: DEV_DATABASE_PASSWORD,
    database: DEV_DATABASE_NAME,
    host: DEV_DATABASE_HOST,
    port: DEV_DATABASE_PORT,
    dialect: "postgres",
    dialectOptions: {
      ssl: {
        require: true,
        rejectUnauthorized: false
      },
      keepAlive: true
    },
    ssl: true,
    logging: false
  }
  // test: {
  //   username: LOCAL_DATABASE_USER,
  //   password: LOCAL_DATABASE_PASSWORD,
  //   database: LOCAL_DATABASE_NAME,
  //   host: LOCAL_DATABASE_HOST,
  //   port: LOCAL_DATABASE_PORT,
  //   dialect: "postgres"
  // }
  // "production": {
  //   "username": "root",
  //   "password": null,
  //   "database": "database_production",
  //   "host": "127.0.0.1",
  //   "dialect": "mysql"
  // }
};
