LOAD CSV WITH HEADERS FROM 'https://raw.githubusercontent.com/clasesfestrada/comandos-neo4j-Angieee727/main/data/estudiantes.csv' AS row
MERGE (:Estudiante {id: row.id, nombre: row.nombre, carrera: row.carrera, semestre: toInteger(row.semestre)});

LOAD CSV WITH HEADERS FROM 'https://raw.githubusercontent.com/clasesfestrada/comandos-neo4j-Angieee727/main/data/estudiantes.csv' AS row
MERGE (:Estudiante {id: row.id, nombre: row.nombre, carrera: row.carrera, semestre: toInteger(row.semestre)});

LOAD CSV WITH HEADERS FROM 'https://raw.githubusercontent.com/clasesfestrada/comandos-neo4j-Angieee727/main/data/materias.csv' AS row
MERGE (:Materia {id: row.id, nombre: row.nombre});

LOAD CSV WITH HEADERS FROM 'https://raw.githubusercontent.com/clasesfestrada/comandos-neo4j-Angieee727/main/data/profesores.csv' AS row
MERGE (:Profesor {id: row.id, nombre: row.nombre});

LOAD CSV WITH HEADERS FROM 'https://raw.githubusercontent.com/clasesfestrada/comandos-neo4j-Angieee727/main/data/imparticiones.csv' AS row
MATCH (p:Profesor {id: row.profesor_id}), (m:Materia {id: row.materia_id})
MERGE (p)-[:IMPARTE]->(m);

LOAD CSV WITH HEADERS FROM 'https://raw.githubusercontent.com/clasesfestrada/comandos-neo4j-Angieee727/main/data/inscripciones.csv' AS row
MATCH (e:Estudiante {id: row.estudiante_id}), (m:Materia {id: row.materia_id})
MERGE (e)-[:INSCRITO_EN]->(m);

LOAD CSV WITH HEADERS FROM 'https://raw.githubusercontent.com/clasesfestrada/comandos-neo4j-Angieee727/main/data/amistades.csv' AS row
MATCH (e1:Estudiante {id: row.estudiante1_id}), (e2:Estudiante {id: row.estudiante2_id})
MERGE (e1)-[:AMIGO_DE]->(e2);