CREATE OR REPLACE PROCEDURE addStudentToGradeAndCircle(
  p_student_name IN VARCHAR2,
  p_student_id IN NUMBER,
  p_contact IN NUMBER,
  p_address IN VARCHAR2,
  p_birth_date IN DATE,
  p_grade_id IN NUMBER,
  p_circle_id IN NUMBER
)
IS
  v_current_students NUMBER;
  v_max_students NUMBER;
BEGIN
  -- בדיקה אם יש מקום בכיתה
  SELECT StudentsNum INTO v_current_students
  FROM Grade
  WHERE GradeId = p_grade_id;
  
  SELECT Capacity INTO v_max_students
  FROM Room r
  JOIN Schedule s ON r.RoomId = s.RoomId
  WHERE s.GradeId = p_grade_id
  AND ROWNUM = 1;
  
  IF v_current_students >= v_max_students THEN
    RAISE_APPLICATION_ERROR(-20004, 'full capacity');
  END IF;
  
  -- הוספת התלמיד
  INSERT INTO Student (Sname, StudentId, Contact, Address, BirthDate, GradeId)
  VALUES (p_student_name, p_student_id, p_contact, p_address, p_birth_date, p_grade_id);
  
  -- עדכון מספר התלמידים בכיתה
  UPDATE Grade
  SET StudentsNum = StudentsNum + 1
  WHERE GradeId = p_grade_id;
  
  -- הוספת התלמיד לחוג
  INSERT INTO StudentInCircle (StudentId, CircleId)
  VALUES (p_student_id, p_circle_id);
  
  COMMIT;
EXCEPTION
  WHEN DUP_VAL_ON_INDEX THEN
    ROLLBACK;
    RAISE_APPLICATION_ERROR(-20005, 'student id already exists');
  WHEN OTHERS THEN
    ROLLBACK;
    RAISE_APPLICATION_ERROR(-20006,' ERROR : ' || SQLERRM);
END;
/
