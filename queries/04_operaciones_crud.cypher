CREATE (:Estudiante {id:'E006', nombre:'Laura', carrera:'Sistemas', semestre:3});
MATCH (e:Estudiante {id:'E006'}) SET e.semestre = 4;
MATCH (e:Estudiante {id:'E006'}) DELETE e;