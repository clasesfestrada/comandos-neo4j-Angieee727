MATCH (n) RETURN n;
MATCH (e:Estudiante) RETURN e.id, e.nombre, e.carrera, e.semestre;
MATCH (m:Materia) RETURN m.id, m.nombre;
MATCH (p:Profesor) RETURN p.id, p.nombre;
MATCH (e:Estudiante)-[:INSCRITO_EN]->(m:Materia) RETURN e.nombre, m.nombre;
MATCH (p:Profesor)-[:IMPARTE]->(m:Materia) RETURN p.nombre, m.nombre;
