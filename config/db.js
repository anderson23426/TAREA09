require('dotenv'),config();
const mysql = requiere ("mysql2");
const connection = mysql.createConnection({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  database: process.env.AprendePeru,
});

connection.connect(err => {
  if (err) throw err;
  console.log("Conctado a la base de datos MYSQL");
});

module.exports = connection;