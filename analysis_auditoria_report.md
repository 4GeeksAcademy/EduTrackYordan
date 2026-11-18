## Q1
| student_name | email                             | completion_percentage |
| ------------ | --------------------------------- | --------------------- |
| Emily Watson | emily.watson@student.edutrack.com | 85                    |
| Klaus Weber  | klaus.weber@student.edutrack.com  | 92                    |
| Marco Rossi  | marco.rossi@student.edutrack.com  | 88                    |
| James Miller | james.miller@test.com             | 30                    |
| Priya Sharma | priya.sharma@student.edutrack.com | 55                    |

## Q2:
| id | student_id | student_name    | student_email                        | course_id | course_title          | category  | enrollment_date | completion_percentage | passed | monthly_fee_paid | instructor   |
| -- | ---------- | --------------- | ------------------------------------ | --------- | --------------------- | --------- | --------------- | --------------------- | ------ | ---------------- | ------------ |
| 5  | 3          | Lucia Fernandes | lucia.fernandes@student.edutrack.com | 2         | Web Design Basics     | Design    | 2024-06-20      | 5                     | false  | 39.99            | Carlos Vega  |
| 6  | 3          | Lucia Fernandes | lucia.fernandes@student.edutrack.com | 4         | Digital Marketing 101 | Marketing | 2024-07-01      | 3                     | false  | 29.99            | Lucia Prades |
| 10 | 5          | Yuki Nakamura   | yuki.nakamura@student.edutrack.com   | 6         | UI/UX Fundamentals    | Design    | 2024-10-11      | 0                     | false  | 44.99            | null         |
| 11 | 6          | Pierre Dubois   | pierre.dubois@student.edutrack.com   | 6         | UI/UX Fundamentals    | Design    | 2024-11-05      | 0                     | false  | 44.99            | null         |

## Q3:
| id | student_id | student_name  | student_email                      | course_id | course_title       | category | enrollment_date | completion_percentage | passed | monthly_fee_paid | instructor |
| -- | ---------- | ------------- | ---------------------------------- | --------- | ------------------ | -------- | --------------- | --------------------- | ------ | ---------------- | ---------- |
| 10 | 5          | Yuki Nakamura | yuki.nakamura@student.edutrack.com | 6         | UI/UX Fundamentals | Design   | 2024-10-11      | 0                     | false  | 44.99            | null       |
| 11 | 6          | Pierre Dubois | pierre.dubois@student.edutrack.com | 6         | UI/UX Fundamentals | Design   | 2024-11-05      | 0                     | false  | 44.99            | null       |

## Q4:
| student_name  | student_email                      | course_title           | completion_percentage |
| ------------- | ---------------------------------- | ---------------------- | --------------------- |
| Emily Watson  | emily.watson@student.edutrack.com  | Web Design Basics      | 60                    |
| Priya Sharma  | priya.sharma@student.edutrack.com  | Intro to Python        | 55                    |
| Yuki Nakamura | yuki.nakamura@student.edutrack.com | Data Analysis with SQL | 45                    |
| Emily Watson  | emily.watson@student.edutrack.com  | Advanced Python        | 40                    |
| James Miller  | james.miller@test.com              | Intro to Python        | 30                    |

## Q5:
| id | student_id | student_name    | student_email                        | course_id | course_title           | category    | enrollment_date | completion_percentage | passed | monthly_fee_paid | instructor   |
| -- | ---------- | --------------- | ------------------------------------ | --------- | ---------------------- | ----------- | --------------- | --------------------- | ------ | ---------------- | ------------ |
| 17 | 1          | Emily Watson    | emily.watson@student.edutrack.com    | 5         | Advanced Python        | Programming | 2025-03-05      | 40                    | false  | 69.99            | Carlos Vega  |
| 16 | 6          | Pierre Dubois   | pierre.dubois@student.edutrack.com   | 3         | Data Analysis with SQL | Data        | 2025-02-20      | 20                    | false  | 59.99            | Marta López  |
| 15 | 7          | Priya Sharma    | priya.sharma@student.edutrack.com    | 1         | Intro to Python        | Programming | 2025-01-10      | 55                    | false  | 49.99            | Marta López  |
| 12 | 7          | Priya Sharma    | priya.sharma@student.edutrack.com    | 4         | Digital Marketing 101  | Marketing   | 2024-12-01      | 70                    | true   | 29.99            | Lucia Prades |
| 11 | 6          | Pierre Dubois   | pierre.dubois@student.edutrack.com   | 6         | UI/UX Fundamentals     | Design      | 2024-11-05      | 0                     | false  | 44.99            | null         |
| 10 | 5          | Yuki Nakamura   | yuki.nakamura@student.edutrack.com   | 6         | UI/UX Fundamentals     | Design      | 2024-10-11      | 0                     | false  | 44.99            | null         |
| 9  | 5          | Yuki Nakamura   | yuki.nakamura@student.edutrack.com   | 3         | Data Analysis with SQL | Data        | 2024-09-03      | 45                    | false  | 59.99            | Marta López  |
| 8  | 4          | Marco Rossi     | marco.rossi@student.edutrack.com     | 1         | Intro to Python        | Programming | 2024-08-09      | 88                    | true   | 49.99            | Marta López  |
| 6  | 3          | Lucia Fernandes | lucia.fernandes@student.edutrack.com | 4         | Digital Marketing 101  | Marketing   | 2024-07-01      | 3                     | false  | 29.99            | Lucia Prades |


## Q6:Success. No rows returned
Resultado:
- Registro insertado con éxito (`id = 18`): Lucia Fernandes (`lucia.fernandes@student.edutrack.com`) en *Advanced Python* (`Programming`), fecha `2025-04-01`, tarifa pagada `$69.99`, instructor `Carlos Vega`

## Q7: Success. No rows returned
Resultado:
- Se actualizaron **2 registros** (`id = 10` de Yuki Nakamura e `id = 11` de Pierre Dubois en *UI/UX Fundamentals*), asignándoles el valor `'Pending assignment'`.

## Q8: Success. No rows returned

Resultado:
- Previa verificación con `SELECT`, se eliminaron **2 registros de prueba** importados del sistema antiguo: `id = 13` (James Miller, `james.miller@test.com`) e `id = 14` (Alex Chen, `alex.chen@test.com`).

## Q9:
| category    | total_inscripciones |
| ----------- | ------------------- |
| Programming | 7                   |
| Design      | 5                   |
| Data        | 3                   |
| Marketing   | 2                   |

## Q10:
| course_title           | promedio_completado |
| ---------------------- | ------------------- |
| UI/UX Fundamentals     | 0.00                |
| Web Design Basics      | 25.00               |
| Digital Marketing 101  | 36.50               |
| Data Analysis with SQL | 47.67               |
| Advanced Python        | 67.50               |
| Intro to Python        | 70.00               |

## Q11:
| instructor  | ingreso_total |
| ----------- | ------------- |
| Marta López | 429.92        |
| Carlos Vega | 259.95        |


## Q12
| student_name    | cursos_inscritos | gasto_total |
| --------------- | ---------------- | ----------- |
| Emily Watson    | 3                | 159.97      |
| Marco Rossi     | 2                | 119.98      |
| Klaus Weber     | 2                | 109.98      |
| Yuki Nakamura   | 2                | 104.98      |
| Pierre Dubois   | 2                | 104.98      |
| Priya Sharma    | 2                | 79.98       |
| Lucia Fernandes | 2                | 69.98       |
| James Miller    | 1                | 49.99       |
| Alex Chen       | 1                | 39.99       |