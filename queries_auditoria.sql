-- Q1: Listar todas las inscripciones del curso 'Intro to Python', mostrando nombre del estudiante, email y porcentaje de completado
SELECT 
    s.name AS student_name, 
    s.email, 
    e.completion_percentage 
FROM enrollments e
JOIN students s ON e.student_id = s.id
JOIN courses c ON e.course_id = c.id
WHERE c.title = 'Intro to Python';

-- Q2: Obtener todas las inscripciones donde completion_percentage sea menor que 10 (posibles abandonos)
SELECT * 
FROM enrollments 
WHERE completion_percentage < 10;

-- Q3: Encontrar todas las inscripciones donde el campo instructor sea NULL
SELECT * 
FROM enrollments 
WHERE instructor IS NULL;

-- Q4: Listar los 5 estudiantes con mayor completion_percentage que todavía no han aprobado (passed = false)
SELECT 
    student_name, 
    student_email, 
    course_title, 
    completion_percentage 
FROM enrollments 
WHERE passed = FALSE 
ORDER BY completion_percentage DESC 
LIMIT 5;

-- Q5: Mostrar todas las inscripciones con enrollment_date desde el '2024-07-01', ordenadas por enrollment_date descendente
SELECT * 
FROM enrollments 
WHERE enrollment_date >= '2024-07-01' 
ORDER BY enrollment_date DESC;

-- Q6: INSERT del registro de inscripción faltante de Lucia Fernandes en Advanced Python
INSERT INTO enrollments (
    id, 
    student_id, 
    student_name, 
    student_email, 
    course_id, 
    course_title, 
    category, 
    enrollment_date, 
    completion_percentage, 
    passed, 
    monthly_fee_paid, 
    instructor
) VALUES (
    18, 
    3, 
    'Lucia Fernandes', 
    'lucia.fernandes@student.edutrack.com', 
    5, 
    'Advanced Python', 
    'Programming', 
    '2025-04-01', 
    0, 
    FALSE, 
    69.99, 
    'Carlos Vega'
);

-- Q7: UPDATE de todas las inscripciones donde instructor sea NULL asignando 'Pending assignment'
UPDATE enrollments 
SET instructor = 'Pending assignment' 
WHERE instructor IS NULL;

-- Q8: DELETE de todas las inscripciones ligadas a las cuentas de prueba (@test.com)
DELETE FROM enrollments 
WHERE student_email LIKE '%@test.com';

-- Q9: Contar el número de inscripciones agrupado por category
SELECT 
    category, 
    COUNT(*) AS total_inscripciones 
FROM enrollments 
GROUP BY category 
ORDER BY total_inscripciones DESC;

-- Q10: Calcular el promedio de completion_percentage agrupado por course_title, ordenado de menor a mayor
SELECT 
    course_title, 
    ROUND(AVG(completion_percentage), 2) AS promedio_completado 
FROM enrollments 
GROUP BY course_title 
ORDER BY promedio_completado ASC;

-- Q11: Ingreso total agrupado por instructor (filtrando con HAVING > 100)
SELECT 
    instructor, 
    SUM(monthly_fee_paid) AS ingreso_total 
FROM enrollments 
GROUP BY instructor 
HAVING SUM(monthly_fee_paid) > 100 
ORDER BY ingreso_total DESC;

-- Q12: Cantidad de cursos y gasto total por estudiante (ordenado de mayor a menor)
SELECT 
    student_name, 
    COUNT(*) AS cursos_inscritos, 
    SUM(monthly_fee_paid) AS gasto_total 
FROM enrollments 
GROUP BY student_name 
ORDER BY gasto_total DESC;