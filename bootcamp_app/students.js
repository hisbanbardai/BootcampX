const { Pool } = require("pg");

const pool = new Pool({
  user: "labber",
  password: "labber",
  host: "localhost",
  database: "bootcampx",
});

pool
  .query(
    `
SELECT students.id as id, students.name as name, cohorts.name as cohort_name
FROM students
JOIN cohorts ON cohorts.id = students.cohort_id
WHERE cohorts.name LIKE '${process.argv[2]}%'
LIMIT ${process.argv[3]};
`
  )
  .then((res) => {
    console.log(res.rows);
  })
  .catch((err) => console.error("query error", err.stack));