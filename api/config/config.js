// we are to use environmental variables here
var user = 'user';
var db_name = 'db';
var password = 'password';
var host = 'localhost:5432'
var port = 5432;

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
  LOCAL_DATABASE_PORT,
  DEV_DB_URI
} = process.env;

module.exports = {
  development: {
    username: user,
    password: password,
    database: db_name,
    host: host,
    port: port,
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
  },
  test: {
    
    username: user,
    password: password,
    database: db_name,
    host: host,
    port: port,
    dialect: "postgres"
  },
  production: {
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
};
