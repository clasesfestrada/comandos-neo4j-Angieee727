LOAD CSV WITH HEADERS FROM 'https://raw.githubusercontent.com/clasesfestrada/comandos-neo4j-Angieee727/main/data/estudiantes.csv' AS row
MERGE (:Estudiante {id: row.id, nombre: row.nombre, carrera: row.carrera, semestre: toInteger(row.semestre)});

LOAD CSV WITH HEADERS FROM 'https://raw.githubusercontent.com/clasesfestrada/comandos-neo4j-Angieee727/main/data/materias.csv' AS row
MERGE (:Materia {id: row.id, nombre: row.nombre});

LOAD CSV WITH HEADERS FROM 'https://raw.githubusercontent.com/clasesfestrada/comandos-neo4j-Angieee727/main/data/profesores.csv' AS row
MERGE (:Profesor {id: row.id, nombre: row.nombre});
