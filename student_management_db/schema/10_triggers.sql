-- 10_triggers.sql
CREATE OR REPLACE FUNCTION assign_grade()
RETURNS TRIGGER AS $$
BEGIN
  IF NEW.marks < 40 THEN
    INSERT INTO final_grades(enrollment_id, grade) VALUES (NEW.enrollment_id, 'F');
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_assign_grade
AFTER INSERT ON internal_marks
FOR EACH ROW
EXECUTE FUNCTION assign_grade();
