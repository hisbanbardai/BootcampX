SELECT
  name, id, email, cohort_id
FROM
  students
WHERE
  phone IS NULL and
  email NOT LIKE '%gmail.com';