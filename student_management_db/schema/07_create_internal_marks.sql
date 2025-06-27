-- 07_create_internal_marks.sql
CREATE TABLE internal_marks (
  id BIGINT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  enrollment_id BIGINT REFERENCES enrollments(id),
  marks NUMERIC(5, 2) CHECK (marks >= 0 AND marks <= 100)
);
