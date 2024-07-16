CREATE OR REPLACE PROCEDURE Main IS
  v_teacher_id INT := 1;      -- Example teacher ID
  v_classes_count NUMBER;
  v_student_id INT := 1001;   -- Example student ID
  v_grade_id INT := 2;        -- Example grade ID
  v_circle_id INT := 1;       -- Example circle ID
BEGIN
  -- Get the number of classes a teacher is handling
  v_classes_count := get_teacher_classes(v_teacher_id);
  DBMS_OUTPUT.PUT_LINE('Teacher with ID ' || v_teacher_id || ' is handling ' || v_classes_count || ' classes.');

  -- Add a student to a specific grade and circle
  addStudentToGradeAndCircle(
    'ישראל ישראלי',    -- Student name (assuming this is a parameter)
    v_student_id,       -- Student ID
    0501234567,         -- Student phone number (assuming this is a parameter)
    'רחוב הרצל 1, תל אביב',  -- Student address (assuming this is a parameter)
    TO_DATE('2010-01-01', 'YYYY-MM-DD'),  -- Student date of birth (assuming this is a parameter)
    v_grade_id,         -- Grade ID
    v_circle_id         -- Circle ID
  );

  DBMS_OUTPUT.PUT_LINE('Student with ID ' || v_student_id || ' has been added to grade ID ' || v_grade_id || ' and circle ID ' || v_circle_id);
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/
