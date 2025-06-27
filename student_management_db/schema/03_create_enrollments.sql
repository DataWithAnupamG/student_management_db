-- 03_create_enrollments.sql
CREATE TABLE enrollments (
  id BIGINT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  student_id BIGINT REFERENCES students(id),
  course_id BIGINT REFERENCES courses(id),
  enrollment_date DATE DEFAULT CURRENT_DATE
);
