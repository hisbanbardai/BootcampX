-- What I answered:
-- select teachers.name as teacher, cohorts.name as cohort
-- from teachers
-- join assistance_requests on teachers.id = teacher_id
-- join students on student_id = students.id
-- join cohorts on cohort_id = cohorts.id
-- group by cohort, teachers.name
-- having cohorts.name = 'JUL02'
-- order by teachers.name; 


SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
ORDER BY teacher;