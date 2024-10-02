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


## Entidad-Relación

A continuación encontrarás la expliación de nuestras entidades y relaciones:

### 1. **Objeto**
   - **Entidad**: Esta tabla almacena objetos dentro del universo Marvel, como el Mjolnir o el Escudo del Capitán América.
   - **Atributos**: 
     - `id_objeto`: Identificador único del objeto.
     - `nombre`: Nombre del objeto.
     - `origen`: El origen o la historia del objeto.
     - `limitaciones`: Limitaciones o debilidades del objeto.
     - `estado`: Estado actual del objeto (por ejemplo, "en uso", "destruido", "perdido", etc.).
   - **Relaciones**:
     - Se relaciona con la tabla `Poder` a través de `Poder_de_objeto`, indicando los poderes que un objeto otorga.
     - Se relaciona con la tabla `Personaje` a través de `Usado_por`, indicando qué personajes han usado o poseen el objeto.

### 2. **Poder**
   - **Entidad**: Almacena los poderes que pueden poseer personajes o ser otorgados por objetos.
   - **Atributos**:
     - `id_poder`: Identificador único del poder.
     - `nombre`: Nombre del poder.
     - `efecto`: Descripción del efecto principal del poder.
     - `efecto_secundario`: Efectos secundarios asociados al poder.
     - `requisitos`: Condiciones necesarias para adquirir el poder.
   - **Relaciones**:
     - Se relaciona con `Objeto` a través de `Poder_de_objeto`, indicando los poderes que provienen de objetos.
     - Se relaciona con `Personaje` a través de `Poder_en_personaje`, indicando los poderes que un personaje posee y si están activos.

### 3. **Nacionalidad**
   - **Entidad**: Representa las nacionalidades de los actores y directores.
   - **Atributos**:
     - `id_nacionalidad`: Identificador único de la nacionalidad.
     - `nombre`: Nombre de la nacionalidad.
   - **Relaciones**:
     - Se relaciona con `Actor` y `Director`, ya que estos tienen una nacionalidad específica.

### 4. **Actor**
   - **Entidad**: Almacena información sobre los actores que interpretan a personajes en el universo Marvel.
   - **Atributos**:
     - `id_actor`: Identificador único del actor.
     - `nombre`: Nombre del actor.
     - `id_nacionalidad`: Relación con la nacionalidad del actor.
     - `fecha_nacimiento`: Fecha de nacimiento del actor.
   - **Relaciones**:
     - Se relaciona con `Personaje`, indicando qué personajes son interpretados por el actor.

### 5. **Especie**
   - **Entidad**: Almacena las especies presentes en el universo Marvel, como Humanos, Asgardianos, etc.
   - **Atributos**:
     - `id_especie`: Identificador único de la especie.
     - `nombre`: Nombre de la especie.
     - `poblacion_total`: Población total de la especie.
   - **Relaciones**:
     - Se relaciona con `Personaje`, ya que cada personaje pertenece a una especie.
     - Se relaciona con `Planeta` a través de `Especie_en_planeta`, indicando qué especies habitan en qué planetas.

### 6. **Personaje**
   - **Entidad**: Almacena información sobre los personajes del universo Marvel.
   - **Atributos**:
     - `id_personaje`: Identificador único del personaje.
     - `nombre`: Nombre del personaje.
     - `id_actor`: Relación con el actor que interpreta al personaje.
     - `id_especie`: Relación con la especie del personaje.
     - `fecha_nacimiento`: Fecha de nacimiento del personaje.
   - **Relaciones**:
     - Se relaciona con `Recurso` a través de `Personaje_en_recurso`, indicando en qué películas o series aparece el personaje.
     - Se relaciona con `Objeto` a través de `Usado_por`, indicando qué objetos ha usado o posee el personaje.
     - Se relaciona con `Poder` a través de `Poder_en_personaje`, indicando qué poderes tiene y si están activos.

### 7. **Recurso**
   - **Entidad**: Almacena información sobre las películas, series, etc., del universo Marvel.
   - **Atributos**:
     - `id_recurso`: Identificador único del recurso.
     - `nombre`: Nombre del recurso (película, serie, etc.).
     - `duracion_total`: Duración total del recurso.
     - `cantidad_capitulos`: Número de capítulos si es una serie.
     - `id_tipo`: Relación con la tabla `Tipo`, indicando si es película, serie, etc.
     - `id_saga`: Relación con la tabla `Saga`, indicando a qué saga pertenece.
     - `sinopsis`: Breve resumen del recurso.
   - **Relaciones**:
     - Se relaciona con `Personaje` a través de `Personaje_en_recurso`.
     - Se relaciona con `Director` a través de `Director_en_recurso`.

### 8. **Planeta**
   - **Entidad**: Representa los planetas en el universo Marvel, como la Tierra, Asgard, etc.
   - **Atributos**:
     - `id_planeta`: Identificador único del planeta.
     - `nombre`: Nombre del planeta.
     - `poblacion`: Población del planeta.
     - `superficie`: Superficie del planeta.
   - **Relaciones**:
     - Se relaciona con `Universo` a través de `Planeta_en_universo`, indicando en qué universos existe el planeta.
     - Se relaciona con `Especie` a través de `Especie_en_planeta`, indicando qué especies habitan en ese planeta.
     - Se relaciona con `Localidad`, que indica lugares específicos dentro del planeta.

### 9. **Localidad**
   - **Entidad**: Representa lugares dentro de los planetas, como ciudades, países, etc.
   - **Atributos**:
     - `id_localidad`: Identificador único de la localidad.
     - `nombre`: Nombre de la localidad.
     - `id_planeta`: Relación con el planeta en el que se encuentra la localidad.
     - `ubicacion`: Descripción de la ubicación.
   - **Relaciones**:
     - Se relaciona con `Planeta`, indicando en qué planeta se encuentra.
     - Se relaciona con `Escena`, indicando qué escenas tienen lugar en la localidad.

### 10. **Escena**
   - **Entidad**: Representa escenas específicas de las películas o series.
   - **Atributos**:
     - `id_escena`: Identificador único de la escena.
     - `id_recurso`: Relación con el recurso (película o serie) en el que aparece la escena.
     - `id_localidad`: Relación con la localidad donde ocurre la escena.
     - `descripcion`: Descripción de la escena.
     - `fecha`: Fecha en que ocurre la escena.
     - `duracion`: Duración de la escena.
   - **Relaciones**:
     - Se relaciona con `Recurso`, indicando en qué película o serie ocurre la escena.
     - Se relaciona con `Localidad`, indicando dónde ocurre.

### 11. **Saga**
   - **Entidad**: Representa las sagas dentro del universo Marvel, como la Saga del Infinito.
   - **Atributos**:
     - `id_saga`: Identificador único de la saga.
     - `nombre`: Nombre de la saga.
   - **Relaciones**:
     - Se relaciona con `Recurso`, indicando qué películas o series forman parte de una saga.

### 12. **Tipo**
   - **Entidad**: Representa el tipo de recurso, como película, serie, etc.
   - **Atributos**:
     - `id_tipo`: Identificador único del tipo.
     - `tipo`: Nombre del tipo (película, serie, etc.).
   - **Relaciones**:
     - Se relaciona con `Recurso`, indicando el tipo de recurso.

### 13. **Universo**
   - **Entidad**: Representa los diferentes universos del multiverso Marvel.
   - **Atributos**:
     - `id_universo`: Identificador único del universo.
     - `nombre`: Nombre del universo.
   - **Relaciones**:
     - Se relaciona con `Planeta` a través de `Planeta_en_universo`, indicando en qué universos existe cada planeta.

### Relaciones principales:
- **Poder** ↔ **Personaje**: Relación de qué poderes tiene cada personaje.
- **Objeto** ↔ **Personaje**: Relación de qué personajes usan o son propietarios de qué objetos.
- **Planeta** ↔ **Especie**: Relación de qué especies habitan en qué planetas.
- **Recurso** ↔ **Personaje**: Relación de qué personajes aparecen en qué recursos (películas o series).
- **Recurso** ↔ **Director**: Relación de qué directores han dirigido qué recursos.
- **Escena** ↔ **Recurso**: Relación de qué escenas pertenecen a qué recursos.


## Diagrama
<img src="images/ERDDiagram_MARVEL.jpg" alt="Diagrama de relación de entidad" width="auto" />
     
## Contacto
Para cualquier pregunta o sugerencia, por favor contacta a:
- **Nombre:** Laura Amaya / Nicolas Mendez
- **Email:** laurasofiaamayacasado@gmail.com / nicolas-mendez@hotmail.com
