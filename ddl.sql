-- Creación de Base de datos
CREATE DATABASE IF NOT EXISTS Cursos;
USE Cursos;

-- Creación de entidades y relaciones
CREATE TABLE IF NOT EXISTS Curso(
curso_id INT PRIMARY KEY NOT NULL,
curso VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS Estudiante(
estudiante_id INT PRIMARY KEY NOT NULL,
nombre VARCHAR(255) NOT NULL,
apellido VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS Estudiantes_en_curso(
id INT PRIMARY KEY NOT NULL,
estudiante_id INT NOT NULL,
FOREIGN KEY (estudiante_id) REFERENCES Estudiante(estudiante_id),
curso_id INT NOT NULL,
FOREIGN KEY (curso_id) REFERENCES Curso(curso_id)
);
 
CREATE TABLE IF NOT EXISTS Docente(
docente_id INT PRIMARY KEY NOT NULL,
nombre VARCHAR(255) NOT NULL,
apellido VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS Docentes_en_curso(
id INT PRIMARY KEY NOT NULL,
docente_id INT NOT NULL,
FOREIGN KEY (docente_id) REFERENCES Docente(docente_id),
curso_id INT NOT NULL,
FOREIGN KEY (curso_id) REFERENCES Curso(curso_id)
);

CREATE TABLE IF NOT EXISTS Aula(
aula_id INT PRIMARY KEY NOT NULL,
numero INT NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS Cursos_en_aulas(
id INT PRIMARY KEY NOT NULL,
curso_id INT NOT NULL,
FOREIGN KEY (curso_id) REFERENCES Curso(curso_id),
aula_id INT NOT NULL,
FOREIGN KEY (aula_id) REFERENCES Aula(aula_id)
);

CREATE TABLE IF NOT EXISTS Dia_clase(
dia_id INT PRIMARY KEY NOT NULL,
dia VARCHAR(20) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS Hora_clase(
hora_id INT PRIMARY KEY NOT NULL,
hora_inicio TIME NOT NULL,
hora_fin TIME NOT NULL
);

CREATE TABLE IF NOT EXISTS Horario(
horario_id INT PRIMARY KEY NOT NULL,
dia_id INT NOT NULL,
FOREIGN KEY (dia_id) REFERENCES Dia_clase(dia_id),
hora_id INT NOT NULL,
FOREIGN KEY (hora_id) REFERENCES Hora_clase(hora_id)
);

CREATE TABLE IF NOT EXISTS Horarios_de_cursos(
id INT PRIMARY KEY NOT NULL,
horario_id INT NOT NULL,
FOREIGN KEY (horario_id) REFERENCES Horario(horario_id),
curso_id INT NOT NULL,
FOREIGN KEY (curso_id) REFERENCES Curso(curso_id)
);