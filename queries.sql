-- Q1: Listar todas las inscripciones del curso 'Intro to Python', mostrando nombre del estudiante, email y porcentaje de completado
SELECT 
    s.name AS student_name, 
    s.email, 
    e.completion_percentage 
FROM enrollments e
JOIN students s ON e.student_id = s.id
JOIN courses c ON e.course_id = c.id
WHERE c.title = 'Intro to Python';

-- Q2: Obtener todas las inscripciones donde completion_percentage sea menor que 10
SELECT * 
FROM enrollments 
WHERE completion_percentage < 10;

-- Q3: Encontrar todas las inscripciones donde el campo instructor sea NULL
SELECT 
    e.*, 
    c.title AS course_title, 
    c.instructor_name 
FROM enrollments e
JOIN courses c ON e.course_id = c.id
WHERE c.instructor_name IS NULL;

-- Q4: Listar los 5 estudiantes con mayor completion_percentage que todavía no han aprobado (passed = false)
SELECT 
    s.name AS student_name, 
    s.email, 
    c.title AS course_title, 
    e.completion_percentage 
FROM enrollments e
JOIN students s ON e.student_id = s.id
JOIN courses c ON e.course_id = c.id
WHERE e.passed = FALSE
ORDER BY e.completion_percentage DESC
LIMIT 5;

-- Q5: Mostrar todas las inscripciones con enrollment_date desde el '2024-07-01', ordenadas por enrollment_date descendente
SELECT 
    e.id AS enrollment_id,
    s.name AS student_name,
    c.title AS course_title,
    e.enrollment_date,
    e.completion_percentage,
    e.passed,
    e.monthly_fee_paid
FROM enrollments e
JOIN students s ON e.student_id = s.id
JOIN courses c ON e.course_id = c.id
WHERE e.enrollment_date >= '2024-07-01'
ORDER BY e.enrollment_date DESC;

-- Q6: INSERT del registro de inscripción faltante indicado en el brief
INSERT INTO enrollments (id, student_id, course_id, enrollment_date, completion_percentage, passed, monthly_fee_paid)
VALUES (17, 8, 7, '2025-04-15', 0, FALSE, 19.99);

-- Q7: UPDATE de todas las inscripciones/cursos donde instructor sea NULL — asignar el valor por defecto 'Pending assignment'
UPDATE courses
SET instructor_name = 'Pending assignment'
WHERE instructor_name IS NULL;

-- Q8: DELETE de todas las inscripciones ligadas a las cuentas de prueba importadas (@test.com) — confirmar las filas afectadas con un SELECT previo
SELECT e.*
FROM enrollments e
JOIN students s ON e.student_id = s.id
WHERE s.email LIKE '%@test.com';

DELETE FROM enrollments
WHERE student_id IN (
    SELECT id FROM students WHERE email LIKE '%@test.com'
);

-- Q9: Contar el número de inscripciones agrupado por category
SELECT 
    c.category,
    COUNT(e.id) AS total_enrollments
FROM enrollments e
JOIN courses c ON e.course_id = c.id
GROUP BY c.category;

-- Q10: Calcular el promedio de completion_percentage agrupado por course_title, ordenado de menor a mayor
SELECT 
    c.title AS course_title,
    AVG(e.completion_percentage) AS average_completion
FROM enrollments e
JOIN courses c ON e.course_id = c.id
GROUP BY c.title
ORDER BY average_completion ASC;

-- Q11: Mostrar únicamente los cursos con más de 3 inscripciones (usar HAVING)
SELECT 
    c.title AS course_title,
    COUNT(e.id) AS total_enrollments
FROM enrollments e
JOIN courses c ON e.course_id = c.id
GROUP BY c.title
HAVING COUNT(e.id) > 3;

-- Q12: Calcular los ingresos totales (SUM de monthly_fee_paid) agrupados por category, ordenados de mayor a menor
SELECT 
    c.category,
    SUM(e.monthly_fee_paid) AS total_revenue
FROM enrollments e
JOIN courses c ON e.course_id = c.id
GROUP BY c.category
ORDER BY total_revenue DESC;