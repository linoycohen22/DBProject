CREATE OR REPLACE PROCEDURE Main1 AS
  v_teacher_id INT := 1; -- Example teacher ID
  v_grade_id INT := 2; -- Example grade ID
  v_student_id INT := 1; -- Example student ID
  v_circle_id INT := 1; -- Example circle ID
  v_student_count_before NUMBER;
  v_student_count_after NUMBER;
BEGIN
  -- Display initial number of students in the grade
  v_student_count_before := get_students_in_grade(v_grade_id);
  DBMS_OUTPUT.PUT_LINE('Initial number of students in grade ' || v_grade_id || ': ' || v_student_count_before);

  -- Transfer a  student to another grade
  transfer_student(v_student_id, v_grade_id);

  -- Display number of students in the grade after transfer
  v_student_count_after := get_students_in_grade(v_grade_id);
  DBMS_OUTPUT.PUT_LINE('Number of students in grade ' || v_grade_id || ' after transfer: ' || v_student_count_after);

  DBMS_OUTPUT.PUT_LINE('Student transfer process completed successfully.');
EXCEPTION 
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('ERROR: ' || SQLERRM); 
END;
/
