Q1 | student_name | email                             | completion_percentage |
| ------------ | --------------------------------- | --------------------- |
| Emily Watson | emily.watson@student.edutrack.com | 85                    |
| Klaus Weber  | klaus.weber@student.edutrack.com  | 92                    |
| Marco Rossi  | marco.rossi@student.edutrack.com  | 88                    |
| Priya Sharma | priya.sharma@student.edutrack.com | 55                    |

Q2 | id | student_id | course_id | enrollment_date | completion_percentage | passed | monthly_fee_paid |
| -- | ---------- | --------- | --------------- | --------------------- | ------ | ---------------- |
| 5  | 3          | 2         | 2024-06-20      | 5                     | false  | 39.99            |
| 6  | 3          | 4         | 2024-07-01      | 3                     | false  | 29.99            |
| 10 | 5          | 6         | 2024-10-11      | 0                     | false  | 44.99            |
| 11 | 6          | 6         | 2024-11-05      | 0                     | false  | 44.99            |
| 16 | 3          | 5         | 2025-04-01      | 0                     | false  | 69.99            |


Q3 | id | student_id | course_id | enrollment_date | completion_percentage | passed | monthly_fee_paid |
| -- | ---------- | --------- | --------------- | --------------------- | ------ | ---------------- |
| 5  | 3          | 2         | 2024-06-20      | 5                     | false  | 39.99            |
| 6  | 3          | 4         | 2024-07-01      | 3                     | false  | 29.99            |
| 10 | 5          | 6         | 2024-10-11      | 0                     | false  | 44.99            |
| 11 | 6          | 6         | 2024-11-05      | 0                     | false  | 44.99            |
| 16 | 3          | 5         | 2025-04-01      | 0                     | false  | 69.99            |


Q4 | student_name  | email                              | course_title           | completion_percentage |
| ------------- | ---------------------------------- | ---------------------- | --------------------- |
| Emily Watson  | emily.watson@student.edutrack.com  | Web Design Basics      | 60                    |
| Priya Sharma  | priya.sharma@student.edutrack.com  | Intro to Python        | 55                    |
| Yuki Nakamura | yuki.nakamura@student.edutrack.com | Data Analysis with SQL | 45                    |
| Emily Watson  | emily.watson@student.edutrack.com  | Advanced Python        | 40                    |
| Pierre Dubois | pierre.dubois@student.edutrack.com | Data Analysis with SQL | 20                    |

Q5 | enrollment_id | student_name    | course_title           | enrollment_date | completion_percentage | passed | monthly_fee_paid |
| ------------- | --------------- | ---------------------- | --------------- | --------------------- | ------ | ---------------- |
| 16            | Lucia Fernandes | Advanced Python        | 2025-04-01      | 0                     | false  | 69.99            |
| 15            | Emily Watson    | Advanced Python        | 2025-03-05      | 40                    | false  | 69.99            |
| 14            | Pierre Dubois   | Data Analysis with SQL | 2025-02-20      | 20                    | false  | 59.99            |
| 13            | Priya Sharma    | Intro to Python        | 2025-01-10      | 55                    | false  | 49.99            |
| 12            | Priya Sharma    | Digital Marketing 101  | 2024-12-01      | 70                    | true   | 29.99            |
| 11            | Pierre Dubois   | UI/UX Fundamentals     | 2024-11-05      | 0                     | false  | 44.99            |
| 10            | Yuki Nakamura   | UI/UX Fundamentals     | 2024-10-11      | 0                     | false  | 44.99            |
| 9             | Yuki Nakamura   | Data Analysis with SQL | 2024-09-03      | 45                    | false  | 59.99            |
| 8             | Marco Rossi     | Intro to Python        | 2024-08-09      | 88                    | true   | 49.99            |
| 6             | Lucia Fernandes | Digital Marketing 101  | 2024-07-01      | 3                     | false  | 29.99            |

Q6 Success. No rows returned
Resultado:
Se insertó 1 registro nuevo (id: 17) correspondiente a la estudiante Giulia Romano (student_id: 8) en el curso 'Email Campaigns' (course_id: 7) con fecha '2025-04-15', completion_percentage: 0, passed: false y monthly_fee_paid: 19.99.

Q7 Success. No rows returned
Resultado:
0 filas afectadas (en la versión normalizada EduTrack v2, los cursos sin instructor ya tenían asignado el valor 'Pending assignment').

Q8 Success. No rows returned
Resultado:
0 filas afectadas (la base de datos EduTrack v2 ya se encontraba limpia de cuentas de prueba `@test.com`, confirmado con el SELECT previo).

Q9
| category    | total_enrollments |
| ----------- | ----------------- |
| Marketing   | 3                 |
| Programming | 7                 |
| Design      | 4                 |
| Data        | 3                 |

Q10 
| course_title           | average_completion     |
| ---------------------- | ---------------------- |
| UI/UX Fundamentals     | 0.00000000000000000000 |
| Email Campaigns        | 0.00000000000000000000 |
| Web Design Basics      | 32.5000000000000000    |
| Digital Marketing 101  | 36.5000000000000000    |
| Advanced Python        | 45.0000000000000000    |
| Data Analysis with SQL | 47.6666666666666667    |
| Intro to Python        | 80.0000000000000000    |

Q11:
| course_title    | total_enrollments |
| --------------- | ----------------- |
| Intro to Python | 4                 |

Q12:
| category    | total_revenue |
| ----------- | ------------- |
| Programming | 409.93        |
| Data        | 179.97        |
| Design      | 169.96        |
| Marketing   | 79.97         |