insert into rivkashi.teacher(teacherid,tname,subject,tbirthdate)
values(222,'NaamaIluz','math', to_date('19-02-1997','dd-mm-yyyy'));

insert into rivkashi.grade(gradeid,gradename,studentsnum)
values (11,'Efrat',23);

insert into rivkashi.student(studentid,sname,contact,address,birthdate)
values (258,'Oriyacohen',569874, 'eli cohen 29 Bat Yam',to_date('19-03-2017','dd-mm-yyyy'));

insert into rivkashi.circle(circleid,studentnum,guide)
values (4444,21,'YaelOtmazgin');

insert into rivkashi.room(roomid,capacity,roomname)
values (1111,50,'Bareket');

insert into rivkashi.schedule(scheduleid,shour,sday)
values(5555,2,'monday');
commit;

select * from grade;
