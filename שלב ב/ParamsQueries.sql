--שאילתא שנותנת לך את הרשימה של התלמידים שלומדים בכיתה ספציפית
SELECT S.Sname AS StudentName, S.StudentId, G.GradeName
FROM Student S
JOIN Grade G ON S.GradeId = G.GradeId
WHERE G.GradeId = &<name=GradeId 
                    hint="write 4 numbers"
                    type ="integer">; 


                                
--שאילתא שמזינים תאריכים וזה אומר איזה תלמידים נולדו בין התאריכים האלה
SELECT S.Sname AS StudentName, S.StudentId
FROM Student S
WHERE S.BirthDate BETWEEN &<name=FirstDate type="date" hint="in DD/MM/YYYY format"> and &<name=LastDate type="date">;


--שאילתא שבה את בוחרת יום והיא מביאה לך את כל הימים שרשומים בלוז לאותו יום
SELECT RoomId
FROM Schedule
WHERE Sday =&<name= "Day" list="sunday,monday,tuesday,wednesday,thursday,friday" type="string" 
                          hint="Choose a day from the list">;


--שאילתא שמחזירה באיזה חדר חוג ספציפי נמצא

SELECT R.RoomName AS RoomName, C.CircleId
FROM Room R
JOIN Circle C ON R.RoomId = C.RoomId
WHERE C.CircleId =&<name=circleId
                    hint="write 6 numbers"
                    type ="integer">; 

