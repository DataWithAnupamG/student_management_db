-- 04_create_attendance.sql
CREATE TABLE attendance (
  id BIGINT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  enrollment_id BIGINT REFERENCES enrollments(id),
  date DATE NOT NULL,
  status TEXT CHECK (status IN ('Present', 'Absent', 'Excused')) NOT NULL
);
