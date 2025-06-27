-- 08_create_final_grades.sql
CREATE TABLE final_grades (
  id BIGINT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  enrollment_id BIGINT REFERENCES enrollments(id),
  grade TEXT CHECK (grade IN ('A', 'B', 'C', 'D', 'F'))
);
