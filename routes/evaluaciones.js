const express = require ('express');
const router = express.router();
const evaluacionescontrollers = require('../controllers/evaluacionescontrollers');

router.get('/', evaluacionescontrollers, getEvaluaciones);

module,exports = router;