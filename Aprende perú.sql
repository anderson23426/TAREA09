CREATE DATABASE Aprende_Peru;
use Aprende_Peru;

CREATE TABLE ALUMNOS(
id_alumno INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(40),
apellido VARCHAR(40)
);

CREATE TABLE EVALUACION(
id_evaluacion INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR (40),
area VARCHAR (40),
fecha_inicio DATE,
fecha_fin DATE,
duracion_minutos INT
);

CREATE TABLE PREGUNTA(
id_pregunta INT PRIMARY KEY AUTO_INCREMENT,
id_evaluacion INT,
texto_pregunta TEXT,
puntaje DECIMAL(5,2),
FOREIGN KEY (id_evaluacion) REFERENCES EVALUACION(id_evaluacion)
);

CREATE TABLE ALTERNATIVA(
id_alternativa INT PRIMARY KEY AUTO_INCREMENT,
id_pregunta INT,
texto_alternativa TEXT,
es_correcta BOOLEAN,
FOREIGN KEY (id_pregunta) REFERENCES PREGUNTA(id_pregunta)
);

CREATE TABLE ASIGNACION(
id_asignacion INT PRIMARY KEY AUTO_INCREMENT,
id_alumno INT,
id_evaluacion INT,
estado ENUM("pendiente", "resuelto") DEFAULT "pendiente",
FOREIGN KEY (id_alumno) REFERENCES ALUMNOS(id_alumno),
FOREIGN KEY (id_evaluacion) REFERENCES EVALUACION(id_evaluacion)
);

CREATE TABLE INTENTOS(
id_intento INT PRIMARY KEY AUTO_INCREMENT,
id_asignacion INT,
fecha_hora_inicio DATETIME,
fecha_hora_fin DATETIME,
puntaje DECIMAL(5,2),
FOREIGN KEY (id_asignacion) REFERENCES ASIGNACION(id_asignacion)
);

CREATE TABLE RESPUESTA(
id_respuestas INT PRIMARY KEY AUTO_INCREMENT,
id_intento INT,
id_pregunta INT,
id_alternativa INT,
FOREIGN KEY (id_intento) REFERENCES INTENTOS(id_intento),
FOREIGN KEY (id_pregunta) REFERENCES PREGUNTA(id_pregunta),
FOREIGN KEY (id_alternativa) REFERENCES ALTERNATIVA(id_alternativa)
);


INSERT INTO ALUMNOS (nombre, apellido) VALUES('Juan', 'Perez');
INSERT INTO ALUMNOS (nombre, apellido) VALUES('Maria', 'Lopez');
INSERT INTO ALUMNOS (nombre, apellido) VALUES('Carlos', 'Gomez');
INSERT INTO ALUMNOS (nombre, apellido) VALUES('Juan', 'Perez');
INSERT INTO ALUMNOS (nombre, apellido) VALUES('Maria', 'Lopez');
INSERT INTO ALUMNOS (nombre, apellido) VALUES('Carlos', 'Gomez');
INSERT INTO ALUMNOS (nombre, apellido) VALUES('Ana', 'Martinez');
INSERT INTO ALUMNOS (nombre, apellido) VALUES('Luis', 'Rodriguez');
INSERT INTO ALUMNOS (nombre, apellido) VALUES('Sofia', 'Diaz');
INSERT INTO ALUMNOS (nombre, apellido) VALUES('Miguel', 'Fernandez');


INSERT INTO EVALUACION (nombre, area, fecha_inicio, fecha_fin, duracion_minutos) VALUES('Matemáticas Básicas', 'Matemáticas', '2025-06-01', '2025-06-30', 60);
INSERT INTO EVALUACION (nombre, area, fecha_inicio, fecha_fin, duracion_minutos) VALUES('Lenguaje y Comunicación', 'Comunicación', '2025-06-05', '2025-07-05', 45);
INSERT INTO EVALUACION (nombre, area, fecha_inicio, fecha_fin, duracion_minutos) VALUES('Ciencias Naturales', 'Ciencias', '2025-06-10', '2025-07-10', 50);
INSERT INTO EVALUACION (nombre, area, fecha_inicio, fecha_fin, duracion_minutos) VALUES('Historia Universal', 'Historia', '2025-06-15', '2025-07-15', 40);
INSERT INTO EVALUACION (nombre, area, fecha_inicio, fecha_fin, duracion_minutos) VALUES('Educación Física', 'Deportes', '2025-06-20', '2025-07-20', 30);
INSERT INTO EVALUACION (nombre, area, fecha_inicio, fecha_fin, duracion_minutos) VALUES('Arte y Cultura', 'Arte', '2025-06-25', '2025-07-25', 35);
INSERT INTO EVALUACION (nombre, area, fecha_inicio, fecha_fin, duracion_minutos) VALUES('Química Básica', 'Ciencias', '2025-07-01', '2025-07-31', 55);
INSERT INTO EVALUACION (nombre, area, fecha_inicio, fecha_fin, duracion_minutos) VALUES('Física Aplicada', 'Ciencias', '2025-07-05', '2025-08-05', 60);
INSERT INTO EVALUACION (nombre, area, fecha_inicio, fecha_fin, duracion_minutos) VALUES('Literatura Contemporánea', 'Comunicación', '2025-07-10', '2025-08-10', 50);
INSERT INTO EVALUACION (nombre, area, fecha_inicio, fecha_fin, duracion_minutos) VALUES('Geografía Mundial', 'Geografía', '2025-07-15', '2025-08-15', 45);

INSERT INTO ASIGNACION (id_alumno, id_evaluacion, estado) VALUES(1, 1, 'pendiente');
INSERT INTO ASIGNACION (id_alumno, id_evaluacion, estado) VALUES(1, 2, 'pendiente');
INSERT INTO ASIGNACION (id_alumno, id_evaluacion, estado) VALUES(2, 1, 'pendiente');
INSERT INTO ASIGNACION (id_alumno, id_evaluacion, estado) VALUES(3, 2, 'pendiente');
INSERT INTO ASIGNACION (id_alumno, id_evaluacion, estado) VALUES (2, 2, 'pendiente');
INSERT INTO ASIGNACION (id_alumno, id_evaluacion, estado) VALUES (3, 1, 'pendiente');
INSERT INTO ASIGNACION (id_alumno, id_evaluacion, estado) VALUES (1, 1, 'completado');
INSERT INTO ASIGNACION (id_alumno, id_evaluacion, estado) VALUES (2, 1, 'completado');
INSERT INTO ASIGNACION (id_alumno, id_evaluacion, estado) VALUES (3, 2, 'completado');
INSERT INTO ASIGNACION (id_alumno, id_evaluacion, estado) VALUES (1, 2, 'en progreso');


INSERT INTO INTENTOS (id_asignacion, fecha_hora_inicio, fecha_hora_fin, puntaje) VALUES(1, '2025-06-01 09:00:00', '2025-06-01 09:45:00', 12);
INSERT INTO INTENTOS (id_asignacion, fecha_hora_inicio, fecha_hora_fin, puntaje) VALUES(2, '2025-06-05 10:00:00', '2025-06-05 10:40:00', 8);
INSERT INTO INTENTOS (id_asignacion, fecha_hora_inicio, fecha_hora_fin, puntaje) VALUES(3, '2025-06-02 09:00:00', '2025-06-02 09:50:00', 14);
INSERT INTO INTENTOS (id_asignacion, fecha_hora_inicio, fecha_hora_fin, puntaje) VALUES(4, '2025-06-06 10:00:00', '2025-06-06 10:30:00', 9);  
INSERT INTO INTENTOS (id_asignacion, fecha_hora_inicio, fecha_hora_fin, puntaje) VALUES(1, '2025-06-10 08:30:00', '2025-06-10 09:15:00', 15);
INSERT INTO INTENTOS (id_asignacion, fecha_hora_inicio, fecha_hora_fin, puntaje) VALUES(2, '2025-06-12 11:00:00', '2025-06-12 11:35:00', 7);
INSERT INTO INTENTOS (id_asignacion, fecha_hora_inicio, fecha_hora_fin, puntaje) VALUES(3, '2025-06-15 14:00:00', '2025-06-15 14:50:00', 13);
INSERT INTO INTENTOS (id_asignacion, fecha_hora_inicio, fecha_hora_fin, puntaje) VALUES(4, '2025-06-20 09:30:00', '2025-06-20 10:10:00', 9);
INSERT INTO INTENTOS (id_asignacion, fecha_hora_inicio, fecha_hora_fin, puntaje) VALUES(1, '2025-06-25 07:45:00', '2025-06-25 08:30:00', 16);
INSERT INTO INTENTOS (id_asignacion, fecha_hora_inicio, fecha_hora_fin, puntaje) VALUES(3, '2025-06-28 15:00:00', '2025-06-28 15:55:00', 5);

-- CONSULTAS 
-- a
SELECT COUNT(DISTINCT A.id_alumno) AS alumnos_desaprobados
FROM INTENTOS I
JOIN ASIGNACION A ON I.id_asignacion = A.id_asignacion
WHERE I.puntaje < 10;
-- b
SELECT COUNT(DISTINCT A.id_alumno) AS alumnos_aprobados
FROM INTENTOS I
JOIN ASIGNACION A ON I.id_asignacion = A.id_asignacion
WHERE A.id_evaluacion = 1 AND I.puntaje >= 10;
-- c
SELECT
    COUNT(*) AS total_examenes,
    SUM(CASE WHEN estado = 'completado' THEN 1 ELSE 0 END) AS resueltos,
    SUM(CASE WHEN estado = 'pendiente' THEN 1 ELSE 0 END) AS pendientes,
    SUM(CASE WHEN estado = 'en progreso' THEN 1 ELSE 0 END) AS en_progreso
FROM ASIGNACION
WHERE id_alumno = 1;
-- d
SELECT
    MAX(I.puntaje) AS mejor_calificacion,
    MIN(I.puntaje) AS peor_calificacion
FROM INTENTOS I
JOIN ASIGNACION A ON I.id_asignacion = A.id_asignacion
WHERE A.id_evaluacion = 1;
-- e
SELECT AVG(I.puntaje) AS promedio_calificaciones
FROM INTENTOS I
JOIN ASIGNACION A ON I.id_asignacion = A.id_asignacion
WHERE A.id_alumno = 1;

