const {
  DEV_DATABASE_NAME,
  DEV_DATABASE_USER,
  DEV_DATABASE_PASSWORD,
  DEV_DATABASE_HOST
} = process.env;

module.exports = {
  development: {
    username: "qjsxzgou",
    password: "4pmb7c0cMsdWyN6lMy3Hs5CI3r2ADEf0",
    database: "qjsxzgou",
    host: "ruby.db.elephantsql.com",
    port: 5432,
    dialect: "postgres"
    // logging: false
  }
  // "test": {
  //   "username": "root",
  //   "password": null,
  //   "database": "database_test",
  //   "host": "127.0.0.1",
  //   "dialect": "mysql"
  // },
  // "production": {
  //   "username": "root",
  //   "password": null,
  //   "database": "database_production",
  //   "host": "127.0.0.1",
  //   "dialect": "mysql"
  // }
};
