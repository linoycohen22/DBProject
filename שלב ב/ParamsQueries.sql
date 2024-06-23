--������ ������ �� �� ������ �� �������� ������� ����� �������
SELECT S.Sname AS StudentName, S.StudentId, G.GradeName
FROM Student S
JOIN Grade G ON S.GradeId = G.GradeId
WHERE G.GradeId = &<name=GradeId 
                    hint="write 4 numbers"
                    type ="integer">; 


                                
--������ ������� ������� ��� ���� ���� ������� ����� ��� �������� ����
SELECT S.Sname AS StudentName, S.StudentId
FROM Student S
WHERE S.BirthDate BETWEEN &<name=FirstDate type="date" hint="in DD/MM/YYYY format"> and &<name=LastDate type="date">;


--������ ��� �� ����� ��� ���� ����� �� �� �� ����� ������� ���� ����� ���
SELECT RoomId
FROM Schedule
WHERE Sday =&<name= "Day" list="sunday,monday,tuesday,wednesday,thursday,friday" type="string" 
                          hint="Choose a day from the list">;


--������ ������� ����� ��� ��� ������ ����

SELECT R.RoomName AS RoomName, C.CircleId
FROM Room R
JOIN Circle C ON R.RoomId = C.RoomId
WHERE C.CircleId =&<name=circleId
                    hint="write 6 numbers"
                    type ="integer">; 

