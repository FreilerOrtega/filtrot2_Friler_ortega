use filtro_t2_ortega_freiler;

-- consultas 


-- 1.Encuentra el profesor que ha impartido más asignaturas en el último año académico.
select * from asignatura a 
inner join profesor pr on a.id_profesor = pr.id_profesor;



-- 2.Lista los cinco departamentos con mayor cantidad de asignaturas asignadas.

 SELECT DISTINCT *  from departamento,asignatura limit 5 ;
 

-- 3.Obtén el total de alumnos y docentes por departamento.

 select distinct count(id_alumno),count(_profesor) from alumno,departamento,profesor ;


-- 4.Calcula el número total de alumnos matriculados en asignaturas de un género específico en un semestre determinado.

select * from alumno_se_matricula_asignatura asma
inner join alumno al on asma.id_alumno = al.id_alumno ;


-- 5.Encuentra los alumnos que han cursado todas las asignaturas de un grado específico.

select distinct a.nombre , asig.nombre,asig.id_grado
from alumno a inner join asignatura asig 
where id_grado = '4';



-- 6.Lista los tres grados con mayor número de asignaturas cursadas en el último semestre.

select nombre from grado order by 1 limit 3;



-- 7.Muestra los cinco profesores con menos asignaturas impartidas en el último año académico.


select distinct p.nombre from asignatura a 
inner join profesor p on a.id_profesor  
order by nombre asc limit 5 ;



-- 8.Calcula el promedio de edad de los alumnos al momento de su primera matrícula.

select *  from curso_escolar c ,alumno a 
;


-- 9.Encuentra los cinco profesores que han impartido más clases de un mismo grado.

select nombre from profesor order by 1 limit 5 ;

-- 10.Genera un informe con los alumnos que han cursado más de 10 asignaturas en el último año.


SELECT nombre FROM alumno



-- 11.Calcula el promedio de créditos de las asignaturas por grado.

-- dependiendo de el ide de grado se sacara el promedio de creditos que tiene ese grado 

	select avg(creditos) as creditos_totales_grado from asignatura where id_grado = 7;

-- 12.Lista las cinco asignaturas más largas (en horas) impartidas en el último semestre.
-- 13.Muestra los alumnos que han cursado más asignaturas de un género específico.
-- 14.Encuentra la cantidad total de horas cursadas por cada alumno en el último semestre.
-- 15.Muestra el número de asignaturas impartidas diariamente en cada mes del último trimestre.
-- 16.Calcula el total de asignaturas impartidas por cada profesor en el último semestre.


	select distinct p.nombre from asignatura a 
	inner join profesor p on a.id_profesor  
	order by nombre  desc 
    limit 5 ;



-- 17.Encuentra al alumno con la matrícula más reciente.
-- 18.Lista los cinco grados con mayor número de alumnos matriculados durante los últimos tres meses.
-- 19.Obtén la cantidad de asignaturas cursadas por cada alumno en el último semestre.
-- 20.Lista los profesores que no han impartido clases en el último año académico.