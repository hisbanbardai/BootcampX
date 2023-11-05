CREATE TABLE
  cohorts (
    id SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR(255) NOT NULL,
    start_date DATE,
    end_date DATE
  );

create table
  students (
    id serial primary key not null,
    name varchar(255) not null,
    email varchar(255),
    phone varchar(255),
    github varchar(255),
    start_date date,
    end_date date,
    cohort_id INTEGER REFERENCES cohorts (id) ON DELETE CASCADE
  )