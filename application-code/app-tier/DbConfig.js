module.exports = Object.freeze({
    DB_HOST     : process.env.DB_HOST,       // RDS endpoint
    DB_USER     : process.env.DB_USER,       // username
    DB_PWD      : process.env.DB_PASSWORD,   // password
    DB_DATABASE : process.env.DB_NAME        // database name
});
