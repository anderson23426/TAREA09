const mysql = requiere ("mysql2");
const connection = mysql.createConnection({
  host:"localhost",
  user:"usuario",
  password:"0000",
  database:"Aprende Perú",
});

connection.connect(err => {
  if (err) throw err;
  console.log("Conctado a la base de datos MYSQL");
});

module.exports = connection;