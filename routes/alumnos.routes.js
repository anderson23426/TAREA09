const express = require ('espress');
const router = express.router();
const alumnoscontroller = require('../controllers/evaluacionescontrollers');

router.get('/',alumnoscontroller.getAlumnos);

module.exports =router;