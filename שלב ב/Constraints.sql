
ALTER TABLE Room
ADD CONSTRAINT check_room_capacity CHECK (Capacity >= 5);

 insert into room (roomid,capacity,roomname)
 values (1000,2,'lustig');
 
 
 
ALTER TABLE Circle
MODIFY (StudentNum INT DEFAULT 20);
 
 
insert into circle(circleid,guide,roomid)
values (555,'davidisrael',85196);
 

 
ALTER TABLE Grade
MODIFY (StudentsNum INT NOT NULL);

 
insert into grade(gradeid,gradename)
values (666666,'shiraz') 
