const express = require('express');
const app = express();
const alumnosRoutes = require('./routes/alumnos.routes');
const evaluacionesRoutes = require('./routes/evaluaciones');

app.use(express.json());
app.use('/api/alumnos', alumnosRoutes);
app.use('/api/evaluaciones', evaluacionesRoutes);

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log('Servidor corriendo en puerto ${PORT}');
});