CREATE OR REPLACE FUNCTION get_teacher_classes(p_teacher_id IN NUMBER)
RETURN VARCHAR2
IS
  v_teacher_name VARCHAR2(20);
  v_class_count NUMBER;
  v_result VARCHAR2(100);
BEGIN
  -- קבלת שם המורה
  BEGIN
    SELECT TName INTO v_teacher_name
    FROM Teacher
    WHERE TeacherId = p_teacher_id;
  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      RAISE_APPLICATION_ERROR(-20001, 'teacher has not found');
  END;

  -- ספירת מספר הכיתות הייחודיות שהמורה מלמד
  SELECT COUNT(DISTINCT GradeId) INTO v_class_count
  FROM Schedule
  WHERE TeacherId = p_teacher_id;

  -- בניית מחרוזת התוצאה
  v_result := 'the teacher- ' || v_teacher_name || 'teach in- ' || v_class_count || ' grades.';

  RETURN v_result;

EXCEPTION
  WHEN OTHERS THEN
    RETURN 'ERROR: ' || SQLERRM;
END;
/
