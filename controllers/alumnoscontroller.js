const db = require('../config/db');

exports.getAlumnos = (req,res) => {
  db.query('SELECT * FROM ALUMNOS', (err,results)=>{
    if (err) return res.status(500).json(err);
  res.json(results);
  });
};