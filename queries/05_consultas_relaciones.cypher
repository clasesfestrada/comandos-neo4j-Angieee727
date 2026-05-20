MATCH (a:Estudiante {nombre:'Ana'})-[:AMIGO_DE]->(amigo) RETURN amigo.nombre;
MATCH (a:Estudiante {nombre:'Ana'})-[:AMIGO_DE]->(amigo)-[:INSCRITO_EN]->(m:Materia) RETURN amigo.nombre, m.nombre;
MATCH (a:Estudiante {nombre:'Ana'})-[:AMIGO_DE]->(amigo)-[:INSCRITO_EN]->(m:Materia)<-[:IMPARTE]-(p:Profesor) RETURN amigo.nombre, m.nombre, p.nombre;
MATCH (a:Estudiante {nombre:'Ana'})-[:AMIGO_DE*1..2]->(amigo) RETURN DISTINCT amigo.nombre;
MATCH (e:Estudiante)-[r:INSCRITO_EN]->(m:Materia) WHERE r.calificacion >= 90 RETURN e.nombre, m.nombre, r.calificacion;