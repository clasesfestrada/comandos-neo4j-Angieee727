// IMPORTAR DATOS



// 1. Importar Estudiantes
LOAD CSV WITH HEADERS FROM
'RAW-URL'
AS row



CREATE (:Estudiante {
   id: row.id,
   nombre: row.nombre,
   carrera: row.carrera,
   semestre: toInteger(row.semestre)
});



// 2. Importar Materias
LOAD CSV WITH HEADERS FROM
'RAW-URL'
AS row



CREATE (:Materias {
   id: row.id,
   nombre: row.nombre,
   area: row.area
});



// 3. Importar Profesores
LOAD CSV WITH HEADERS FROM
'RAW-URL'
AS row



CREATE (:Profesores{
   id: row.id,
   nombre: row.nombre,
   departamento: row.departamento
});