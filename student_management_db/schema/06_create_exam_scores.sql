-- 06_create_exam_scores.sql
CREATE TABLE exam_scores (
  id BIGINT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  exam_id BIGINT REFERENCES exams(id),
  student_id BIGINT REFERENCES students(id),
  score NUMERIC(5, 2) CHECK (score >= 0 AND score <= 100)
);
