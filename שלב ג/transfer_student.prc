CREATE OR REPLACE PROCEDURE transfer_student(
    p_student_id IN NUMBER,
    p_new_grade_id IN NUMBER
)
IS
    v_old_grade_id NUMBER;
    v_old_grade_name VARCHAR2(20);
    v_new_grade_name VARCHAR2(20);
    v_student_name VARCHAR2(50);
    v_new_grade_capacity NUMBER;
    v_new_grade_current_students NUMBER;
BEGIN
    -- קבלת פרטי התלמיד והכיתות
    SELECT s.GradeId, s.Sname, g1.GradeName, g2.GradeName, g2.StudentsNum
    INTO v_old_grade_id, v_student_name, v_old_grade_name, v_new_grade_name, v_new_grade_current_students
    FROM Student s
    JOIN Grade g1 ON s.GradeId = g1.GradeId
    JOIN Grade g2 ON g2.GradeId = p_new_grade_id
    WHERE s.StudentId = p_student_id;

    -- בדיקת קיבולת הכיתה החדשה
    SELECT MIN(r.Capacity)
    INTO v_new_grade_capacity
    FROM Room r
    JOIN Schedule s ON r.RoomId = s.RoomId
    WHERE s.GradeId = p_new_grade_id;

    IF v_new_grade_current_students >= v_new_grade_capacity THEN
        RAISE_APPLICATION_ERROR(-20001, 'the nwe class is full');
    END IF;

    -- העברת התלמיד לכיתה החדשה
    UPDATE Student
    SET GradeId = p_new_grade_id
    WHERE StudentId = p_student_id;

    -- עדכון מספר התלמידים בכיתות
    UPDATE Grade
    SET StudentsNum = StudentsNum - 1
    WHERE GradeId = v_old_grade_id;

    UPDATE Grade
    SET StudentsNum = StudentsNum + 1
    WHERE GradeId = p_new_grade_id;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('the student ' || v_student_name || ' Transferred successfully ' || 
                         v_old_grade_name || ' to the class ' || v_new_grade_name);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20002, 'student or class does not exist');
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20003, 'Error transferring student: ' || SQLERRM);
END;
/
