CREATE OR REPLACE FUNCTION get_students_in_grade(p_grade_id IN NUMBER)
RETURN NUMBER
IS
  v_student_count NUMBER;
BEGIN
  SELECT StudentsNum INTO v_student_count
  FROM Grade
  WHERE GradeId = p_grade_id;
  
  RETURN v_student_count;
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    RAISE_APPLICATION_ERROR(-20001, 'כיתה לא נמצאה');
  WHEN OTHERS THEN
    RAISE_APPLICATION_ERROR(-20002, 'שגיאה לא צפויה: ' || SQLERRM);
END;
/
