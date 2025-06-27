-- 02_create_courses.sql
CREATE TABLE courses (
  id BIGINT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  name TEXT NOT NULL,
  description TEXT,
  credits INT NOT NULL
);
