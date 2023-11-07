select sum(assignment_submissions.duration) as total_duration
from assignment_submissions 
join students on students.id = assignment_submissions.student_id
join cohorts on cohorts.id = students.cohort_id
where cohorts.name = 'FEB12';