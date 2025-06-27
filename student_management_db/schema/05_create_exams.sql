-- 05_create_exams.sql
CREATE TABLE exams (
  id BIGINT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  course_id BIGINT REFERENCES courses(id),
  name TEXT NOT NULL,
  date DATE NOT NULL
);
