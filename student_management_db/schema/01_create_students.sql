-- 01_create_students.sql
CREATE TABLE students (
  id BIGINT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  name TEXT NOT NULL,
  email TEXT UNIQUE NOT NULL,
  date_of_birth DATE,
  enrollment_date DATE DEFAULT CURRENT_DATE
);
