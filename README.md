<h1> Ejercicio Planteado MySQL II: Universidad Data Base 📝</h1>

Este sistema está enfocado en cubrir los aspectos fundamentales de la administración académica, incluyendo estudiantes, cursos, docentes, aulas y horarios. A continuación podrás ver el desarrollo y normalización de esta base de datos:

## Tabla de Contenidos
- [Instalación](#instalación)
- [Normalización](#normalización)
- [Entidad-Relación](#entidad-relación)
- [Diagrama Lógico](#diagrama)
- [Contacto](#contacto)

## Instalación
1. Clona este repositorio, para obtener una copia local del proyecto:
   ```bash
   git clone https://github.com/LauraAmaya08/EjercicioMySql-II_LuisMendezLauraAmaya
   ```
   
## Normalización
<img src="images/image (4).webp" alt="Diagrama de relación de entidad" width="auto" />

A partir de la tabla base, se aplican las tres formas normales principales en bases de datos para garantizar la integridad y la eficiencia en el manejo de los datos:

### 1. Primera Forma Normal (1NF)
Se asegura que cada atributo contenga solo un valor atómico. Esto significa que elementos como nombres y horas se separan en columnas individuales, evitando que se incluyan múltiples datos en un mismo campo.

### 2. Segunda Forma Normal (2NF)
Se implementa para garantizar que todos los atributos dependan únicamente de la clave primaria. Cada dato debe estar asociado a una única entidad, eliminando la posibilidad de que un atributo dependa de otra parte de la clave.

### 3. Tercera Forma Normal (3NF)
Se aplica para asegurar que cada entidad contenga solo aquellos datos que le son relevantes, evitando dependencias transitivas. 

Al llevar a cabo estas formas de manera correcta no fue necesario aplicar la cuarta forma normal (4N)


## Entidad-Relación

A continuación encontrarás la expliación de nuestras entidades y relaciones:

1. **Curso**
   - **Atributos**:
     - `curso_id`: Identificador único del curso (clave primaria).
     - `curso`: Nombre del curso, debe ser único.
   - **Descripción**: Representa los diferentes cursos que ofrece la universidad.

2. **Estudiante**
   - **Atributos**:
     - `estudiante_id`: Identificador único del estudiante (clave primaria).
     - `nombre`: Nombre del estudiante.
     - `apellido`: Apellido del estudiante.
   - **Descripción**: Contiene la información de los estudiantes en la universidad.

3. **Estudiantes_en_curso**
   - **Atributos**:
     - `id`: Identificador único de la relación (clave primaria).
     - `estudiante_id`: Referencia al estudiante (clave foránea).
     - `curso_id`: Referencia al curso (clave foránea).
   - **Descripción**: Representa la relación muchos a muchos entre estudiantes y cursos, indicando qué estudiantes están matriculados en qué cursos.

4. **Docente**
   - **Atributos**:
     - `docente_id`: Identificador único del docente (clave primaria).
     - `nombre`: Nombre del docente.
     - `apellido`: Apellido del docente.
   - **Descripción**: Contiene la información de los docentes que imparten los cursos.

5. **Docentes_en_curso**
   - **Atributos**:
     - `id`: Identificador único de la relación (clave primaria).
     - `docente_id`: Referencia al docente (clave foránea).
     - `curso_id`: Referencia al curso (clave foránea).
   - **Descripción**: Representa la relación muchos a muchos entre docentes y cursos, indicando qué docentes están asignados a qué cursos.

6. **Aula**
   - **Atributos**:
     - `aula_id`: Identificador único del aula (clave primaria).
     - `numero`: Número del aula, debe ser único.
   - **Descripción**: Representa las diferentes aulas disponibles en la universidad.

7. **Cursos_en_aulas**
   - **Atributos**:
     - `id`: Identificador único de la relación (clave primaria).
     - `curso_id`: Referencia al curso (clave foránea).
     - `aula_id`: Referencia al aula (clave foránea).
   - **Descripción**: Representa la relación entre cursos y aulas, indicando en qué aulas se imparten los cursos.

8. **Dia_clase**
   - **Atributos**:
     - `dia_id`: Identificador único del día (clave primaria).
     - `dia`: Nombre del día (por ejemplo, "Lunes").
   - **Descripción**: Representa los días de la semana en que se imparten las clases.

9. **Hora_clase**
   - **Atributos**:
     - `hora_id`: Identificador único de la hora (clave primaria).
     - `hora_inicio`: Hora de inicio de la clase.
     - `hora_fin`: Hora de fin de la clase.
   - **Descripción**: Define los horarios en los que se imparten las clases.

10. **Horario**
    - **Atributos**:
      - `horario_id`: Identificador único del horario (clave primaria).
      - `dia_id`: Referencia al día de clase (clave foránea).
      - `hora_id`: Referencia a la hora de clase (clave foránea).
    - **Descripción**: Combina días y horas para definir cuándo se imparten las clases.

11. **Horarios_de_cursos**
    - **Atributos**:
      - `id`: Identificador único de la relación (clave primaria).
      - `horario_id`: Referencia al horario (clave foránea).
      - `curso_id`: Referencia al curso (clave foránea).
    - **Descripción**: Representa la relación entre los cursos y sus horarios, indicando en qué días y horas se imparten.

## Relaciones

- **Estudiantes_en_curso** establece una relación muchos a muchos entre **Estudiante** y **Curso**.
- **Docentes_en_curso** establece una relación muchos a muchos entre **Docente** y **Curso**.
- **Cursos_en_aulas** establece una relación entre **Curso** y **Aula**, indicando en qué aula se imparte cada curso.
- **Horarios_de_cursos** vincula los **Cursos** con sus **Horarios**, permitiendo conocer cuándo se imparten.


## Diagrama
<img src="images/drawSQL-image-export-2024-10-02 (3).png" alt="Diagrama de relación de entidad" width="auto" />
     
## Contacto
Para cualquier pregunta o sugerencia, por favor contacta a:
- **Nombre:** Laura Amaya / Nicolas Mendez
- **Email:** laurasofiaamayacasado@gmail.com / nicolas-mendez@hotmail.com
