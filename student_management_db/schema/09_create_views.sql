-- 09_create_views.sql
CREATE VIEW student_course_summary AS
SELECT 
  s.id AS student_id,
  s.name,
  c.name AS course_name,
  e.enrollment_date,
  fg.grade
FROM students s
JOIN enrollments e ON s.id = e.student_id
JOIN courses c ON c.id = e.course_id
LEFT JOIN final_grades fg ON e.id = fg.enrollment_id;

CREATE VIEW attendance_percentage AS
SELECT 
  e.student_id,
  e.course_id,
  COUNT(CASE WHEN a.status = 'Present' THEN 1 END) * 100.0 / COUNT(*) AS attendance_percent
FROM enrollments e
JOIN attendance a ON e.id = a.enrollment_id
GROUP BY e.student_id, e.course_id;
