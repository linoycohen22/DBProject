--Select rooms with their capacities that are used more than twice in the schedule.

SELECT R.RoomId, R.RoomName, R.Capacity, COUNT(S.ScheduleId) AS UsageCount
FROM Room R
JOIN Schedule S ON R.RoomId = S.RoomId
GROUP BY R.RoomId, R.RoomName, R.Capacity
HAVING COUNT(S.ScheduleId) > 2;

-- Select the teachers who teach in the room with the highest capacity, along with the room name and capacity.

SELECT T.TeacherId, T.TName, R.RoomName, R.Capacity
FROM Teacher T
JOIN Schedule S ON T.TeacherId = S.TeacherId
JOIN Room R ON S.RoomId = R.RoomId
WHERE R.Capacity = (
    SELECT MAX(Capacity)
    FROM Room
);


--Select the names of students and their teachers for those who have classes scheduled in the same room on the same day.

SELECT S.StudentId, S.Sname, T.TeacherId, T.TName, R.RoomName, SCH1.Sday
FROM Student S
JOIN Schedule SCH1 ON S.GradeId = SCH1.GradeId
JOIN Teacher T ON SCH1.TeacherId = T.TeacherId
JOIN Room R ON SCH1.RoomId = R.RoomId
WHERE EXISTS (
    SELECT 1
    FROM Schedule SCH2
    WHERE SCH2.RoomId = SCH1.RoomId
    AND SCH2.Sday = SCH1.Sday
    AND SCH2.GradeId != SCH1.GradeId
)
ORDER BY S.Sname;


-- Select the names of students and their ages in years, and their teachers, for students who have birthdays this month.

SELECT S.StudentId, S.Sname,
       FLOOR((SYSDATE - S.BirthDate) / 365.25) AS Age,
       T.TeacherId, T.TName
FROM Student S
JOIN Grade G ON S.GradeId = G.GradeId
JOIN Schedule SCH ON G.GradeId = SCH.GradeId
JOIN Teacher T ON SCH.TeacherId = T.TeacherId
WHERE EXTRACT(MONTH FROM S.BirthDate) = EXTRACT(MONTH FROM SYSDATE)
ORDER BY S.Sname;


-- 1. Delete all students who do not belong to any circle.
select *from Student
where StudentId NOT IN (SELECT StudentId FROM StudentInCircle);

DELETE FROM Student
WHERE StudentId NOT IN (SELECT StudentId FROM StudentInCircle);

commit;
select *from Student
where StudentId NOT IN (SELECT StudentId FROM StudentInCircle);



--2. Delete all teachers who do not have any schedules assigned to them.
select * from teacher
WHERE TeacherId NOT IN (SELECT DISTINCT TeacherId FROM Schedule);

DELETE FROM Teacher
WHERE TeacherId NOT IN (SELECT DISTINCT TeacherId FROM Schedule);

commit;
select * from teacher
WHERE TeacherId NOT IN (SELECT DISTINCT TeacherId FROM Schedule);


-- 1. Update the room capacity where the capacity is below 25 to be 30.
select * from room;
UPDATE Room
SET Capacity = 30
WHERE Capacity < 25;
commit;
select * from room;



-- 2. Update the subject of a spicific teacher

select * from teacher;
update teacher
set subject='english'
where tname='PragaMetcalf' 
commit;
select * from teacher;
