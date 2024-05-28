prompt PL/SQL Developer Export Tables for user RIVKASHI@LABDBWIN
prompt Created by rivkashi on יום שלישי 28 מאי 2024
set feedback off
set define off

prompt Creating ROOM...
create table ROOM
(
  roomid   INTEGER not null,
  capacity INTEGER not null,
  roomname VARCHAR2(20) not null
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  
  );
alter table ROOM
  add primary key (ROOMID)
  );

prompt Creating CIRCLE...
create table CIRCLE
(
  circleid   INTEGER not null,
  studentnum INTEGER not null,
  guide      VARCHAR2(20) not null,
  roomid     INTEGER not null
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  
   
  );
alter table CIRCLE
  add primary key (CIRCLEID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  
    
  );
alter table CIRCLE
  add foreign key (ROOMID)
  references ROOM (ROOMID);

prompt Creating GRADE...
create table GRADE
(
  gradeid     INTEGER not null,
  gradename   VARCHAR2(20) not null,
  studentsnum INTEGER not null
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  
   
  );
alter table GRADE
  add primary key (GRADEID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  
  );

prompt Creating TEACHER...
create table TEACHER
(
  teacherid  INTEGER not null,
  tname      VARCHAR2(20) not null,
  subject    VARCHAR2(20) not null,
  tbirthdate DATE not null
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  
   
  );
alter table TEACHER
  add primary key (TEACHERID)
  ;

prompt Creating SCHEDULE...
create table SCHEDULE
(
  scheduleid INTEGER not null,
  shour      INTEGER not null,
  sday       VARCHAR2(20) not null,
  roomid     INTEGER not null,
  gradeid    INTEGER not null,
  teacherid  INTEGER not null
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (

  );
alter table SCHEDULE
  add primary key (SCHEDULEID)
  
  ;
alter table SCHEDULE
  add foreign key (ROOMID)
  references ROOM (ROOMID);
alter table SCHEDULE
  add foreign key (GRADEID)
  references GRADE (GRADEID);
alter table SCHEDULE
  add foreign key (TEACHERID)
  references TEACHER (TEACHERID);

prompt Creating STUDENT...
create table STUDENT
(
  sname     VARCHAR2(20) not null,
  studentid INTEGER not null,
  contact   INTEGER not null,
  address   VARCHAR2(20) not null,
  birthdate DATE not null,
  gradeid   INTEGER not null
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
   ;
alter table STUDENT
  add primary key (STUDENTID)

  ;
alter table STUDENT
  add foreign key (GRADEID)
  references GRADE (GRADEID);

prompt Creating STUDENTINCIRCLE...
create table STUDENTINCIRCLE
(
  studentid INTEGER not null,
  circleid  INTEGER not null
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255;
alter table STUDENTINCIRCLE
  add primary key (STUDENTID, CIRCLEID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table STUDENTINCIRCLE
  add foreign key (STUDENTID)
  references STUDENT (STUDENTID);
alter table STUDENTINCIRCLE
  add foreign key (CIRCLEID)
  references CIRCLE (CIRCLEID);

prompt Disabling triggers for ROOM...
alter table ROOM disable all triggers;
prompt Disabling triggers for CIRCLE...
alter table CIRCLE disable all triggers;
prompt Disabling triggers for GRADE...
alter table GRADE disable all triggers;
prompt Disabling triggers for TEACHER...
alter table TEACHER disable all triggers;
prompt Disabling triggers for SCHEDULE...
alter table SCHEDULE disable all triggers;
prompt Disabling triggers for STUDENT...
alter table STUDENT disable all triggers;
prompt Disabling triggers for STUDENTINCIRCLE...
alter table STUDENTINCIRCLE disable all triggers;
prompt Disabling foreign key constraints for CIRCLE...
alter table CIRCLE disable constraint SYS_C00710846;
prompt Disabling foreign key constraints for SCHEDULE...
alter table SCHEDULE disable constraint SYS_C00712320;
alter table SCHEDULE disable constraint SYS_C00712321;
alter table SCHEDULE disable constraint SYS_C00712322;
prompt Disabling foreign key constraints for STUDENT...
alter table STUDENT disable constraint SYS_C00710854;
prompt Disabling foreign key constraints for STUDENTINCIRCLE...
alter table STUDENTINCIRCLE disable constraint SYS_C00710858;
alter table STUDENTINCIRCLE disable constraint SYS_C00710859;
prompt Deleting STUDENTINCIRCLE...
delete from STUDENTINCIRCLE;
commit;
prompt Deleting STUDENT...
delete from STUDENT;
commit;
prompt Deleting SCHEDULE...
delete from SCHEDULE;
commit;
prompt Deleting TEACHER...
delete from TEACHER;
commit;
prompt Deleting GRADE...
delete from GRADE;
commit;
prompt Deleting CIRCLE...
delete from CIRCLE;
commit;
prompt Deleting ROOM...
delete from ROOM;
commit;
prompt Loading ROOM...
insert into ROOM (roomid, capacity, roomname)
values (93895, 21, 'Ramat Gan');
insert into ROOM (roomid, capacity, roomname)
values (98786, 46, 'Redondo beach');
insert into ROOM (roomid, capacity, roomname)
values (53836, 31, 'Gliwice');
insert into ROOM (roomid, capacity, roomname)
values (96889, 43, 'Milan');
insert into ROOM (roomid, capacity, roomname)
values (66916, 42, 'Granada Hills');
insert into ROOM (roomid, capacity, roomname)
values (87481, 30, 'Stafford');
insert into ROOM (roomid, capacity, roomname)
values (38111, 28, 'Gdansk');
insert into ROOM (roomid, capacity, roomname)
values (35769, 31, 'Sheffield');
insert into ROOM (roomid, capacity, roomname)
values (16992, 30, 'Dunn loring');
insert into ROOM (roomid, capacity, roomname)
values (87177, 28, 'El Paso');
insert into ROOM (roomid, capacity, roomname)
values (47656, 46, 'Coslada');
insert into ROOM (roomid, capacity, roomname)
values (39772, 26, 'Moreno Valley');
insert into ROOM (roomid, capacity, roomname)
values (16121, 44, 'Hayward');
insert into ROOM (roomid, capacity, roomname)
values (87248, 29, 'Pointe-claire');
insert into ROOM (roomid, capacity, roomname)
values (93813, 21, 'Akita');
insert into ROOM (roomid, capacity, roomname)
values (77162, 29, 'Canberra');
insert into ROOM (roomid, capacity, roomname)
values (88916, 32, 'New Hope');
insert into ROOM (roomid, capacity, roomname)
values (25649, 49, 'Ben-Gurion');
insert into ROOM (roomid, capacity, roomname)
values (98485, 26, 'Ashdod');
insert into ROOM (roomid, capacity, roomname)
values (87671, 22, 'Lehi');
insert into ROOM (roomid, capacity, roomname)
values (47587, 34, 'Luzern');
insert into ROOM (roomid, capacity, roomname)
values (33688, 46, 'Massagno');
insert into ROOM (roomid, capacity, roomname)
values (48597, 48, 'Madrid');
insert into ROOM (roomid, capacity, roomname)
values (96163, 37, 'West Chester');
insert into ROOM (roomid, capacity, roomname)
values (44793, 35, 'Piacenza');
insert into ROOM (roomid, capacity, roomname)
values (76754, 37, 'Horsens');
insert into ROOM (roomid, capacity, roomname)
values (21293, 50, 'Wien');
insert into ROOM (roomid, capacity, roomname)
values (75698, 39, 'Rimini');
insert into ROOM (roomid, capacity, roomname)
values (48461, 29, 'Warren');
insert into ROOM (roomid, capacity, roomname)
values (49347, 49, 'Newnan');
insert into ROOM (roomid, capacity, roomname)
values (95891, 37, 'Milton Keynes');
insert into ROOM (roomid, capacity, roomname)
values (15896, 39, 'Roanoke');
insert into ROOM (roomid, capacity, roomname)
values (24635, 26, 'Sainte-foy');
insert into ROOM (roomid, capacity, roomname)
values (74543, 38, 'Claymont');
insert into ROOM (roomid, capacity, roomname)
values (74516, 46, 'Soroe');
insert into ROOM (roomid, capacity, roomname)
values (99962, 33, 'Lexington');
insert into ROOM (roomid, capacity, roomname)
values (64918, 36, 'Kobe');
insert into ROOM (roomid, capacity, roomname)
values (64994, 21, 'Highlands Ranch');
insert into ROOM (roomid, capacity, roomname)
values (24663, 35, 'Hilversum');
insert into ROOM (roomid, capacity, roomname)
values (75267, 49, 'Bangalore');
insert into ROOM (roomid, capacity, roomname)
values (21312, 32, 'Tallahassee');
insert into ROOM (roomid, capacity, roomname)
values (98253, 31, 'Hyderabad');
insert into ROOM (roomid, capacity, roomname)
values (42833, 30, 'Redondo beach');
insert into ROOM (roomid, capacity, roomname)
values (52525, 36, 'Carson City');
insert into ROOM (roomid, capacity, roomname)
values (72392, 29, 'Runcorn');
insert into ROOM (roomid, capacity, roomname)
values (85914, 31, 'San Francisco');
insert into ROOM (roomid, capacity, roomname)
values (75171, 38, 'Seattle');
insert into ROOM (roomid, capacity, roomname)
values (21997, 50, 'Zurich');
insert into ROOM (roomid, capacity, roomname)
values (26559, 27, 'Or-yehuda');
insert into ROOM (roomid, capacity, roomname)
values (57276, 47, 'Gliwice');
insert into ROOM (roomid, capacity, roomname)
values (94428, 35, 'Anchorage');
insert into ROOM (roomid, capacity, roomname)
values (27528, 20, 'Matsue');
insert into ROOM (roomid, capacity, roomname)
values (61515, 39, 'Valencia');
insert into ROOM (roomid, capacity, roomname)
values (26859, 30, 'Nashua');
insert into ROOM (roomid, capacity, roomname)
values (56734, 25, 'Toulouse');
insert into ROOM (roomid, capacity, roomname)
values (84227, 48, 'Billund');
insert into ROOM (roomid, capacity, roomname)
values (33745, 32, 'Wien');
insert into ROOM (roomid, capacity, roomname)
values (62818, 39, 'Stuttgart');
insert into ROOM (roomid, capacity, roomname)
values (14853, 44, 'Rorschach');
insert into ROOM (roomid, capacity, roomname)
values (28186, 41, 'Lengdorf');
insert into ROOM (roomid, capacity, roomname)
values (52391, 44, 'Bay Shore');
insert into ROOM (roomid, capacity, roomname)
values (11679, 27, 'Bruxelles');
insert into ROOM (roomid, capacity, roomname)
values (46785, 21, 'Sao roque');
insert into ROOM (roomid, capacity, roomname)
values (66393, 30, 'Edenbridge');
insert into ROOM (roomid, capacity, roomname)
values (26817, 44, 'Monroe');
insert into ROOM (roomid, capacity, roomname)
values (24957, 24, 'Cottbus');
insert into ROOM (roomid, capacity, roomname)
values (14722, 36, 'St Kilda');
insert into ROOM (roomid, capacity, roomname)
values (42293, 23, 'Mississauga');
insert into ROOM (roomid, capacity, roomname)
values (89235, 46, 'Annandale');
insert into ROOM (roomid, capacity, roomname)
values (44917, 34, 'Houma');
insert into ROOM (roomid, capacity, roomname)
values (44867, 39, 'Abbotsford');
insert into ROOM (roomid, capacity, roomname)
values (43119, 42, 'Pitstone');
insert into ROOM (roomid, capacity, roomname)
values (48689, 27, 'Piacenza');
insert into ROOM (roomid, capacity, roomname)
values (93793, 40, 'Herne');
insert into ROOM (roomid, capacity, roomname)
values (82341, 31, 'Santana do parna?ba');
insert into ROOM (roomid, capacity, roomname)
values (96817, 24, 'Lyngby');
insert into ROOM (roomid, capacity, roomname)
values (79655, 50, 'Juneau');
insert into ROOM (roomid, capacity, roomname)
values (31398, 22, 'Th?rishaus');
insert into ROOM (roomid, capacity, roomname)
values (93586, 44, 'Taoyuan');
insert into ROOM (roomid, capacity, roomname)
values (73963, 22, 'Waite Park');
insert into ROOM (roomid, capacity, roomname)
values (33312, 36, 'Phoenix');
insert into ROOM (roomid, capacity, roomname)
values (54438, 33, 'Saitama');
insert into ROOM (roomid, capacity, roomname)
values (57467, 20, 'Glenshaw');
insert into ROOM (roomid, capacity, roomname)
values (12757, 38, 'Dardilly');
insert into ROOM (roomid, capacity, roomname)
values (49456, 48, 'Doncaster');
insert into ROOM (roomid, capacity, roomname)
values (86655, 30, 'Aomori');
insert into ROOM (roomid, capacity, roomname)
values (28416, 45, 'Tallahassee');
insert into ROOM (roomid, capacity, roomname)
values (84258, 36, 'Columbus');
insert into ROOM (roomid, capacity, roomname)
values (87731, 41, 'Seatle');
insert into ROOM (roomid, capacity, roomname)
values (23456, 33, 'Ebersdorf');
insert into ROOM (roomid, capacity, roomname)
values (55815, 20, 'West Point');
insert into ROOM (roomid, capacity, roomname)
values (29994, 42, 'Sainte-foy');
insert into ROOM (roomid, capacity, roomname)
values (54251, 20, 'Leverkusen');
insert into ROOM (roomid, capacity, roomname)
values (77568, 30, 'Yucca');
insert into ROOM (roomid, capacity, roomname)
values (16164, 26, 'Milano');
insert into ROOM (roomid, capacity, roomname)
values (79181, 50, 'Olsztyn');
insert into ROOM (roomid, capacity, roomname)
values (43363, 44, 'Bay Shore');
insert into ROOM (roomid, capacity, roomname)
values (82184, 50, 'B?nes');
insert into ROOM (roomid, capacity, roomname)
values (63775, 46, 'Alessandria');
insert into ROOM (roomid, capacity, roomname)
values (94312, 21, 'Cuenca');
commit;
prompt 100 records committed...
insert into ROOM (roomid, capacity, roomname)
values (82674, 37, 'Tallahassee');
insert into ROOM (roomid, capacity, roomname)
values (28616, 43, 'Hunt Valley');
insert into ROOM (roomid, capacity, roomname)
values (92849, 42, 'Cesena');
insert into ROOM (roomid, capacity, roomname)
values (51727, 25, 'Vejle');
insert into ROOM (roomid, capacity, roomname)
values (83352, 29, 'Libertyville');
insert into ROOM (roomid, capacity, roomname)
values (82468, 29, 'Oak park');
insert into ROOM (roomid, capacity, roomname)
values (88878, 45, 'Shreveport');
insert into ROOM (roomid, capacity, roomname)
values (68224, 25, 'Mogi Guacu');
insert into ROOM (roomid, capacity, roomname)
values (89612, 47, 'Brookfield');
insert into ROOM (roomid, capacity, roomname)
values (37147, 25, 'Ashland');
insert into ROOM (roomid, capacity, roomname)
values (31652, 21, 'Matsuyama');
insert into ROOM (roomid, capacity, roomname)
values (36494, 22, 'Maserada sul Piave');
insert into ROOM (roomid, capacity, roomname)
values (16774, 44, 'Franklin');
insert into ROOM (roomid, capacity, roomname)
values (42183, 26, 'The Woodlands');
insert into ROOM (roomid, capacity, roomname)
values (94871, 47, 'Gauteng');
insert into ROOM (roomid, capacity, roomname)
values (34925, 36, 'Derwood');
insert into ROOM (roomid, capacity, roomname)
values (32255, 37, 'El Dorado Hills');
insert into ROOM (roomid, capacity, roomname)
values (58915, 42, 'Salem');
insert into ROOM (roomid, capacity, roomname)
values (55879, 44, 'Denver');
insert into ROOM (roomid, capacity, roomname)
values (89344, 25, 'Rome');
insert into ROOM (roomid, capacity, roomname)
values (37738, 45, 'Coimbra');
insert into ROOM (roomid, capacity, roomname)
values (54753, 31, 'Valencia');
insert into ROOM (roomid, capacity, roomname)
values (71644, 41, 'Sao caetano do sul');
insert into ROOM (roomid, capacity, roomname)
values (32429, 33, 'Olympia');
insert into ROOM (roomid, capacity, roomname)
values (44143, 25, 'Zagreb');
insert into ROOM (roomid, capacity, roomname)
values (37771, 29, 'Shizuoka');
insert into ROOM (roomid, capacity, roomname)
values (25366, 35, 'Tartu');
insert into ROOM (roomid, capacity, roomname)
values (57229, 49, 'P?tion-ville');
insert into ROOM (roomid, capacity, roomname)
values (81371, 47, 'Novara');
insert into ROOM (roomid, capacity, roomname)
values (84588, 44, 'Bellevue');
insert into ROOM (roomid, capacity, roomname)
values (42333, 41, 'El Paso');
insert into ROOM (roomid, capacity, roomname)
values (17243, 48, 'Shelton');
insert into ROOM (roomid, capacity, roomname)
values (57669, 47, 'Sidney');
insert into ROOM (roomid, capacity, roomname)
values (82559, 42, 'Goiania');
insert into ROOM (roomid, capacity, roomname)
values (86714, 43, 'Tustin');
insert into ROOM (roomid, capacity, roomname)
values (42281, 26, 'Slidel');
insert into ROOM (roomid, capacity, roomname)
values (78969, 32, 'Massagno');
insert into ROOM (roomid, capacity, roomname)
values (19564, 21, 'Coquitlam');
insert into ROOM (roomid, capacity, roomname)
values (73745, 35, 'Changwon-si');
insert into ROOM (roomid, capacity, roomname)
values (22175, 28, 'Sheffield');
insert into ROOM (roomid, capacity, roomname)
values (56637, 35, 'Chicago');
insert into ROOM (roomid, capacity, roomname)
values (34189, 47, 'Niles');
insert into ROOM (roomid, capacity, roomname)
values (95984, 49, 'Southend on Sea');
insert into ROOM (roomid, capacity, roomname)
values (26739, 20, 'Cypress');
insert into ROOM (roomid, capacity, roomname)
values (25964, 38, 'Bedfordshire');
insert into ROOM (roomid, capacity, roomname)
values (52828, 25, 'Darmstadt');
insert into ROOM (roomid, capacity, roomname)
values (71211, 43, 'Kungens kurva');
insert into ROOM (roomid, capacity, roomname)
values (46683, 44, 'Gettysburg');
insert into ROOM (roomid, capacity, roomname)
values (36615, 25, 'L''union');
insert into ROOM (roomid, capacity, roomname)
values (17683, 27, 'South Hadley');
insert into ROOM (roomid, capacity, roomname)
values (93777, 43, 'Balmoral');
insert into ROOM (roomid, capacity, roomname)
values (15917, 43, 'Tempe');
insert into ROOM (roomid, capacity, roomname)
values (45757, 27, 'Rorschach');
insert into ROOM (roomid, capacity, roomname)
values (61737, 26, 'Sao roque');
insert into ROOM (roomid, capacity, roomname)
values (33675, 26, 'Stellenbosch');
insert into ROOM (roomid, capacity, roomname)
values (11898, 37, 'Mumbai');
insert into ROOM (roomid, capacity, roomname)
values (18597, 32, 'Allen');
insert into ROOM (roomid, capacity, roomname)
values (64288, 32, 'Sursee');
insert into ROOM (roomid, capacity, roomname)
values (61278, 32, 'Roma');
insert into ROOM (roomid, capacity, roomname)
values (18931, 23, 'Barbengo');
insert into ROOM (roomid, capacity, roomname)
values (11112, 43, 'Cary');
insert into ROOM (roomid, capacity, roomname)
values (43982, 25, 'Warren');
insert into ROOM (roomid, capacity, roomname)
values (66121, 36, 'Lehi');
insert into ROOM (roomid, capacity, roomname)
values (63632, 30, 'Sacramento');
insert into ROOM (roomid, capacity, roomname)
values (33528, 38, 'Biel');
insert into ROOM (roomid, capacity, roomname)
values (63558, 38, 'Bautzen');
insert into ROOM (roomid, capacity, roomname)
values (47523, 22, 'Santa rita sapuca?');
insert into ROOM (roomid, capacity, roomname)
values (71228, 31, 'Kopavogur');
insert into ROOM (roomid, capacity, roomname)
values (75184, 31, 'Bloomington');
insert into ROOM (roomid, capacity, roomname)
values (46923, 24, 'St Jean de Soudain');
insert into ROOM (roomid, capacity, roomname)
values (95557, 23, 'Mablethorpe');
insert into ROOM (roomid, capacity, roomname)
values (94177, 34, 'Valencia');
insert into ROOM (roomid, capacity, roomname)
values (85965, 27, 'Hartmannsdorf');
insert into ROOM (roomid, capacity, roomname)
values (98925, 30, 'Bellevue');
insert into ROOM (roomid, capacity, roomname)
values (78872, 28, 'Essex');
insert into ROOM (roomid, capacity, roomname)
values (84983, 35, 'Menlo Park');
insert into ROOM (roomid, capacity, roomname)
values (39967, 36, 'Guelph');
insert into ROOM (roomid, capacity, roomname)
values (76999, 46, 'Swannanoa');
insert into ROOM (roomid, capacity, roomname)
values (11579, 46, 'Brisbane');
insert into ROOM (roomid, capacity, roomname)
values (26816, 39, 'Athens');
insert into ROOM (roomid, capacity, roomname)
values (95787, 22, 'Mainz-kastel');
insert into ROOM (roomid, capacity, roomname)
values (68381, 39, 'W?rth');
insert into ROOM (roomid, capacity, roomname)
values (83265, 43, 'Dallas');
insert into ROOM (roomid, capacity, roomname)
values (62561, 23, 'Cuenca');
insert into ROOM (roomid, capacity, roomname)
values (74595, 30, 'Valencia');
insert into ROOM (roomid, capacity, roomname)
values (33636, 45, 'Neustadt');
insert into ROOM (roomid, capacity, roomname)
values (48863, 48, 'Eindhoven');
insert into ROOM (roomid, capacity, roomname)
values (53498, 26, 'Harrisburg');
insert into ROOM (roomid, capacity, roomname)
values (21175, 27, 'Blue bell');
insert into ROOM (roomid, capacity, roomname)
values (69628, 33, 'Johor Bahru');
insert into ROOM (roomid, capacity, roomname)
values (93499, 47, 'Gauteng');
insert into ROOM (roomid, capacity, roomname)
values (38665, 46, 'Le chesnay');
insert into ROOM (roomid, capacity, roomname)
values (79571, 46, 'Horsens');
insert into ROOM (roomid, capacity, roomname)
values (86294, 50, 'Halfway house');
insert into ROOM (roomid, capacity, roomname)
values (74963, 25, 'Moreno Valley');
insert into ROOM (roomid, capacity, roomname)
values (24645, 45, 'Kristiansand');
insert into ROOM (roomid, capacity, roomname)
values (56115, 20, 'Bartlesville');
insert into ROOM (roomid, capacity, roomname)
values (29732, 39, 'Belgrad');
insert into ROOM (roomid, capacity, roomname)
values (37333, 45, 'Trumbull');
insert into ROOM (roomid, capacity, roomname)
values (92184, 27, 'Monterey');
commit;
prompt 200 records committed...
insert into ROOM (roomid, capacity, roomname)
values (72185, 47, 'Oosterhout');
insert into ROOM (roomid, capacity, roomname)
values (85196, 49, 'Dunn loring');
insert into ROOM (roomid, capacity, roomname)
values (23384, 24, 'Dublin');
insert into ROOM (roomid, capacity, roomname)
values (14951, 40, 'Singapore');
insert into ROOM (roomid, capacity, roomname)
values (75998, 32, 'Granada Hills');
insert into ROOM (roomid, capacity, roomname)
values (77539, 38, 'Moreno Valley');
insert into ROOM (roomid, capacity, roomname)
values (13995, 38, 'Monmouth');
insert into ROOM (roomid, capacity, roomname)
values (31429, 32, 'Newbury');
insert into ROOM (roomid, capacity, roomname)
values (27754, 39, 'S. Bernardo do Campo');
insert into ROOM (roomid, capacity, roomname)
values (66274, 30, 'Tilburg');
insert into ROOM (roomid, capacity, roomname)
values (91385, 27, 'Edwardstown');
insert into ROOM (roomid, capacity, roomname)
values (94475, 37, 'Chicago');
insert into ROOM (roomid, capacity, roomname)
values (52221, 22, 'Brampton');
insert into ROOM (roomid, capacity, roomname)
values (54868, 32, 'Rimini');
insert into ROOM (roomid, capacity, roomname)
values (43288, 37, 'Valencia');
insert into ROOM (roomid, capacity, roomname)
values (43124, 41, 'Hercules');
insert into ROOM (roomid, capacity, roomname)
values (44429, 22, 'Jerusalem');
insert into ROOM (roomid, capacity, roomname)
values (71721, 47, 'Allen');
insert into ROOM (roomid, capacity, roomname)
values (61851, 35, 'Redwood City');
insert into ROOM (roomid, capacity, roomname)
values (35372, 40, 'Wehrheim');
insert into ROOM (roomid, capacity, roomname)
values (56245, 50, 'Gliwice');
insert into ROOM (roomid, capacity, roomname)
values (91258, 37, 'Farnham');
insert into ROOM (roomid, capacity, roomname)
values (73918, 36, 'Pa?o de Arcos');
insert into ROOM (roomid, capacity, roomname)
values (79869, 42, 'Lyngby');
insert into ROOM (roomid, capacity, roomname)
values (13531, 24, 'Newcastle upon Tyne');
insert into ROOM (roomid, capacity, roomname)
values (43958, 36, 'Richmond');
insert into ROOM (roomid, capacity, roomname)
values (95114, 49, 'Alessandria');
insert into ROOM (roomid, capacity, roomname)
values (35988, 39, 'Billerica');
insert into ROOM (roomid, capacity, roomname)
values (34146, 22, 'Maryville');
insert into ROOM (roomid, capacity, roomname)
values (39377, 39, 'Cape town');
insert into ROOM (roomid, capacity, roomname)
values (58191, 29, 'Cannock');
insert into ROOM (roomid, capacity, roomname)
values (38859, 25, 'Daejeon');
insert into ROOM (roomid, capacity, roomname)
values (81375, 22, 'Jacksonville');
insert into ROOM (roomid, capacity, roomname)
values (65917, 39, 'Sundsvall');
insert into ROOM (roomid, capacity, roomname)
values (25785, 30, 'Barcelona');
insert into ROOM (roomid, capacity, roomname)
values (77146, 25, 'Le chesnay');
insert into ROOM (roomid, capacity, roomname)
values (77962, 41, 'Gelsenkirchen');
insert into ROOM (roomid, capacity, roomname)
values (44776, 45, 'Wageningen');
insert into ROOM (roomid, capacity, roomname)
values (18351, 27, 'Cincinnati');
insert into ROOM (roomid, capacity, roomname)
values (25454, 33, 'Mogliano Veneto');
insert into ROOM (roomid, capacity, roomname)
values (33559, 20, 'Juno Beach');
insert into ROOM (roomid, capacity, roomname)
values (21734, 35, 'Piacenza');
insert into ROOM (roomid, capacity, roomname)
values (62156, 45, 'Melrose');
insert into ROOM (roomid, capacity, roomname)
values (39559, 36, 'Eschen');
insert into ROOM (roomid, capacity, roomname)
values (84418, 33, 'Magstadt');
insert into ROOM (roomid, capacity, roomname)
values (39163, 34, 'Sarasota');
insert into ROOM (roomid, capacity, roomname)
values (96556, 20, 'San Diego');
insert into ROOM (roomid, capacity, roomname)
values (12491, 45, 'New orleans');
insert into ROOM (roomid, capacity, roomname)
values (97984, 32, 'Tottori');
insert into ROOM (roomid, capacity, roomname)
values (26379, 42, 'Saint Ouen');
insert into ROOM (roomid, capacity, roomname)
values (11216, 23, 'Brentwood');
insert into ROOM (roomid, capacity, roomname)
values (14486, 42, 'Las Vegas');
insert into ROOM (roomid, capacity, roomname)
values (48235, 29, 'Macclesfield');
insert into ROOM (roomid, capacity, roomname)
values (19792, 35, 'Englewood Cliffs');
insert into ROOM (roomid, capacity, roomname)
values (44579, 38, 'Roma');
insert into ROOM (roomid, capacity, roomname)
values (62334, 36, 'West Chester');
insert into ROOM (roomid, capacity, roomname)
values (33914, 50, 'Kaunas');
insert into ROOM (roomid, capacity, roomname)
values (15897, 22, 'Ohita');
insert into ROOM (roomid, capacity, roomname)
values (18217, 45, 'Waterloo');
insert into ROOM (roomid, capacity, roomname)
values (72834, 27, 'Doncaster');
insert into ROOM (roomid, capacity, roomname)
values (75523, 38, 'South Weber');
insert into ROOM (roomid, capacity, roomname)
values (84766, 47, 'Conshohocken');
insert into ROOM (roomid, capacity, roomname)
values (58925, 32, 'Battle Creek');
insert into ROOM (roomid, capacity, roomname)
values (35834, 45, 'Hunt Valley');
insert into ROOM (roomid, capacity, roomname)
values (86288, 30, 'Varzea grande');
insert into ROOM (roomid, capacity, roomname)
values (22694, 29, 'Mumbai');
insert into ROOM (roomid, capacity, roomname)
values (64343, 28, 'Fuerth');
insert into ROOM (roomid, capacity, roomname)
values (43762, 20, 'Ani?res');
insert into ROOM (roomid, capacity, roomname)
values (99266, 46, 'Mount Laurel');
insert into ROOM (roomid, capacity, roomname)
values (56112, 46, 'Kuopio');
insert into ROOM (roomid, capacity, roomname)
values (26168, 42, 'Telford');
insert into ROOM (roomid, capacity, roomname)
values (46966, 21, 'Ellicott City');
insert into ROOM (roomid, capacity, roomname)
values (93852, 39, 'Burlington');
insert into ROOM (roomid, capacity, roomname)
values (59281, 42, 'Takapuna');
insert into ROOM (roomid, capacity, roomname)
values (75313, 49, 'Kaysville');
insert into ROOM (roomid, capacity, roomname)
values (77522, 22, 'Barcelona');
insert into ROOM (roomid, capacity, roomname)
values (63961, 50, 'Thessaloniki');
insert into ROOM (roomid, capacity, roomname)
values (76657, 49, 'Parma');
insert into ROOM (roomid, capacity, roomname)
values (74526, 38, 'Giessen');
insert into ROOM (roomid, capacity, roomname)
values (71868, 21, 'Istanbul');
insert into ROOM (roomid, capacity, roomname)
values (42189, 30, 'Los Angeles');
insert into ROOM (roomid, capacity, roomname)
values (93963, 22, 'Baarn');
insert into ROOM (roomid, capacity, roomname)
values (69775, 48, 'North Wales');
insert into ROOM (roomid, capacity, roomname)
values (66558, 38, 'Schaumburg');
insert into ROOM (roomid, capacity, roomname)
values (11363, 20, 'East sussex');
insert into ROOM (roomid, capacity, roomname)
values (88414, 45, 'Novara');
insert into ROOM (roomid, capacity, roomname)
values (13877, 43, 'Maidstone');
insert into ROOM (roomid, capacity, roomname)
values (34184, 32, 'El Segundo');
insert into ROOM (roomid, capacity, roomname)
values (62246, 21, 'Oak Park');
insert into ROOM (roomid, capacity, roomname)
values (16477, 33, 'Double Oak');
insert into ROOM (roomid, capacity, roomname)
values (59221, 46, 'Cambridge');
insert into ROOM (roomid, capacity, roomname)
values (75595, 50, 'Michendorf');
insert into ROOM (roomid, capacity, roomname)
values (62761, 48, 'Snoqualmie');
insert into ROOM (roomid, capacity, roomname)
values (92957, 38, 'El Dorado Hills');
insert into ROOM (roomid, capacity, roomname)
values (13479, 39, 'Zafferana Etnea');
insert into ROOM (roomid, capacity, roomname)
values (28659, 37, 'Rosemead');
insert into ROOM (roomid, capacity, roomname)
values (59158, 26, 'Hampton');
insert into ROOM (roomid, capacity, roomname)
values (25723, 48, 'Marietta');
insert into ROOM (roomid, capacity, roomname)
values (89678, 37, 'Moorestown');
insert into ROOM (roomid, capacity, roomname)
values (92728, 25, 'Marburg');
commit;
prompt 300 records committed...
insert into ROOM (roomid, capacity, roomname)
values (16781, 44, 'Westport');
insert into ROOM (roomid, capacity, roomname)
values (46478, 46, 'Oberwangen');
insert into ROOM (roomid, capacity, roomname)
values (18374, 23, 'Santa Clarat');
insert into ROOM (roomid, capacity, roomname)
values (92352, 27, 'Fairbanks');
insert into ROOM (roomid, capacity, roomname)
values (13284, 39, 'Harsum');
insert into ROOM (roomid, capacity, roomname)
values (28224, 31, 'Appenzell');
insert into ROOM (roomid, capacity, roomname)
values (57125, 49, 'Unionville');
insert into ROOM (roomid, capacity, roomname)
values (15329, 43, 'Bruxelles');
insert into ROOM (roomid, capacity, roomname)
values (92229, 37, 'Natal');
insert into ROOM (roomid, capacity, roomname)
values (63219, 29, 'Berwyn');
insert into ROOM (roomid, capacity, roomname)
values (48729, 38, 'Crete');
insert into ROOM (roomid, capacity, roomname)
values (21716, 26, 'Middletown');
insert into ROOM (roomid, capacity, roomname)
values (67712, 42, 'Verwood');
insert into ROOM (roomid, capacity, roomname)
values (69233, 41, 'Haverhill');
insert into ROOM (roomid, capacity, roomname)
values (67123, 44, 'Monmouth');
insert into ROOM (roomid, capacity, roomname)
values (14611, 44, 'San Ramon');
insert into ROOM (roomid, capacity, roomname)
values (52933, 22, 'Juazeiro');
insert into ROOM (roomid, capacity, roomname)
values (41184, 50, 'Loveland');
insert into ROOM (roomid, capacity, roomname)
values (54698, 45, 'Palo Alto');
insert into ROOM (roomid, capacity, roomname)
values (44767, 34, 'Stony Point');
insert into ROOM (roomid, capacity, roomname)
values (39173, 37, 'Matsuyama');
insert into ROOM (roomid, capacity, roomname)
values (19135, 36, 'Portland');
insert into ROOM (roomid, capacity, roomname)
values (16461, 31, 'Winterthur');
insert into ROOM (roomid, capacity, roomname)
values (74748, 20, 'Ashdod');
insert into ROOM (roomid, capacity, roomname)
values (18687, 27, 'Sacramento');
insert into ROOM (roomid, capacity, roomname)
values (56765, 40, 'Moreno Valley');
insert into ROOM (roomid, capacity, roomname)
values (23471, 26, 'Nanaimo');
insert into ROOM (roomid, capacity, roomname)
values (97848, 41, 'Westfield');
insert into ROOM (roomid, capacity, roomname)
values (84283, 34, 'Swannanoa');
insert into ROOM (roomid, capacity, roomname)
values (94322, 29, 'Rua eteno');
insert into ROOM (roomid, capacity, roomname)
values (31141, 29, 'Radovljica');
insert into ROOM (roomid, capacity, roomname)
values (64619, 38, 'Ohtsu');
insert into ROOM (roomid, capacity, roomname)
values (35711, 37, 'Edwardstown');
insert into ROOM (roomid, capacity, roomname)
values (75149, 50, 'Mount Olive');
insert into ROOM (roomid, capacity, roomname)
values (14918, 44, 'West Sussex');
insert into ROOM (roomid, capacity, roomname)
values (68682, 29, 'Lisboa');
insert into ROOM (roomid, capacity, roomname)
values (94352, 21, 'Berwyn');
insert into ROOM (roomid, capacity, roomname)
values (35287, 38, 'Vilafranca Penedes');
insert into ROOM (roomid, capacity, roomname)
values (79742, 46, 'Fairbanks');
insert into ROOM (roomid, capacity, roomname)
values (19686, 39, 'Oshkosh');
insert into ROOM (roomid, capacity, roomname)
values (57955, 48, 'Berkeley');
insert into ROOM (roomid, capacity, roomname)
values (72236, 34, 'Piacenza');
insert into ROOM (roomid, capacity, roomname)
values (32476, 30, 'Oosterhout');
insert into ROOM (roomid, capacity, roomname)
values (28214, 22, 'Dortmund');
insert into ROOM (roomid, capacity, roomname)
values (61336, 37, 'Birmingham');
insert into ROOM (roomid, capacity, roomname)
values (72726, 36, 'Stafford');
insert into ROOM (roomid, capacity, roomname)
values (87378, 20, 'Albuquerque');
insert into ROOM (roomid, capacity, roomname)
values (59122, 42, 'Ottawa');
insert into ROOM (roomid, capacity, roomname)
values (56843, 31, 'Reston');
insert into ROOM (roomid, capacity, roomname)
values (14148, 24, 'Traralgon');
insert into ROOM (roomid, capacity, roomname)
values (65998, 35, 'Verwood');
insert into ROOM (roomid, capacity, roomname)
values (66981, 47, 'Vantaa');
insert into ROOM (roomid, capacity, roomname)
values (72457, 36, 'Cannock');
insert into ROOM (roomid, capacity, roomname)
values (72112, 33, 'Stone Mountain');
insert into ROOM (roomid, capacity, roomname)
values (73721, 46, 'Cesena');
insert into ROOM (roomid, capacity, roomname)
values (99144, 37, 'Kaysville');
insert into ROOM (roomid, capacity, roomname)
values (31742, 41, 'Sevilla');
insert into ROOM (roomid, capacity, roomname)
values (79548, 38, 'Tilburg');
insert into ROOM (roomid, capacity, roomname)
values (37619, 40, 'Rockford');
insert into ROOM (roomid, capacity, roomname)
values (11852, 42, 'Bellevue');
insert into ROOM (roomid, capacity, roomname)
values (52617, 30, 'Royersford');
insert into ROOM (roomid, capacity, roomname)
values (71955, 47, 'Ilmenau');
insert into ROOM (roomid, capacity, roomname)
values (38289, 46, 'Archbold');
insert into ROOM (roomid, capacity, roomname)
values (86998, 36, 'Lublin');
insert into ROOM (roomid, capacity, roomname)
values (17282, 41, 'Edwardstown');
insert into ROOM (roomid, capacity, roomname)
values (79645, 42, 'Sihung-si');
insert into ROOM (roomid, capacity, roomname)
values (69274, 44, 'Milton');
insert into ROOM (roomid, capacity, roomname)
values (76645, 28, 'Raleigh');
insert into ROOM (roomid, capacity, roomname)
values (18713, 29, 'Lexington');
insert into ROOM (roomid, capacity, roomname)
values (83422, 39, 'Fairview Heights');
insert into ROOM (roomid, capacity, roomname)
values (77239, 46, 'Rockland');
insert into ROOM (roomid, capacity, roomname)
values (33729, 31, 'Somerset');
insert into ROOM (roomid, capacity, roomname)
values (25192, 42, 'Horb');
insert into ROOM (roomid, capacity, roomname)
values (75927, 45, 'Cambridge');
insert into ROOM (roomid, capacity, roomname)
values (25699, 36, 'Philadelphia');
insert into ROOM (roomid, capacity, roomname)
values (68134, 31, 'Jakarta');
insert into ROOM (roomid, capacity, roomname)
values (19741, 39, 'Orleans');
insert into ROOM (roomid, capacity, roomname)
values (22145, 45, 'Kansas City');
insert into ROOM (roomid, capacity, roomname)
values (34443, 44, 'Lummen');
insert into ROOM (roomid, capacity, roomname)
values (72275, 22, 'Waterloo');
insert into ROOM (roomid, capacity, roomname)
values (72718, 35, 'New orleans');
insert into ROOM (roomid, capacity, roomname)
values (17411, 48, 'Salvador');
insert into ROOM (roomid, capacity, roomname)
values (69737, 30, 'Szazhalombatta');
insert into ROOM (roomid, capacity, roomname)
values (33599, 26, 'Vienna');
insert into ROOM (roomid, capacity, roomname)
values (32492, 25, 'Kaunas');
insert into ROOM (roomid, capacity, roomname)
values (83467, 50, 'Eindhoven');
insert into ROOM (roomid, capacity, roomname)
values (33799, 36, 'Batavia');
insert into ROOM (roomid, capacity, roomname)
values (47681, 35, 'Elche');
insert into ROOM (roomid, capacity, roomname)
values (59111, 36, 'Lenexa');
insert into ROOM (roomid, capacity, roomname)
values (37555, 30, 'Pensacola');
insert into ROOM (roomid, capacity, roomname)
values (73654, 36, 'Cambridge');
insert into ROOM (roomid, capacity, roomname)
values (31769, 47, 'Monterey');
insert into ROOM (roomid, capacity, roomname)
values (57395, 37, 'Kristiansand');
insert into ROOM (roomid, capacity, roomname)
values (38821, 36, 'Chaam');
insert into ROOM (roomid, capacity, roomname)
values (83194, 50, 'Kaunas');
insert into ROOM (roomid, capacity, roomname)
values (14183, 48, 'North Point');
insert into ROOM (roomid, capacity, roomname)
values (94183, 25, 'Bismarck');
insert into ROOM (roomid, capacity, roomname)
values (69838, 31, 'Daejeon');
insert into ROOM (roomid, capacity, roomname)
values (33297, 32, 'Blacksburg');
insert into ROOM (roomid, capacity, roomname)
values (38487, 33, 'Duluth');
commit;
prompt 400 records committed...
insert into ROOM (roomid, capacity, roomname)
values (95697, 22, 'Northbrook');
insert into ROOM (roomid, capacity, roomname)
values (69988, 35, 'Vancouver');
insert into ROOM (roomid, capacity, roomname)
values (73821, 20, 'Melbourne');
insert into ROOM (roomid, capacity, roomname)
values (29819, 22, 'Oxon');
insert into ROOM (roomid, capacity, roomname)
values (45215, 31, 'Oxford');
insert into ROOM (roomid, capacity, roomname)
values (51984, 44, 'Toledo');
insert into ROOM (roomid, capacity, roomname)
values (26328, 41, 'Reston');
insert into ROOM (roomid, capacity, roomname)
values (78748, 48, 'Espoo');
insert into ROOM (roomid, capacity, roomname)
values (95947, 28, 'El Dorado Hills');
insert into ROOM (roomid, capacity, roomname)
values (55782, 27, 'Helsingborg');
insert into ROOM (roomid, capacity, roomname)
values (53872, 38, 'Malm?');
insert into ROOM (roomid, capacity, roomname)
values (41182, 42, 'Ribeirao preto');
insert into ROOM (roomid, capacity, roomname)
values (71685, 20, 'Stuttgart');
insert into ROOM (roomid, capacity, roomname)
values (62871, 30, 'Baarn');
insert into ROOM (roomid, capacity, roomname)
values (66476, 36, 'Hohenfels');
insert into ROOM (roomid, capacity, roomname)
values (81659, 36, 'Schaumburg');
insert into ROOM (roomid, capacity, roomname)
values (34948, 35, 'Carlsbad');
insert into ROOM (roomid, capacity, roomname)
values (18648, 29, 'Chinnor');
insert into ROOM (roomid, capacity, roomname)
values (32775, 47, 'Lucca');
insert into ROOM (roomid, capacity, roomname)
values (91795, 42, 'New Fairfield');
insert into ROOM (roomid, capacity, roomname)
values (21635, 46, 'Durban');
insert into ROOM (roomid, capacity, roomname)
values (34174, 33, 'New orleans');
insert into ROOM (roomid, capacity, roomname)
values (97387, 32, 'Jakarta');
insert into ROOM (roomid, capacity, roomname)
values (75861, 31, 'Tsu');
insert into ROOM (roomid, capacity, roomname)
values (63761, 47, 'S?o paulo');
insert into ROOM (roomid, capacity, roomname)
values (31293, 35, 'Shreveport');
insert into ROOM (roomid, capacity, roomname)
values (43873, 34, 'Santa Fe');
insert into ROOM (roomid, capacity, roomname)
values (45592, 41, 'Westport');
insert into ROOM (roomid, capacity, roomname)
values (12145, 50, 'Laguna Bbeach');
insert into ROOM (roomid, capacity, roomname)
values (63352, 24, 'Ben-Gurion');
insert into ROOM (roomid, capacity, roomname)
values (46573, 38, 'Chambersburg');
insert into ROOM (roomid, capacity, roomname)
values (94667, 27, 'Johannesburg');
insert into ROOM (roomid, capacity, roomname)
values (28231, 34, 'Taoyuan');
insert into ROOM (roomid, capacity, roomname)
values (53273, 39, 'Los Alamos');
insert into ROOM (roomid, capacity, roomname)
values (62118, 27, 'Bloomington');
insert into ROOM (roomid, capacity, roomname)
values (57718, 32, 'Pensacola');
insert into ROOM (roomid, capacity, roomname)
values (48541, 39, 'Woodland Hills');
insert into ROOM (roomid, capacity, roomname)
values (25827, 26, 'Harrisburg');
insert into ROOM (roomid, capacity, roomname)
values (42951, 34, 'Kwun Tong');
insert into ROOM (roomid, capacity, roomname)
values (16349, 24, 'Knoxville');
insert into ROOM (roomid, capacity, roomname)
values (31848, 23, 'Mogliano Veneto');
insert into ROOM (roomid, capacity, roomname)
values (72199, 49, 'Oklahoma city');
insert into ROOM (roomid, capacity, roomname)
values (62664, 21, 'Sutton');
insert into ROOM (roomid, capacity, roomname)
values (49125, 37, 'Waco');
insert into ROOM (roomid, capacity, roomname)
values (38765, 35, 'Akron');
insert into ROOM (roomid, capacity, roomname)
values (67833, 48, 'Echirolles');
insert into ROOM (roomid, capacity, roomname)
values (79168, 37, 'Webster Groves');
insert into ROOM (roomid, capacity, roomname)
values (49876, 25, 'Banbury');
insert into ROOM (roomid, capacity, roomname)
values (86482, 35, 'Giessen');
insert into ROOM (roomid, capacity, roomname)
values (81524, 30, 'Singapore');
insert into ROOM (roomid, capacity, roomname)
values (37675, 41, 'Columbia');
insert into ROOM (roomid, capacity, roomname)
values (56119, 50, 'Offenburg');
insert into ROOM (roomid, capacity, roomname)
values (69389, 41, 'Richmond');
insert into ROOM (roomid, capacity, roomname)
values (49584, 34, 'Peachtree City');
insert into ROOM (roomid, capacity, roomname)
values (73379, 50, 'K?ln');
insert into ROOM (roomid, capacity, roomname)
values (18255, 31, 'Santa Fe');
insert into ROOM (roomid, capacity, roomname)
values (98764, 27, 'Salzburg');
insert into ROOM (roomid, capacity, roomname)
values (78136, 35, 'Santana do parna?ba');
insert into ROOM (roomid, capacity, roomname)
values (12589, 26, 'Bollensen');
insert into ROOM (roomid, capacity, roomname)
values (77616, 31, 'Leinfelden-Echterdin');
insert into ROOM (roomid, capacity, roomname)
values (43299, 27, 'Newcastle upon Tyne');
insert into ROOM (roomid, capacity, roomname)
values (64268, 20, 'Palo Alto');
insert into ROOM (roomid, capacity, roomname)
values (77985, 32, 'Shenzhen');
insert into ROOM (roomid, capacity, roomname)
values (74577, 32, 'Barksdale afb');
insert into ROOM (roomid, capacity, roomname)
values (14778, 39, 'Rheinfelden');
insert into ROOM (roomid, capacity, roomname)
values (43944, 39, 'Immenstaad');
insert into ROOM (roomid, capacity, roomname)
values (99598, 24, 'Aracruz');
insert into ROOM (roomid, capacity, roomname)
values (76734, 27, 'Thalwil');
insert into ROOM (roomid, capacity, roomname)
values (32731, 24, 'Juneau');
insert into ROOM (roomid, capacity, roomname)
values (36426, 39, 'Tsu');
insert into ROOM (roomid, capacity, roomname)
values (22661, 27, 'King of Prussia');
insert into ROOM (roomid, capacity, roomname)
values (42755, 21, 'Houma');
insert into ROOM (roomid, capacity, roomname)
values (43183, 23, 'Ismaning');
insert into ROOM (roomid, capacity, roomname)
values (35329, 48, 'Thessaloniki');
insert into ROOM (roomid, capacity, roomname)
values (39784, 29, 'Tbilisi');
insert into ROOM (roomid, capacity, roomname)
values (95211, 36, 'Augst');
insert into ROOM (roomid, capacity, roomname)
values (29286, 44, 'Reading');
insert into ROOM (roomid, capacity, roomname)
values (22465, 28, 'Mogi Guacu');
insert into ROOM (roomid, capacity, roomname)
values (82165, 49, 'Cerritos');
insert into ROOM (roomid, capacity, roomname)
values (18983, 32, 'Uden');
insert into ROOM (roomid, capacity, roomname)
values (29866, 33, 'San Ramon');
insert into ROOM (roomid, capacity, roomname)
values (31677, 43, 'South Weber');
insert into ROOM (roomid, capacity, roomname)
values (57272, 30, 'Mclean');
insert into ROOM (roomid, capacity, roomname)
values (29984, 22, 'Hartmannsdorf');
insert into ROOM (roomid, capacity, roomname)
values (29341, 27, 'Maceio');
insert into ROOM (roomid, capacity, roomname)
values (89549, 33, 'Albany');
insert into ROOM (roomid, capacity, roomname)
values (82383, 36, 'Odense');
insert into ROOM (roomid, capacity, roomname)
values (89939, 34, 'Yavne');
insert into ROOM (roomid, capacity, roomname)
values (64987, 39, 'Bradenton');
insert into ROOM (roomid, capacity, roomname)
values (27143, 22, 'Allen');
insert into ROOM (roomid, capacity, roomname)
values (99612, 20, 'Tooele');
insert into ROOM (roomid, capacity, roomname)
values (57526, 24, 'Pusan');
insert into ROOM (roomid, capacity, roomname)
values (48813, 35, 'Herford');
insert into ROOM (roomid, capacity, roomname)
values (42358, 21, 'El Dorado Hills');
insert into ROOM (roomid, capacity, roomname)
values (94939, 38, 'Flushing');
insert into ROOM (roomid, capacity, roomname)
values (89138, 34, 'Budapest');
insert into ROOM (roomid, capacity, roomname)
values (98621, 43, 'Lippetal');
insert into ROOM (roomid, capacity, roomname)
values (41896, 29, 'New York');
insert into ROOM (roomid, capacity, roomname)
values (54245, 22, 'Edison');
insert into ROOM (roomid, capacity, roomname)
values (35697, 30, 'Mainz-kastel');
commit;
prompt 500 records committed...
insert into ROOM (roomid, capacity, roomname)
values (39821, 31, 'Jacksonville');
insert into ROOM (roomid, capacity, roomname)
values (11791, 30, 'Neuquen');
insert into ROOM (roomid, capacity, roomname)
values (24421, 42, 'Smyrna');
insert into ROOM (roomid, capacity, roomname)
values (86751, 30, 'Bergen');
insert into ROOM (roomid, capacity, roomname)
values (48552, 38, 'Belo Horizonte');
insert into ROOM (roomid, capacity, roomname)
values (92149, 22, 'Sao roque');
insert into ROOM (roomid, capacity, roomname)
values (38755, 43, 'Malm?');
insert into ROOM (roomid, capacity, roomname)
values (45121, 37, 'Veenendaal');
insert into ROOM (roomid, capacity, roomname)
values (51991, 30, 'Heubach');
insert into ROOM (roomid, capacity, roomname)
values (56623, 35, 'Hartford');
insert into ROOM (roomid, capacity, roomname)
values (24531, 32, 'Pacific Grove');
insert into ROOM (roomid, capacity, roomname)
values (84833, 49, 'Seoul');
insert into ROOM (roomid, capacity, roomname)
values (65112, 33, 'Geneva');
insert into ROOM (roomid, capacity, roomname)
values (29451, 34, 'Vilafranca Penedes');
insert into ROOM (roomid, capacity, roomname)
values (73156, 47, 'Knutsford');
insert into ROOM (roomid, capacity, roomname)
values (92937, 41, 'Rome');
insert into ROOM (roomid, capacity, roomname)
values (79561, 45, 'Santana do parna?ba');
insert into ROOM (roomid, capacity, roomname)
values (85737, 30, 'Sevilla');
insert into ROOM (roomid, capacity, roomname)
values (43269, 45, 'Sydney');
insert into ROOM (roomid, capacity, roomname)
values (45251, 48, 'Mechanicsburg');
insert into ROOM (roomid, capacity, roomname)
values (88778, 46, 'Niigata');
insert into ROOM (roomid, capacity, roomname)
values (69276, 44, 'Regina');
insert into ROOM (roomid, capacity, roomname)
values (84558, 22, 'Irati');
insert into ROOM (roomid, capacity, roomname)
values (22186, 23, 'Helsinki');
insert into ROOM (roomid, capacity, roomname)
values (45113, 25, 'Concordville');
insert into ROOM (roomid, capacity, roomname)
values (42143, 48, 'Rheinfelden');
insert into ROOM (roomid, capacity, roomname)
values (93295, 40, 'Orange');
insert into ROOM (roomid, capacity, roomname)
values (44584, 32, 'Sacramento');
insert into ROOM (roomid, capacity, roomname)
values (97235, 48, 'Pecs');
insert into ROOM (roomid, capacity, roomname)
values (45764, 45, 'Royston');
insert into ROOM (roomid, capacity, roomname)
values (41119, 50, 'Vista');
insert into ROOM (roomid, capacity, roomname)
values (33731, 28, 'Philadelphia');
insert into ROOM (roomid, capacity, roomname)
values (43986, 37, 'Royersford');
insert into ROOM (roomid, capacity, roomname)
values (59718, 37, 'Fukuoka');
insert into ROOM (roomid, capacity, roomname)
values (73376, 39, 'Arlington');
insert into ROOM (roomid, capacity, roomname)
values (45473, 45, 'King of Prussia');
insert into ROOM (roomid, capacity, roomname)
values (28421, 24, 'Bethesda');
insert into ROOM (roomid, capacity, roomname)
values (14931, 27, 'Gliwice');
insert into ROOM (roomid, capacity, roomname)
values (59827, 25, 'Enschede');
insert into ROOM (roomid, capacity, roomname)
values (91973, 47, 'San Jose');
insert into ROOM (roomid, capacity, roomname)
values (21914, 29, 'Boise');
insert into ROOM (roomid, capacity, roomname)
values (54647, 21, 'Bellevue');
insert into ROOM (roomid, capacity, roomname)
values (42128, 41, 'Istanbul');
insert into ROOM (roomid, capacity, roomname)
values (96518, 30, 'Royersford');
insert into ROOM (roomid, capacity, roomname)
values (46632, 37, 'Richmond');
insert into ROOM (roomid, capacity, roomname)
values (76298, 21, 'West Launceston');
insert into ROOM (roomid, capacity, roomname)
values (72646, 29, 'King of Prussia');
insert into ROOM (roomid, capacity, roomname)
values (28444, 22, 'West Lafayette');
insert into ROOM (roomid, capacity, roomname)
values (56639, 20, 'Darmstadt');
insert into ROOM (roomid, capacity, roomname)
values (14172, 20, 'Oakland');
insert into ROOM (roomid, capacity, roomname)
values (28447, 23, 'Glenshaw');
insert into ROOM (roomid, capacity, roomname)
values (26384, 31, 'Woodbridge');
insert into ROOM (roomid, capacity, roomname)
values (85336, 20, 'Pa?o de Arcos');
insert into ROOM (roomid, capacity, roomname)
values (92467, 42, 'Deerfield');
insert into ROOM (roomid, capacity, roomname)
values (45636, 21, 'Akita');
insert into ROOM (roomid, capacity, roomname)
values (95487, 50, 'Yucca');
insert into ROOM (roomid, capacity, roomname)
values (68696, 23, 'Framingaham');
insert into ROOM (roomid, capacity, roomname)
values (64641, 28, 'Seongnam-si');
insert into ROOM (roomid, capacity, roomname)
values (45828, 44, 'Hercules');
insert into ROOM (roomid, capacity, roomname)
values (16298, 41, 'Bad Oeynhausen');
insert into ROOM (roomid, capacity, roomname)
values (46932, 36, 'Cedar Park');
insert into ROOM (roomid, capacity, roomname)
values (31666, 45, 'Udine');
insert into ROOM (roomid, capacity, roomname)
values (69728, 30, 'Granada Hills');
insert into ROOM (roomid, capacity, roomname)
values (82658, 45, 'Dresden');
insert into ROOM (roomid, capacity, roomname)
values (88231, 37, 'Michendorf');
insert into ROOM (roomid, capacity, roomname)
values (24394, 50, 'El Masnou');
insert into ROOM (roomid, capacity, roomname)
values (15131, 30, 'Brno');
insert into ROOM (roomid, capacity, roomname)
values (43427, 47, 'Canal Winchester');
insert into ROOM (roomid, capacity, roomname)
values (55976, 32, 'New Delhi');
insert into ROOM (roomid, capacity, roomname)
values (66322, 31, 'Stafford');
insert into ROOM (roomid, capacity, roomname)
values (85389, 44, 'Flower mound');
insert into ROOM (roomid, capacity, roomname)
values (66893, 43, 'Staten Island');
insert into ROOM (roomid, capacity, roomname)
values (94972, 32, 'Tualatin');
insert into ROOM (roomid, capacity, roomname)
values (42249, 23, 'Cobham');
insert into ROOM (roomid, capacity, roomname)
values (52338, 20, 'Leawood');
insert into ROOM (roomid, capacity, roomname)
values (47599, 42, 'Wavre');
insert into ROOM (roomid, capacity, roomname)
values (45734, 23, 'Fleet');
insert into ROOM (roomid, capacity, roomname)
values (15166, 29, 'Sutton');
insert into ROOM (roomid, capacity, roomname)
values (25462, 37, 'Oslo');
insert into ROOM (roomid, capacity, roomname)
values (56594, 41, 'Slidel');
insert into ROOM (roomid, capacity, roomname)
values (17188, 38, 'New orleans');
insert into ROOM (roomid, capacity, roomname)
values (22987, 27, 'Beaverton');
insert into ROOM (roomid, capacity, roomname)
values (94321, 29, 'Beaverton');
insert into ROOM (roomid, capacity, roomname)
values (51818, 35, 'Pottendorf');
insert into ROOM (roomid, capacity, roomname)
values (69623, 27, 'Guelph');
insert into ROOM (roomid, capacity, roomname)
values (42963, 24, 'K?ln');
insert into ROOM (roomid, capacity, roomname)
values (28929, 40, 'Hanover');
insert into ROOM (roomid, capacity, roomname)
values (81936, 37, 'Cheshire');
insert into ROOM (roomid, capacity, roomname)
values (1111, 50, 'Bareket');
insert into ROOM (roomid, capacity, roomname)
values (79796, 34, 'Hohenfels');
insert into ROOM (roomid, capacity, roomname)
values (36656, 44, 'Seoul');
insert into ROOM (roomid, capacity, roomname)
values (69481, 33, 'Ebersdorf');
insert into ROOM (roomid, capacity, roomname)
values (26627, 38, 'Edmonton');
insert into ROOM (roomid, capacity, roomname)
values (42295, 37, 'Salt Lake City');
insert into ROOM (roomid, capacity, roomname)
values (85361, 50, 'Bekescsaba');
insert into ROOM (roomid, capacity, roomname)
values (99928, 24, 'Knutsford');
insert into ROOM (roomid, capacity, roomname)
values (88497, 30, 'Dublin');
insert into ROOM (roomid, capacity, roomname)
values (74854, 27, 'Gaza');
insert into ROOM (roomid, capacity, roomname)
values (17312, 43, 'Cheshire');
insert into ROOM (roomid, capacity, roomname)
values (68796, 49, 'Trenton');
commit;
prompt 600 records committed...
insert into ROOM (roomid, capacity, roomname)
values (23254, 28, 'Pompeia');
insert into ROOM (roomid, capacity, roomname)
values (16971, 25, 'W?rzburg');
insert into ROOM (roomid, capacity, roomname)
values (33351, 50, 'Aiken');
insert into ROOM (roomid, capacity, roomname)
values (44271, 36, 'Santana do parna?ba');
insert into ROOM (roomid, capacity, roomname)
values (16751, 34, 'Paal Beringen');
insert into ROOM (roomid, capacity, roomname)
values (13577, 45, 'Oulu');
insert into ROOM (roomid, capacity, roomname)
values (44423, 28, 'New York City');
insert into ROOM (roomid, capacity, roomname)
values (83141, 35, 'Or-yehuda');
insert into ROOM (roomid, capacity, roomname)
values (13342, 46, 'Melrose');
insert into ROOM (roomid, capacity, roomname)
values (15281, 48, 'Duisburg');
insert into ROOM (roomid, capacity, roomname)
values (66863, 29, 'Trieste');
insert into ROOM (roomid, capacity, roomname)
values (88526, 35, 'Copenhagen');
insert into ROOM (roomid, capacity, roomname)
values (24996, 48, 'Issaquah');
insert into ROOM (roomid, capacity, roomname)
values (83917, 42, 'S?o paulo');
insert into ROOM (roomid, capacity, roomname)
values (12275, 24, 'Herdecke');
insert into ROOM (roomid, capacity, roomname)
values (83563, 26, 'Nantes');
insert into ROOM (roomid, capacity, roomname)
values (51654, 39, 'Oldenburg');
insert into ROOM (roomid, capacity, roomname)
values (15463, 27, 'Ani?res');
insert into ROOM (roomid, capacity, roomname)
values (23446, 43, 'Annandale');
insert into ROOM (roomid, capacity, roomname)
values (97131, 35, 'Douala');
insert into ROOM (roomid, capacity, roomname)
values (35831, 25, 'Bras?lia');
insert into ROOM (roomid, capacity, roomname)
values (62714, 27, 'Fredericia');
insert into ROOM (roomid, capacity, roomname)
values (98467, 49, 'Overland park');
insert into ROOM (roomid, capacity, roomname)
values (29472, 38, 'Toulouse');
insert into ROOM (roomid, capacity, roomname)
values (93248, 43, 'Reno');
insert into ROOM (roomid, capacity, roomname)
values (78841, 35, 'Chinnor');
insert into ROOM (roomid, capacity, roomname)
values (73647, 32, 'Somerset');
insert into ROOM (roomid, capacity, roomname)
values (31753, 26, 'Rockland');
insert into ROOM (roomid, capacity, roomname)
values (38295, 38, 'Bremen');
insert into ROOM (roomid, capacity, roomname)
values (45644, 26, 'Warszawa');
insert into ROOM (roomid, capacity, roomname)
values (43851, 46, 'M?nster');
insert into ROOM (roomid, capacity, roomname)
values (19798, 21, 'Nantes');
insert into ROOM (roomid, capacity, roomname)
values (74777, 35, 'Herzlia');
insert into ROOM (roomid, capacity, roomname)
values (85774, 33, 'Vejle');
insert into ROOM (roomid, capacity, roomname)
values (53985, 45, 'Whittier');
insert into ROOM (roomid, capacity, roomname)
values (65659, 24, 'Edwardstown');
insert into ROOM (roomid, capacity, roomname)
values (77825, 49, 'Durham');
insert into ROOM (roomid, capacity, roomname)
values (41947, 27, 'Koeln');
insert into ROOM (roomid, capacity, roomname)
values (66289, 24, 'Bruxelles');
insert into ROOM (roomid, capacity, roomname)
values (58989, 27, 'Zagreb');
insert into ROOM (roomid, capacity, roomname)
values (15947, 46, 'Longueuil');
insert into ROOM (roomid, capacity, roomname)
values (24879, 37, 'Oberwangen');
insert into ROOM (roomid, capacity, roomname)
values (19533, 44, 'Cypress');
insert into ROOM (roomid, capacity, roomname)
values (99983, 49, 'Stans');
insert into ROOM (roomid, capacity, roomname)
values (98411, 32, 'Barueri');
insert into ROOM (roomid, capacity, roomname)
values (58685, 41, 'Warszawa');
insert into ROOM (roomid, capacity, roomname)
values (65979, 36, 'Thessaloniki');
insert into ROOM (roomid, capacity, roomname)
values (53252, 39, 'Kopavogur');
insert into ROOM (roomid, capacity, roomname)
values (29477, 38, 'Whitehouse Station');
insert into ROOM (roomid, capacity, roomname)
values (87511, 32, 'Velizy Villacoublay');
insert into ROOM (roomid, capacity, roomname)
values (14116, 29, 'Bruxelles');
insert into ROOM (roomid, capacity, roomname)
values (47282, 35, 'Altst?tten');
insert into ROOM (roomid, capacity, roomname)
values (64172, 41, 'Villata');
insert into ROOM (roomid, capacity, roomname)
values (38832, 44, 'Santa Fe');
insert into ROOM (roomid, capacity, roomname)
values (91897, 48, 'Eden prairie');
insert into ROOM (roomid, capacity, roomname)
values (27181, 34, 'Radovljica');
insert into ROOM (roomid, capacity, roomname)
values (48231, 37, 'Brampton');
insert into ROOM (roomid, capacity, roomname)
values (74512, 29, 'Ulm');
insert into ROOM (roomid, capacity, roomname)
values (81148, 40, 'Cobham');
insert into ROOM (roomid, capacity, roomname)
values (38573, 44, 'West Launceston');
insert into ROOM (roomid, capacity, roomname)
values (76589, 29, 'Karlsruhe');
insert into ROOM (roomid, capacity, roomname)
values (55923, 28, 'Brussel');
insert into ROOM (roomid, capacity, roomname)
values (74614, 24, 'Rorschach');
insert into ROOM (roomid, capacity, roomname)
values (81444, 39, 'Overland park');
insert into ROOM (roomid, capacity, roomname)
values (93424, 48, 'Guadalajara');
insert into ROOM (roomid, capacity, roomname)
values (39883, 34, 'Ismaning');
insert into ROOM (roomid, capacity, roomname)
values (73813, 26, 'Alcobendas');
insert into ROOM (roomid, capacity, roomname)
values (24271, 47, 'Pointe-claire');
insert into ROOM (roomid, capacity, roomname)
values (97664, 28, 'Oberwangen');
insert into ROOM (roomid, capacity, roomname)
values (13752, 36, 'Mariano Comense');
insert into ROOM (roomid, capacity, roomname)
values (92577, 50, 'Dinslaken');
insert into ROOM (roomid, capacity, roomname)
values (89363, 30, 'Wakayama');
insert into ROOM (roomid, capacity, roomname)
values (57133, 24, 'New York');
insert into ROOM (roomid, capacity, roomname)
values (49764, 23, 'Roanoke');
insert into ROOM (roomid, capacity, roomname)
values (54184, 31, 'El Dorado Hills');
insert into ROOM (roomid, capacity, roomname)
values (11398, 36, 'Vienna');
insert into ROOM (roomid, capacity, roomname)
values (73297, 31, 'Pomona');
insert into ROOM (roomid, capacity, roomname)
values (63795, 28, 'Vista');
insert into ROOM (roomid, capacity, roomname)
values (91122, 22, 'Buffalo');
insert into ROOM (roomid, capacity, roomname)
values (37499, 44, 'Southampton');
insert into ROOM (roomid, capacity, roomname)
values (83272, 34, 'Newbury');
insert into ROOM (roomid, capacity, roomname)
values (27941, 50, 'Orleans');
insert into ROOM (roomid, capacity, roomname)
values (34775, 47, 'Luedenscheid');
insert into ROOM (roomid, capacity, roomname)
values (22796, 28, 'Gummersbach');
insert into ROOM (roomid, capacity, roomname)
values (93224, 20, 'Tulsa');
insert into ROOM (roomid, capacity, roomname)
values (82156, 44, 'Longview');
insert into ROOM (roomid, capacity, roomname)
values (69651, 38, 'Niigata');
insert into ROOM (roomid, capacity, roomname)
values (88171, 31, 'Oulu');
insert into ROOM (roomid, capacity, roomname)
values (95344, 42, 'Nanaimo');
insert into ROOM (roomid, capacity, roomname)
values (48323, 37, 'Seatle');
insert into ROOM (roomid, capacity, roomname)
values (93358, 37, 'Granada Hills');
insert into ROOM (roomid, capacity, roomname)
values (23988, 24, 'Seatle');
insert into ROOM (roomid, capacity, roomname)
values (97612, 20, 'Karlsruhe');
insert into ROOM (roomid, capacity, roomname)
values (76135, 37, 'Slidel');
insert into ROOM (roomid, capacity, roomname)
values (53564, 38, 'Antwerpen');
insert into ROOM (roomid, capacity, roomname)
values (81941, 40, 'Kista');
insert into ROOM (roomid, capacity, roomname)
values (94597, 46, 'Bangalore');
insert into ROOM (roomid, capacity, roomname)
values (28488, 38, 'Hilversum');
insert into ROOM (roomid, capacity, roomname)
values (32342, 36, 'Loveland');
insert into ROOM (roomid, capacity, roomname)
values (98744, 36, 'Mablethorpe');
commit;
prompt 700 records committed...
insert into ROOM (roomid, capacity, roomname)
values (21696, 45, 'Vejle');
insert into ROOM (roomid, capacity, roomname)
values (53383, 22, 'Fukushima');
insert into ROOM (roomid, capacity, roomname)
values (86571, 28, 'Kanazawa');
insert into ROOM (roomid, capacity, roomname)
values (36371, 45, 'Spring City');
insert into ROOM (roomid, capacity, roomname)
values (98336, 25, 'Zaandam');
insert into ROOM (roomid, capacity, roomname)
values (98256, 45, 'Waldorf');
insert into ROOM (roomid, capacity, roomname)
values (65316, 39, 'S?o paulo');
insert into ROOM (roomid, capacity, roomname)
values (21784, 31, 'Marlboro');
insert into ROOM (roomid, capacity, roomname)
values (63276, 45, 'Bham');
insert into ROOM (roomid, capacity, roomname)
values (19136, 23, 'East sussex');
insert into ROOM (roomid, capacity, roomname)
values (45246, 47, 'Dublin');
insert into ROOM (roomid, capacity, roomname)
values (26225, 39, 'Maebashi');
insert into ROOM (roomid, capacity, roomname)
values (53797, 24, 'Alcobendas');
insert into ROOM (roomid, capacity, roomname)
values (99917, 24, 'Takamatsu');
insert into ROOM (roomid, capacity, roomname)
values (94842, 44, 'Orleans');
insert into ROOM (roomid, capacity, roomname)
values (83774, 37, 'Golden');
insert into ROOM (roomid, capacity, roomname)
values (78779, 22, 'Le chesnay');
insert into ROOM (roomid, capacity, roomname)
values (48758, 25, 'San Francisco');
insert into ROOM (roomid, capacity, roomname)
values (31824, 26, 'Coventry');
insert into ROOM (roomid, capacity, roomname)
values (35849, 50, 'Tokushima');
insert into ROOM (roomid, capacity, roomname)
values (12249, 39, 'Batavia');
insert into ROOM (roomid, capacity, roomname)
values (47196, 24, 'San Francisco');
insert into ROOM (roomid, capacity, roomname)
values (26117, 37, 'Billerica');
insert into ROOM (roomid, capacity, roomname)
values (31437, 33, 'Caracas');
insert into ROOM (roomid, capacity, roomname)
values (31492, 21, 'New Hope');
insert into ROOM (roomid, capacity, roomname)
values (27492, 48, 'Indianapolis');
insert into ROOM (roomid, capacity, roomname)
values (81498, 37, 'Westfield');
insert into ROOM (roomid, capacity, roomname)
values (32396, 29, 'Slmea');
insert into ROOM (roomid, capacity, roomname)
values (96598, 38, 'Bristol');
insert into ROOM (roomid, capacity, roomname)
values (28775, 43, 'Mumbai');
insert into ROOM (roomid, capacity, roomname)
values (55245, 28, 'Coppell');
insert into ROOM (roomid, capacity, roomname)
values (35388, 45, 'Adelaide');
insert into ROOM (roomid, capacity, roomname)
values (64362, 26, 'Alessandria');
insert into ROOM (roomid, capacity, roomname)
values (35262, 28, 'Port Macquarie');
insert into ROOM (roomid, capacity, roomname)
values (16517, 49, 'Rockland');
insert into ROOM (roomid, capacity, roomname)
values (58834, 32, 'Ponta grossa');
insert into ROOM (roomid, capacity, roomname)
values (82661, 35, 'Cheshire');
insert into ROOM (roomid, capacity, roomname)
values (68942, 29, 'Port Macquarie');
insert into ROOM (roomid, capacity, roomname)
values (82716, 41, 'Oslo');
insert into ROOM (roomid, capacity, roomname)
values (91629, 34, 'Shelton');
insert into ROOM (roomid, capacity, roomname)
values (25822, 46, 'Snoqualmie');
insert into ROOM (roomid, capacity, roomname)
values (15653, 47, 'Toledo');
insert into ROOM (roomid, capacity, roomname)
values (32424, 38, 'Highton');
insert into ROOM (roomid, capacity, roomname)
values (85242, 46, 'Rosario');
insert into ROOM (roomid, capacity, roomname)
values (45829, 36, 'Malm?');
insert into ROOM (roomid, capacity, roomname)
values (33474, 37, 'Coslada');
insert into ROOM (roomid, capacity, roomname)
values (49718, 39, 'P?tion-ville');
insert into ROOM (roomid, capacity, roomname)
values (11741, 30, 'Schaumburg');
insert into ROOM (roomid, capacity, roomname)
values (32369, 39, 'Venice');
insert into ROOM (roomid, capacity, roomname)
values (38922, 26, 'Berkeley');
insert into ROOM (roomid, capacity, roomname)
values (37354, 42, 'Sainte-foy');
insert into ROOM (roomid, capacity, roomname)
values (78115, 22, 'Boulder');
insert into ROOM (roomid, capacity, roomname)
values (99192, 44, 'Ashdod');
insert into ROOM (roomid, capacity, roomname)
values (58694, 48, 'Budapest');
insert into ROOM (roomid, capacity, roomname)
values (79669, 47, 'Malm?');
insert into ROOM (roomid, capacity, roomname)
values (37736, 27, 'Le chesnay');
insert into ROOM (roomid, capacity, roomname)
values (64986, 34, 'L?beck');
insert into ROOM (roomid, capacity, roomname)
values (23895, 23, 'Kristiansand');
insert into ROOM (roomid, capacity, roomname)
values (47194, 26, 'Enschede');
insert into ROOM (roomid, capacity, roomname)
values (68329, 20, 'Steyr');
insert into ROOM (roomid, capacity, roomname)
values (85383, 47, 'Burwood East');
insert into ROOM (roomid, capacity, roomname)
values (55136, 49, 'Rome');
insert into ROOM (roomid, capacity, roomname)
values (31512, 24, 'Spresiano');
insert into ROOM (roomid, capacity, roomname)
values (34713, 49, 'Gifu');
insert into ROOM (roomid, capacity, roomname)
values (85466, 46, 'Peine');
insert into ROOM (roomid, capacity, roomname)
values (65492, 33, 'Santorso');
insert into ROOM (roomid, capacity, roomname)
values (87555, 35, 'Leawood');
insert into ROOM (roomid, capacity, roomname)
values (72146, 25, 'Yokohama');
insert into ROOM (roomid, capacity, roomname)
values (16247, 29, 'Sao paulo');
insert into ROOM (roomid, capacity, roomname)
values (78665, 37, 'Changwon-si');
insert into ROOM (roomid, capacity, roomname)
values (69137, 24, 'Dublin');
insert into ROOM (roomid, capacity, roomname)
values (12871, 24, 'Biel');
insert into ROOM (roomid, capacity, roomname)
values (25392, 47, 'Berkeley');
insert into ROOM (roomid, capacity, roomname)
values (37321, 39, 'Bountiful');
insert into ROOM (roomid, capacity, roomname)
values (15458, 23, 'Huntington');
insert into ROOM (roomid, capacity, roomname)
values (27198, 43, 'Holts Summit');
insert into ROOM (roomid, capacity, roomname)
values (31831, 39, 'North Point');
insert into ROOM (roomid, capacity, roomname)
values (11365, 49, 'Geneva');
insert into ROOM (roomid, capacity, roomname)
values (73696, 22, 'Washington');
insert into ROOM (roomid, capacity, roomname)
values (32474, 50, 'Seattle');
insert into ROOM (roomid, capacity, roomname)
values (55382, 38, 'Maintenon');
insert into ROOM (roomid, capacity, roomname)
values (61164, 35, 'Milano');
insert into ROOM (roomid, capacity, roomname)
values (32749, 46, 'Grand Rapids');
insert into ROOM (roomid, capacity, roomname)
values (23523, 44, 'Sugar Hill');
insert into ROOM (roomid, capacity, roomname)
values (89931, 47, 'Cape town');
insert into ROOM (roomid, capacity, roomname)
values (34788, 49, 'Lexington');
insert into ROOM (roomid, capacity, roomname)
values (51596, 46, 'Greenville');
insert into ROOM (roomid, capacity, roomname)
values (98652, 48, 'Wilmington');
insert into ROOM (roomid, capacity, roomname)
values (99553, 23, 'Sevilla');
insert into ROOM (roomid, capacity, roomname)
values (98711, 31, 'Monterrey');
insert into ROOM (roomid, capacity, roomname)
values (25451, 32, 'Mountain View');
insert into ROOM (roomid, capacity, roomname)
values (74256, 37, 'Bremen');
insert into ROOM (roomid, capacity, roomname)
values (58158, 40, 'Lucca');
insert into ROOM (roomid, capacity, roomname)
values (55986, 41, 'Bingham Farms');
insert into ROOM (roomid, capacity, roomname)
values (53134, 21, 'San Antonio');
insert into ROOM (roomid, capacity, roomname)
values (59211, 43, 'Linz');
insert into ROOM (roomid, capacity, roomname)
values (56727, 47, 'Novara');
insert into ROOM (roomid, capacity, roomname)
values (33814, 50, 'Ft. Leavenworth');
insert into ROOM (roomid, capacity, roomname)
values (99696, 39, 'Paal Beringen');
insert into ROOM (roomid, capacity, roomname)
values (19756, 31, 'Bras?lia');
commit;
prompt 800 records committed...
insert into ROOM (roomid, capacity, roomname)
values (45661, 26, 'Fuchstal-asch');
insert into ROOM (roomid, capacity, roomname)
values (38336, 23, 'Singapore');
insert into ROOM (roomid, capacity, roomname)
values (79853, 43, 'Unionville');
insert into ROOM (roomid, capacity, roomname)
values (38786, 50, 'Batavia');
insert into ROOM (roomid, capacity, roomname)
values (25799, 50, 'Syracuse');
insert into ROOM (roomid, capacity, roomname)
values (26137, 31, 'Hermitage');
insert into ROOM (roomid, capacity, roomname)
values (69653, 45, 'Amsterdam');
insert into ROOM (roomid, capacity, roomname)
values (34722, 20, 'Birmensdorf');
insert into ROOM (roomid, capacity, roomname)
values (86299, 20, 'Rome');
insert into ROOM (roomid, capacity, roomname)
values (79825, 25, 'Powell River');
insert into ROOM (roomid, capacity, roomname)
values (18922, 45, 'Portland');
insert into ROOM (roomid, capacity, roomname)
values (93264, 23, 'Somerset');
insert into ROOM (roomid, capacity, roomname)
values (19965, 35, 'Farmington Hills');
insert into ROOM (roomid, capacity, roomname)
values (43794, 28, 'Wageningen');
insert into ROOM (roomid, capacity, roomname)
values (78496, 45, 'Concordville');
insert into ROOM (roomid, capacity, roomname)
values (95257, 27, 'Johannesburg');
insert into ROOM (roomid, capacity, roomname)
values (17975, 42, 'Changwon-si');
insert into ROOM (roomid, capacity, roomname)
values (81174, 44, 'Horsens');
insert into ROOM (roomid, capacity, roomname)
values (38835, 34, 'Hercules');
insert into ROOM (roomid, capacity, roomname)
values (45665, 30, 'Paderborn');
insert into ROOM (roomid, capacity, roomname)
values (96819, 29, 'L''union');
insert into ROOM (roomid, capacity, roomname)
values (73267, 32, 'Baarn');
insert into ROOM (roomid, capacity, roomname)
values (89454, 47, 'Harrisburg');
insert into ROOM (roomid, capacity, roomname)
values (15213, 22, 'Novara');
insert into ROOM (roomid, capacity, roomname)
values (45937, 49, 'B?nes');
insert into ROOM (roomid, capacity, roomname)
values (76841, 31, 'Williamstown');
insert into ROOM (roomid, capacity, roomname)
values (95389, 21, 'Burlington');
insert into ROOM (roomid, capacity, roomname)
values (89914, 22, 'Echirolles');
insert into ROOM (roomid, capacity, roomname)
values (54889, 27, 'Columbia');
insert into ROOM (roomid, capacity, roomname)
values (52982, 41, 'Magstadt');
insert into ROOM (roomid, capacity, roomname)
values (16756, 25, 'Z?rich');
insert into ROOM (roomid, capacity, roomname)
values (52195, 29, 'Hjallerup');
insert into ROOM (roomid, capacity, roomname)
values (48143, 33, 'Birmingham');
insert into ROOM (roomid, capacity, roomname)
values (79324, 32, 'Huntington Beach');
insert into ROOM (roomid, capacity, roomname)
values (63134, 48, 'Stocksbridge');
insert into ROOM (roomid, capacity, roomname)
values (67557, 24, 'Saint Ouen');
insert into ROOM (roomid, capacity, roomname)
values (12545, 23, 'Orleans');
insert into ROOM (roomid, capacity, roomname)
values (85264, 25, 'Swarthmore');
insert into ROOM (roomid, capacity, roomname)
values (28654, 30, 'Charlotte');
insert into ROOM (roomid, capacity, roomname)
values (97269, 42, 'Albuquerque');
insert into ROOM (roomid, capacity, roomname)
values (94165, 28, 'Barueri');
insert into ROOM (roomid, capacity, roomname)
values (44858, 26, 'Wuerzburg');
insert into ROOM (roomid, capacity, roomname)
values (58614, 44, 'Heubach');
insert into ROOM (roomid, capacity, roomname)
values (15714, 22, 'Woodbridge');
insert into ROOM (roomid, capacity, roomname)
values (12847, 21, 'Lakewood');
insert into ROOM (roomid, capacity, roomname)
values (98788, 49, 'Kagoshima');
insert into ROOM (roomid, capacity, roomname)
values (17524, 39, 'Stoneham');
insert into ROOM (roomid, capacity, roomname)
values (12344, 38, 'Gelsenkirchen');
insert into ROOM (roomid, capacity, roomname)
values (73133, 43, 'Fuchstal-asch');
insert into ROOM (roomid, capacity, roomname)
values (54224, 40, 'Burlington');
insert into ROOM (roomid, capacity, roomname)
values (46897, 39, 'Holderbank');
insert into ROOM (roomid, capacity, roomname)
values (81198, 44, 'Bkk');
insert into ROOM (roomid, capacity, roomname)
values (85897, 42, 'Oyten');
insert into ROOM (roomid, capacity, roomname)
values (87529, 22, 'San Mateo');
insert into ROOM (roomid, capacity, roomname)
values (45962, 21, 'Dublin');
insert into ROOM (roomid, capacity, roomname)
values (62849, 30, 'Moscow');
insert into ROOM (roomid, capacity, roomname)
values (26652, 49, 'Solikamsk');
insert into ROOM (roomid, capacity, roomname)
values (72174, 38, 'Dublin');
insert into ROOM (roomid, capacity, roomname)
values (59758, 31, 'Arlington');
insert into ROOM (roomid, capacity, roomname)
values (76399, 31, 'Alessandria');
insert into ROOM (roomid, capacity, roomname)
values (36815, 45, 'Herne');
insert into ROOM (roomid, capacity, roomname)
values (62174, 37, 'Recife');
insert into ROOM (roomid, capacity, roomname)
values (35249, 41, 'Bracknell');
insert into ROOM (roomid, capacity, roomname)
values (89177, 24, 'Amsterdam');
insert into ROOM (roomid, capacity, roomname)
values (61136, 25, 'G?vle');
insert into ROOM (roomid, capacity, roomname)
values (96765, 34, 'Beaverton');
insert into ROOM (roomid, capacity, roomname)
values (42311, 44, 'West Chester');
insert into ROOM (roomid, capacity, roomname)
values (33497, 33, 'Kejae City');
insert into ROOM (roomid, capacity, roomname)
values (85568, 34, 'Essex');
insert into ROOM (roomid, capacity, roomname)
values (12226, 41, 'Salem');
insert into ROOM (roomid, capacity, roomname)
values (54725, 31, 'Gennevilliers');
insert into ROOM (roomid, capacity, roomname)
values (31954, 22, 'Fairview Heights');
insert into ROOM (roomid, capacity, roomname)
values (24944, 32, 'Canberra');
insert into ROOM (roomid, capacity, roomname)
values (54635, 26, 'Santana do parna?ba');
insert into ROOM (roomid, capacity, roomname)
values (19444, 23, 'Breda');
insert into ROOM (roomid, capacity, roomname)
values (32251, 37, 'Ciudad del Este');
insert into ROOM (roomid, capacity, roomname)
values (66168, 49, 'Ben-Gurion');
insert into ROOM (roomid, capacity, roomname)
values (32942, 22, 'Germantown');
insert into ROOM (roomid, capacity, roomname)
values (86657, 31, 'Velizy Villacoublay');
insert into ROOM (roomid, capacity, roomname)
values (17532, 31, 'Suffern');
insert into ROOM (roomid, capacity, roomname)
values (76934, 49, 'Mapo-gu');
insert into ROOM (roomid, capacity, roomname)
values (13282, 25, 'Milton Keynes');
insert into ROOM (roomid, capacity, roomname)
values (53743, 32, 'Appenzell');
insert into ROOM (roomid, capacity, roomname)
values (46977, 48, 'Arlington');
insert into ROOM (roomid, capacity, roomname)
values (53341, 47, 'Plymouth Meeting');
insert into ROOM (roomid, capacity, roomname)
values (41597, 30, 'Tbilisi');
insert into ROOM (roomid, capacity, roomname)
values (29764, 30, 'Horsham');
insert into ROOM (roomid, capacity, roomname)
values (17765, 35, 'Bedfordshire');
insert into ROOM (roomid, capacity, roomname)
values (75176, 49, 'Aomori');
insert into ROOM (roomid, capacity, roomname)
values (47921, 26, 'Sapporo');
insert into ROOM (roomid, capacity, roomname)
values (49436, 24, 'Irvine');
insert into ROOM (roomid, capacity, roomname)
values (12749, 43, 'Yavne');
insert into ROOM (roomid, capacity, roomname)
values (56141, 31, 'Bismarck');
insert into ROOM (roomid, capacity, roomname)
values (72933, 28, 'Wellington');
insert into ROOM (roomid, capacity, roomname)
values (12864, 20, 'Woking');
insert into ROOM (roomid, capacity, roomname)
values (67148, 50, 'Gettysburg');
insert into ROOM (roomid, capacity, roomname)
values (56484, 48, 'Cambridge');
insert into ROOM (roomid, capacity, roomname)
values (48166, 40, 'Draper');
insert into ROOM (roomid, capacity, roomname)
values (97969, 50, 'Coquitlam');
insert into ROOM (roomid, capacity, roomname)
values (68749, 30, 'High Wycombe');
commit;
prompt 900 records committed...
insert into ROOM (roomid, capacity, roomname)
values (94346, 43, 'Research Triangle');
insert into ROOM (roomid, capacity, roomname)
values (99199, 49, 'Hong Kong');
insert into ROOM (roomid, capacity, roomname)
values (11272, 41, 'Prague');
insert into ROOM (roomid, capacity, roomname)
values (82474, 23, 'Rosario');
insert into ROOM (roomid, capacity, roomname)
values (44661, 43, 'Bernex');
insert into ROOM (roomid, capacity, roomname)
values (75538, 21, 'Koufu');
insert into ROOM (roomid, capacity, roomname)
values (42982, 34, 'Copenhagen');
insert into ROOM (roomid, capacity, roomname)
values (64485, 48, 'Toronto');
insert into ROOM (roomid, capacity, roomname)
values (57671, 28, 'Gliwice');
insert into ROOM (roomid, capacity, roomname)
values (39869, 49, 'Leipzig');
insert into ROOM (roomid, capacity, roomname)
values (74696, 24, 'Washington');
insert into ROOM (roomid, capacity, roomname)
values (89842, 41, 'Barueri');
insert into ROOM (roomid, capacity, roomname)
values (12534, 39, 'West Chester');
insert into ROOM (roomid, capacity, roomname)
values (47431, 39, 'Bismarck');
insert into ROOM (roomid, capacity, roomname)
values (35219, 24, 'Berkeley');
insert into ROOM (roomid, capacity, roomname)
values (29377, 37, 'Visselh?vede');
insert into ROOM (roomid, capacity, roomname)
values (76665, 36, 'Ludbreg');
insert into ROOM (roomid, capacity, roomname)
values (54295, 40, 'Pirmasens');
insert into ROOM (roomid, capacity, roomname)
values (82669, 24, 'Washington');
insert into ROOM (roomid, capacity, roomname)
values (62183, 43, 'Bruneck');
insert into ROOM (roomid, capacity, roomname)
values (36683, 21, 'Enfield');
insert into ROOM (roomid, capacity, roomname)
values (85935, 37, 'Lake worth');
insert into ROOM (roomid, capacity, roomname)
values (58471, 31, 'Stony Point');
insert into ROOM (roomid, capacity, roomname)
values (85878, 40, 'Jun-nam');
insert into ROOM (roomid, capacity, roomname)
values (41424, 42, 'Valladolid');
insert into ROOM (roomid, capacity, roomname)
values (88336, 39, 'Belo Horizonte');
insert into ROOM (roomid, capacity, roomname)
values (41187, 40, 'Rio Rancho');
insert into ROOM (roomid, capacity, roomname)
values (38167, 47, 'St Jean de Soudain');
insert into ROOM (roomid, capacity, roomname)
values (38416, 20, 'Schlieren');
insert into ROOM (roomid, capacity, roomname)
values (49827, 21, 'Tokyo');
insert into ROOM (roomid, capacity, roomname)
values (98224, 33, 'Karachi');
insert into ROOM (roomid, capacity, roomname)
values (71975, 38, 'Las Vegas');
insert into ROOM (roomid, capacity, roomname)
values (81398, 48, 'Orlando');
insert into ROOM (roomid, capacity, roomname)
values (98899, 25, 'Schlieren');
insert into ROOM (roomid, capacity, roomname)
values (44254, 27, 'Chorz?w');
insert into ROOM (roomid, capacity, roomname)
values (27376, 32, 'Mendoza');
insert into ROOM (roomid, capacity, roomname)
values (89111, 20, 'Stanford');
insert into ROOM (roomid, capacity, roomname)
values (58771, 31, 'Wellington');
insert into ROOM (roomid, capacity, roomname)
values (96353, 45, 'Redondo beach');
insert into ROOM (roomid, capacity, roomname)
values (59645, 33, 'Telford');
insert into ROOM (roomid, capacity, roomname)
values (52675, 48, 'Hilton');
insert into ROOM (roomid, capacity, roomname)
values (95517, 20, 'Bautzen');
insert into ROOM (roomid, capacity, roomname)
values (65846, 36, 'Braintree');
insert into ROOM (roomid, capacity, roomname)
values (69885, 24, 'Fambach');
insert into ROOM (roomid, capacity, roomname)
values (46872, 28, 'Waldorf');
insert into ROOM (roomid, capacity, roomname)
values (32162, 21, 'Szazhalombatta');
insert into ROOM (roomid, capacity, roomname)
values (53547, 49, 'Newnan');
insert into ROOM (roomid, capacity, roomname)
values (48442, 28, 'Smyrna');
insert into ROOM (roomid, capacity, roomname)
values (65836, 25, 'Alleroed');
insert into ROOM (roomid, capacity, roomname)
values (26353, 21, 'Lisboa');
insert into ROOM (roomid, capacity, roomname)
values (36749, 43, 'Indianapolis');
insert into ROOM (roomid, capacity, roomname)
values (68418, 30, 'Karachi');
insert into ROOM (roomid, capacity, roomname)
values (17685, 31, 'Lublin');
insert into ROOM (roomid, capacity, roomname)
values (24317, 32, 'Berwyn');
insert into ROOM (roomid, capacity, roomname)
values (69348, 27, 'Gdansk');
insert into ROOM (roomid, capacity, roomname)
values (47861, 39, 'Santa rita sapuca?');
insert into ROOM (roomid, capacity, roomname)
values (35339, 46, 'Chambersburg');
insert into ROOM (roomid, capacity, roomname)
values (64915, 39, 'Gummersbach');
insert into ROOM (roomid, capacity, roomname)
values (11541, 21, 'Deerfield');
insert into ROOM (roomid, capacity, roomname)
values (27195, 22, 'Mountain View');
insert into ROOM (roomid, capacity, roomname)
values (61525, 50, 'Colombes');
insert into ROOM (roomid, capacity, roomname)
values (36461, 40, 'Dallas');
insert into ROOM (roomid, capacity, roomname)
values (34291, 33, 'Michendorf');
insert into ROOM (roomid, capacity, roomname)
values (72542, 23, 'Somerset');
insert into ROOM (roomid, capacity, roomname)
values (97776, 27, 'Bielefeld');
insert into ROOM (roomid, capacity, roomname)
values (84251, 48, 'Chapeco');
insert into ROOM (roomid, capacity, roomname)
values (71956, 27, 'Pompeia');
insert into ROOM (roomid, capacity, roomname)
values (88276, 49, 'Athens');
insert into ROOM (roomid, capacity, roomname)
values (25726, 20, 'Cedar Park');
insert into ROOM (roomid, capacity, roomname)
values (88632, 27, 'M?nchengladbach');
insert into ROOM (roomid, capacity, roomname)
values (23652, 33, 'Valladolid');
insert into ROOM (roomid, capacity, roomname)
values (56696, 41, 'Steyr');
insert into ROOM (roomid, capacity, roomname)
values (33144, 38, 'Yamaguchi');
insert into ROOM (roomid, capacity, roomname)
values (47132, 39, 'Varzea grande');
insert into ROOM (roomid, capacity, roomname)
values (76462, 30, 'Paderborn');
insert into ROOM (roomid, capacity, roomname)
values (45814, 29, 'Warren');
insert into ROOM (roomid, capacity, roomname)
values (49447, 48, 'Yogyakarta');
insert into ROOM (roomid, capacity, roomname)
values (51116, 29, 'Boulogne');
insert into ROOM (roomid, capacity, roomname)
values (63364, 29, 'Meppel');
insert into ROOM (roomid, capacity, roomname)
values (48592, 42, 'Bend');
insert into ROOM (roomid, capacity, roomname)
values (52863, 20, 'Overland park');
insert into ROOM (roomid, capacity, roomname)
values (89527, 41, 'Ft. Lauderdale');
insert into ROOM (roomid, capacity, roomname)
values (35647, 28, 'Crete');
insert into ROOM (roomid, capacity, roomname)
values (79776, 39, 'Sevilla');
insert into ROOM (roomid, capacity, roomname)
values (43795, 36, 'Herdecke');
insert into ROOM (roomid, capacity, roomname)
values (81757, 34, 'Joinville');
insert into ROOM (roomid, capacity, roomname)
values (25654, 33, 'Nagoya');
insert into ROOM (roomid, capacity, roomname)
values (79221, 25, 'Colombo');
insert into ROOM (roomid, capacity, roomname)
values (38975, 41, 'Mason');
insert into ROOM (roomid, capacity, roomname)
values (34963, 47, 'Salvador');
insert into ROOM (roomid, capacity, roomname)
values (24549, 29, 'Kuraby');
insert into ROOM (roomid, capacity, roomname)
values (71962, 27, 'Fornacette');
insert into ROOM (roomid, capacity, roomname)
values (43332, 45, 'Tottori');
insert into ROOM (roomid, capacity, roomname)
values (38789, 20, 'Lengdorf');
insert into ROOM (roomid, capacity, roomname)
values (83195, 49, 'Singapore');
insert into ROOM (roomid, capacity, roomname)
values (14748, 37, 'Meerbusch');
insert into ROOM (roomid, capacity, roomname)
values (15263, 48, 'Takamatsu');
insert into ROOM (roomid, capacity, roomname)
values (48367, 23, 'Lincoln');
insert into ROOM (roomid, capacity, roomname)
values (79665, 42, 'Lyon');
insert into ROOM (roomid, capacity, roomname)
values (56342, 32, 'Marlboro');
commit;
prompt 1000 records committed...
insert into ROOM (roomid, capacity, roomname)
values (59873, 26, 'Middletown');
insert into ROOM (roomid, capacity, roomname)
values (48787, 49, 'Jun-nam');
insert into ROOM (roomid, capacity, roomname)
values (31239, 47, 'Orange');
insert into ROOM (roomid, capacity, roomname)
values (54398, 50, 'Schenectady');
insert into ROOM (roomid, capacity, roomname)
values (96381, 50, 'California');
insert into ROOM (roomid, capacity, roomname)
values (75112, 20, 'South Hadley');
insert into ROOM (roomid, capacity, roomname)
values (58746, 29, 'Soest');
insert into ROOM (roomid, capacity, roomname)
values (76488, 50, 'Magstadt');
insert into ROOM (roomid, capacity, roomname)
values (42487, 46, 'Las Vegas');
insert into ROOM (roomid, capacity, roomname)
values (76955, 46, 'Mt. Laurel');
insert into ROOM (roomid, capacity, roomname)
values (71143, 34, 'Hackensack');
insert into ROOM (roomid, capacity, roomname)
values (56963, 33, 'Macclesfield');
insert into ROOM (roomid, capacity, roomname)
values (53551, 25, 'Hjallerup');
insert into ROOM (roomid, capacity, roomname)
values (87487, 31, 'Stans');
insert into ROOM (roomid, capacity, roomname)
values (99824, 41, 'Dresden');
insert into ROOM (roomid, capacity, roomname)
values (41684, 29, 'Paderborn');
insert into ROOM (roomid, capacity, roomname)
values (75674, 47, 'Madison');
insert into ROOM (roomid, capacity, roomname)
values (88661, 36, 'Blacksburg');
insert into ROOM (roomid, capacity, roomname)
values (37732, 50, 'El Paso');
insert into ROOM (roomid, capacity, roomname)
values (87712, 43, 'Crete');
insert into ROOM (roomid, capacity, roomname)
values (25177, 38, 'Yokohama');
insert into ROOM (roomid, capacity, roomname)
values (21383, 22, 'Charleston');
insert into ROOM (roomid, capacity, roomname)
values (32994, 26, 'Offenburg');
insert into ROOM (roomid, capacity, roomname)
values (35495, 24, 'Recife');
insert into ROOM (roomid, capacity, roomname)
values (54994, 24, 'Hermitage');
insert into ROOM (roomid, capacity, roomname)
values (22322, 29, 'Bloomington');
insert into ROOM (roomid, capacity, roomname)
values (83693, 25, 'Wehrheim');
insert into ROOM (roomid, capacity, roomname)
values (27155, 32, 'Birmingham');
insert into ROOM (roomid, capacity, roomname)
values (42331, 36, 'Zuerich');
insert into ROOM (roomid, capacity, roomname)
values (74379, 31, 'Cypress');
insert into ROOM (roomid, capacity, roomname)
values (76726, 20, 'Olympia');
insert into ROOM (roomid, capacity, roomname)
values (87151, 21, 'Mayfield Village');
insert into ROOM (roomid, capacity, roomname)
values (16463, 27, 'Stocksbridge');
insert into ROOM (roomid, capacity, roomname)
values (56894, 24, 'Paraju');
insert into ROOM (roomid, capacity, roomname)
values (49295, 23, 'Meppel');
insert into ROOM (roomid, capacity, roomname)
values (41755, 20, 'Fair Lawn');
insert into ROOM (roomid, capacity, roomname)
values (15478, 21, 'Meerbusch');
insert into ROOM (roomid, capacity, roomname)
values (13699, 45, 'Woodland Hills');
insert into ROOM (roomid, capacity, roomname)
values (77749, 48, 'Hiller?d');
insert into ROOM (roomid, capacity, roomname)
values (74921, 37, 'Cary');
insert into ROOM (roomid, capacity, roomname)
values (15272, 38, 'Oosterhout');
insert into ROOM (roomid, capacity, roomname)
values (63247, 39, 'Tottori');
insert into ROOM (roomid, capacity, roomname)
values (48826, 22, 'Amherst');
insert into ROOM (roomid, capacity, roomname)
values (99352, 47, 'Vallauris');
insert into ROOM (roomid, capacity, roomname)
values (29755, 28, 'Sutton');
insert into ROOM (roomid, capacity, roomname)
values (61468, 33, 'Bellerose');
insert into ROOM (roomid, capacity, roomname)
values (81598, 23, 'Saint Paul');
insert into ROOM (roomid, capacity, roomname)
values (45677, 37, 'Summerside');
insert into ROOM (roomid, capacity, roomname)
values (41544, 47, 'Rheinfelden');
insert into ROOM (roomid, capacity, roomname)
values (92293, 33, 'Alcobendas');
insert into ROOM (roomid, capacity, roomname)
values (36627, 46, 'Dorval');
insert into ROOM (roomid, capacity, roomname)
values (26455, 37, 'Royersford');
insert into ROOM (roomid, capacity, roomname)
values (31945, 34, 'Vista');
insert into ROOM (roomid, capacity, roomname)
values (69392, 43, 'Itu');
insert into ROOM (roomid, capacity, roomname)
values (67187, 27, 'S. Bernardo do Campo');
insert into ROOM (roomid, capacity, roomname)
values (74238, 21, 'Sevilla');
insert into ROOM (roomid, capacity, roomname)
values (89259, 35, 'Cherepovets');
insert into ROOM (roomid, capacity, roomname)
values (89938, 36, 'Oak Park');
insert into ROOM (roomid, capacity, roomname)
values (12734, 34, 'Dardilly');
insert into ROOM (roomid, capacity, roomname)
values (16867, 26, 'Nara');
insert into ROOM (roomid, capacity, roomname)
values (88875, 27, 'M?nster');
insert into ROOM (roomid, capacity, roomname)
values (23417, 47, 'Knutsford');
insert into ROOM (roomid, capacity, roomname)
values (21436, 38, 'L?beck');
insert into ROOM (roomid, capacity, roomname)
values (72571, 28, 'Bartlett');
insert into ROOM (roomid, capacity, roomname)
values (66927, 31, 'New York');
insert into ROOM (roomid, capacity, roomname)
values (72195, 48, 'Blacksburg');
insert into ROOM (roomid, capacity, roomname)
values (82253, 30, 'Moorestown');
insert into ROOM (roomid, capacity, roomname)
values (85891, 49, 'Lefkosa');
insert into ROOM (roomid, capacity, roomname)
values (83613, 38, 'Golden');
insert into ROOM (roomid, capacity, roomname)
values (47942, 48, 'Kungens kurva');
insert into ROOM (roomid, capacity, roomname)
values (25414, 38, 'Wakayama');
insert into ROOM (roomid, capacity, roomname)
values (69466, 30, 'Kingston');
insert into ROOM (roomid, capacity, roomname)
values (15968, 47, 'Hermitage');
insert into ROOM (roomid, capacity, roomname)
values (23744, 47, 'Immenstaad');
insert into ROOM (roomid, capacity, roomname)
values (83193, 37, 'Trumbull');
insert into ROOM (roomid, capacity, roomname)
values (14823, 34, 'Maarssen');
insert into ROOM (roomid, capacity, roomname)
values (42699, 23, 'Columbus');
insert into ROOM (roomid, capacity, roomname)
values (54872, 39, 'Pompeia');
insert into ROOM (roomid, capacity, roomname)
values (54652, 45, 'Milsons Point');
insert into ROOM (roomid, capacity, roomname)
values (84272, 20, 'Oshawa');
insert into ROOM (roomid, capacity, roomname)
values (74715, 34, 'Lakeville');
insert into ROOM (roomid, capacity, roomname)
values (63382, 39, 'Espoo');
insert into ROOM (roomid, capacity, roomname)
values (28938, 49, 'Fremont');
insert into ROOM (roomid, capacity, roomname)
values (45577, 45, 'Elche');
insert into ROOM (roomid, capacity, roomname)
values (17749, 26, 'San Francisco');
insert into ROOM (roomid, capacity, roomname)
values (12718, 31, 'West Monroe');
insert into ROOM (roomid, capacity, roomname)
values (46867, 37, 'Melrose park');
insert into ROOM (roomid, capacity, roomname)
values (29597, 38, 'Woodbridge');
insert into ROOM (roomid, capacity, roomname)
values (77288, 32, 'West Chester');
insert into ROOM (roomid, capacity, roomname)
values (92868, 39, 'Hounslow');
insert into ROOM (roomid, capacity, roomname)
values (53993, 34, 'Angers');
insert into ROOM (roomid, capacity, roomname)
values (91756, 50, 'Utrecht');
insert into ROOM (roomid, capacity, roomname)
values (88353, 27, 'Middletown');
insert into ROOM (roomid, capacity, roomname)
values (73617, 28, 'Nantes');
insert into ROOM (roomid, capacity, roomname)
values (72268, 44, 'Appenzell');
insert into ROOM (roomid, capacity, roomname)
values (28213, 33, 'Sundsvall');
insert into ROOM (roomid, capacity, roomname)
values (58147, 33, 'Paal Beringen');
insert into ROOM (roomid, capacity, roomname)
values (67617, 27, 'Dublin');
insert into ROOM (roomid, capacity, roomname)
values (47613, 49, 'Fort gordon');
insert into ROOM (roomid, capacity, roomname)
values (31354, 44, 'Swannanoa');
commit;
prompt 1100 records committed...
insert into ROOM (roomid, capacity, roomname)
values (77461, 39, 'Santa rita sapuca?');
insert into ROOM (roomid, capacity, roomname)
values (65442, 35, 'Rio Rancho');
insert into ROOM (roomid, capacity, roomname)
values (82487, 42, 'Ottawa');
insert into ROOM (roomid, capacity, roomname)
values (43686, 35, 'Milan');
insert into ROOM (roomid, capacity, roomname)
values (26177, 46, 'Goiania');
insert into ROOM (roomid, capacity, roomname)
values (97481, 28, 'Aiken');
insert into ROOM (roomid, capacity, roomname)
values (68675, 21, 'Algermissen');
insert into ROOM (roomid, capacity, roomname)
values (31899, 50, 'Lodi');
insert into ROOM (roomid, capacity, roomname)
values (31288, 41, 'Ithaca');
insert into ROOM (roomid, capacity, roomname)
values (94621, 33, 'Gauteng');
insert into ROOM (roomid, capacity, roomname)
values (94833, 28, 'Double Oak');
insert into ROOM (roomid, capacity, roomname)
values (78595, 27, 'Boston');
insert into ROOM (roomid, capacity, roomname)
values (95865, 30, 'Ciudad del Este');
insert into ROOM (roomid, capacity, roomname)
values (28988, 37, 'Aiken');
insert into ROOM (roomid, capacity, roomname)
values (77725, 47, 'Walnut Creek');
insert into ROOM (roomid, capacity, roomname)
values (92654, 35, 'Freiburg');
insert into ROOM (roomid, capacity, roomname)
values (37424, 28, 'Livermore');
insert into ROOM (roomid, capacity, roomname)
values (24625, 35, 'Hearst');
insert into ROOM (roomid, capacity, roomname)
values (19532, 45, 'Santiago');
insert into ROOM (roomid, capacity, roomname)
values (47858, 31, 'Ashdod');
insert into ROOM (roomid, capacity, roomname)
values (37973, 31, 'Firenze');
insert into ROOM (roomid, capacity, roomname)
values (61528, 50, 'Harahan');
insert into ROOM (roomid, capacity, roomname)
values (92924, 22, 'Kaohsiung');
insert into ROOM (roomid, capacity, roomname)
values (93939, 27, 'Altst?tten');
insert into ROOM (roomid, capacity, roomname)
values (13224, 38, 'Zwolle');
insert into ROOM (roomid, capacity, roomname)
values (69593, 26, 'Santa Fe');
insert into ROOM (roomid, capacity, roomname)
values (24991, 28, 'Juneau');
insert into ROOM (roomid, capacity, roomname)
values (16576, 39, 'Biel');
insert into ROOM (roomid, capacity, roomname)
values (74634, 36, 'Macau');
insert into ROOM (roomid, capacity, roomname)
values (69551, 32, 'Colorado Springs');
insert into ROOM (roomid, capacity, roomname)
values (48674, 46, 'Stone Mountain');
insert into ROOM (roomid, capacity, roomname)
values (19476, 25, 'Parma');
insert into ROOM (roomid, capacity, roomname)
values (62213, 30, 'Rockville');
insert into ROOM (roomid, capacity, roomname)
values (17348, 32, 'Stone Mountain');
insert into ROOM (roomid, capacity, roomname)
values (89771, 48, 'Petach-Tikva');
insert into ROOM (roomid, capacity, roomname)
values (47467, 22, 'Monterrey');
insert into ROOM (roomid, capacity, roomname)
values (27778, 46, 'Paris');
insert into ROOM (roomid, capacity, roomname)
values (53179, 31, 'Duluth');
insert into ROOM (roomid, capacity, roomname)
values (43148, 32, 'Granada Hills');
insert into ROOM (roomid, capacity, roomname)
values (77384, 20, 'Taipei');
insert into ROOM (roomid, capacity, roomname)
values (82243, 23, 'Haverhill');
insert into ROOM (roomid, capacity, roomname)
values (74771, 38, 'Brentwood');
insert into ROOM (roomid, capacity, roomname)
values (87339, 43, 'Whitehouse Station');
insert into ROOM (roomid, capacity, roomname)
values (89216, 26, 'Courbevoie');
insert into ROOM (roomid, capacity, roomname)
values (22658, 30, 'Moreno Valley');
insert into ROOM (roomid, capacity, roomname)
values (74839, 37, 'Port Macquarie');
insert into ROOM (roomid, capacity, roomname)
values (61543, 20, 'Maebashi');
insert into ROOM (roomid, capacity, roomname)
values (95989, 29, 'Harsum');
insert into ROOM (roomid, capacity, roomname)
values (69796, 48, 'Chicago');
insert into ROOM (roomid, capacity, roomname)
values (87129, 31, 'Ljubljana');
insert into ROOM (roomid, capacity, roomname)
values (16497, 29, 'Bellevue');
insert into ROOM (roomid, capacity, roomname)
values (41917, 25, 'Juazeiro');
insert into ROOM (roomid, capacity, roomname)
values (15574, 26, 'Cuiab?');
insert into ROOM (roomid, capacity, roomname)
values (57531, 41, 'Wehrheim');
insert into ROOM (roomid, capacity, roomname)
values (78931, 47, 'Sugar Land');
insert into ROOM (roomid, capacity, roomname)
values (19228, 47, 'Sevilla');
insert into ROOM (roomid, capacity, roomname)
values (87778, 31, 'Gen?ve');
insert into ROOM (roomid, capacity, roomname)
values (69382, 38, 'Bay Shore');
insert into ROOM (roomid, capacity, roomname)
values (92994, 23, 'Aberdeen');
insert into ROOM (roomid, capacity, roomname)
values (24174, 22, 'Whitehouse Station');
insert into ROOM (roomid, capacity, roomname)
values (35996, 40, 'Boucherville');
insert into ROOM (roomid, capacity, roomname)
values (51972, 39, 'Hartmannsdorf');
insert into ROOM (roomid, capacity, roomname)
values (58798, 49, 'Petach-Tikva');
insert into ROOM (roomid, capacity, roomname)
values (12667, 47, 'Washington');
insert into ROOM (roomid, capacity, roomname)
values (94271, 32, 'Ann Arbor');
insert into ROOM (roomid, capacity, roomname)
values (11546, 32, 'Glasgow');
insert into ROOM (roomid, capacity, roomname)
values (43255, 43, 'Tlalpan');
insert into ROOM (roomid, capacity, roomname)
values (97416, 20, 'Ottawa');
insert into ROOM (roomid, capacity, roomname)
values (25445, 32, 'Augst');
insert into ROOM (roomid, capacity, roomname)
values (28916, 22, 'Tadley');
insert into ROOM (roomid, capacity, roomname)
values (85692, 24, 'Vejle');
insert into ROOM (roomid, capacity, roomname)
values (97153, 46, 'Friedrichshafe');
insert into ROOM (roomid, capacity, roomname)
values (62243, 50, 'Bismarck');
insert into ROOM (roomid, capacity, roomname)
values (15665, 20, 'Longview');
insert into ROOM (roomid, capacity, roomname)
values (18419, 46, 'Lathrop');
insert into ROOM (roomid, capacity, roomname)
values (26943, 25, 'Irkutsk');
insert into ROOM (roomid, capacity, roomname)
values (15955, 46, 'Santa Cruz');
insert into ROOM (roomid, capacity, roomname)
values (93677, 44, 'Hartmannsdorf');
insert into ROOM (roomid, capacity, roomname)
values (91638, 22, 'Winterthur');
insert into ROOM (roomid, capacity, roomname)
values (21726, 49, 'Kaohsiung');
insert into ROOM (roomid, capacity, roomname)
values (17559, 22, 'East sussex');
insert into ROOM (roomid, capacity, roomname)
values (15594, 36, 'Le chesnay');
insert into ROOM (roomid, capacity, roomname)
values (31356, 39, 'Buffalo Grove');
insert into ROOM (roomid, capacity, roomname)
values (69476, 50, 'Kejae City');
insert into ROOM (roomid, capacity, roomname)
values (23938, 34, 'Rockland');
insert into ROOM (roomid, capacity, roomname)
values (44463, 46, 'Reading');
insert into ROOM (roomid, capacity, roomname)
values (35541, 26, 'Nashua');
insert into ROOM (roomid, capacity, roomname)
values (21415, 47, 'Annandale');
insert into ROOM (roomid, capacity, roomname)
values (52628, 35, 'Horb');
insert into ROOM (roomid, capacity, roomname)
values (46284, 31, 'Amherst');
insert into ROOM (roomid, capacity, roomname)
values (95111, 20, 'North Sydney');
insert into ROOM (roomid, capacity, roomname)
values (96268, 47, 'Tustin');
insert into ROOM (roomid, capacity, roomname)
values (52868, 22, 'Cerritos');
insert into ROOM (roomid, capacity, roomname)
values (93724, 43, 'Roanoke');
insert into ROOM (roomid, capacity, roomname)
values (91451, 43, 'Fukuoka');
insert into ROOM (roomid, capacity, roomname)
values (11834, 48, 'Kevelaer');
insert into ROOM (roomid, capacity, roomname)
values (78323, 47, 'League city');
insert into ROOM (roomid, capacity, roomname)
values (55556, 50, 'Moscow');
insert into ROOM (roomid, capacity, roomname)
values (21586, 29, 'Ohita');
insert into ROOM (roomid, capacity, roomname)
values (41258, 24, 'Hartford');
commit;
prompt 1200 records committed...
insert into ROOM (roomid, capacity, roomname)
values (21424, 46, 'Paderborn');
insert into ROOM (roomid, capacity, roomname)
values (17581, 45, 'Wilmington');
insert into ROOM (roomid, capacity, roomname)
values (71613, 38, 'Araras');
insert into ROOM (roomid, capacity, roomname)
values (67162, 29, 'Seoul');
insert into ROOM (roomid, capacity, roomname)
values (82443, 34, 'Biel');
insert into ROOM (roomid, capacity, roomname)
values (58445, 20, 'Princeton');
insert into ROOM (roomid, capacity, roomname)
values (56768, 42, 'Arlington');
insert into ROOM (roomid, capacity, roomname)
values (46927, 43, 'Fair Lawn');
insert into ROOM (roomid, capacity, roomname)
values (29332, 26, 'Jacksonville');
insert into ROOM (roomid, capacity, roomname)
values (66232, 50, 'Slmea');
insert into ROOM (roomid, capacity, roomname)
values (43598, 26, 'Utsunomiya');
insert into ROOM (roomid, capacity, roomname)
values (12745, 50, 'Solikamsk');
insert into ROOM (roomid, capacity, roomname)
values (75369, 24, 'Grapevine');
insert into ROOM (roomid, capacity, roomname)
values (12639, 50, 'Kumamoto');
insert into ROOM (roomid, capacity, roomname)
values (95237, 43, 'Paisley');
insert into ROOM (roomid, capacity, roomname)
values (24658, 45, 'High Wycombe');
insert into ROOM (roomid, capacity, roomname)
values (92723, 42, 'Leeds');
insert into ROOM (roomid, capacity, roomname)
values (25313, 24, 'Luedenscheid');
insert into ROOM (roomid, capacity, roomname)
values (33837, 44, 'Webster Groves');
insert into ROOM (roomid, capacity, roomname)
values (47574, 40, 'Lisboa');
insert into ROOM (roomid, capacity, roomname)
values (34513, 35, 'Cesena');
insert into ROOM (roomid, capacity, roomname)
values (78829, 28, 'Sao roque');
insert into ROOM (roomid, capacity, roomname)
values (36663, 28, 'Echirolles');
insert into ROOM (roomid, capacity, roomname)
values (41448, 31, 'Aachen');
insert into ROOM (roomid, capacity, roomname)
values (97647, 38, 'Westfield');
insert into ROOM (roomid, capacity, roomname)
values (92463, 46, 'Cesena');
insert into ROOM (roomid, capacity, roomname)
values (73296, 41, 'Maserada sul Piave');
insert into ROOM (roomid, capacity, roomname)
values (42611, 43, 'Minneapolis');
insert into ROOM (roomid, capacity, roomname)
values (88991, 41, 'Reading');
insert into ROOM (roomid, capacity, roomname)
values (36457, 27, 'Encinitas');
insert into ROOM (roomid, capacity, roomname)
values (52416, 39, 'Ashdod');
insert into ROOM (roomid, capacity, roomname)
values (42356, 33, 'Essen');
insert into ROOM (roomid, capacity, roomname)
values (11312, 26, 'Santiago');
insert into ROOM (roomid, capacity, roomname)
values (55457, 37, 'Brossard');
insert into ROOM (roomid, capacity, roomname)
values (77936, 46, 'Oshkosh');
insert into ROOM (roomid, capacity, roomname)
values (76143, 33, 'Gaithersburg');
insert into ROOM (roomid, capacity, roomname)
values (62614, 50, 'Tokyo');
insert into ROOM (roomid, capacity, roomname)
values (28266, 42, 'Wuerzburg');
insert into ROOM (roomid, capacity, roomname)
values (24378, 22, 'Matsuyama');
insert into ROOM (roomid, capacity, roomname)
values (32131, 36, 'Warrenton');
insert into ROOM (roomid, capacity, roomname)
values (67446, 28, 'Erlangen');
insert into ROOM (roomid, capacity, roomname)
values (84843, 28, 'Bern');
insert into ROOM (roomid, capacity, roomname)
values (47641, 39, 'Ciudad del Este');
insert into ROOM (roomid, capacity, roomname)
values (71481, 50, 'San Francisco');
insert into ROOM (roomid, capacity, roomname)
values (91846, 39, 'Hermitage');
insert into ROOM (roomid, capacity, roomname)
values (61634, 28, 'Malm?');
insert into ROOM (roomid, capacity, roomname)
values (77458, 34, 'New York');
insert into ROOM (roomid, capacity, roomname)
values (44725, 29, 'Lakeville');
insert into ROOM (roomid, capacity, roomname)
values (24559, 50, 'Cromwell');
insert into ROOM (roomid, capacity, roomname)
values (13117, 33, 'Cary');
insert into ROOM (roomid, capacity, roomname)
values (25552, 25, 'Monument');
insert into ROOM (roomid, capacity, roomname)
values (11843, 34, 'Barbengo');
insert into ROOM (roomid, capacity, roomname)
values (35155, 46, 'Ringwood');
insert into ROOM (roomid, capacity, roomname)
values (67653, 29, 'Loveland');
insert into ROOM (roomid, capacity, roomname)
values (71486, 41, 'Highlands Ranch');
insert into ROOM (roomid, capacity, roomname)
values (44364, 31, 'Wellington');
insert into ROOM (roomid, capacity, roomname)
values (46281, 33, 'Haverhill');
insert into ROOM (roomid, capacity, roomname)
values (93656, 39, 'Westfield');
insert into ROOM (roomid, capacity, roomname)
values (92745, 38, 'Media');
insert into ROOM (roomid, capacity, roomname)
values (88553, 30, 'Allen');
insert into ROOM (roomid, capacity, roomname)
values (97631, 43, 'Slough');
insert into ROOM (roomid, capacity, roomname)
values (17786, 42, 'Boston');
insert into ROOM (roomid, capacity, roomname)
values (61849, 21, 'Geneve');
insert into ROOM (roomid, capacity, roomname)
values (59293, 21, 'Fremont');
insert into ROOM (roomid, capacity, roomname)
values (89298, 30, 'Springfield');
insert into ROOM (roomid, capacity, roomname)
values (92565, 24, 'Suffern');
insert into ROOM (roomid, capacity, roomname)
values (92618, 28, 'Double Oak');
insert into ROOM (roomid, capacity, roomname)
values (66939, 42, 'Oberwangen');
insert into ROOM (roomid, capacity, roomname)
values (28348, 44, 'Velizy Villacoublay');
insert into ROOM (roomid, capacity, roomname)
values (37289, 39, 'Oak park');
insert into ROOM (roomid, capacity, roomname)
values (28478, 46, 'Ipswich');
insert into ROOM (roomid, capacity, roomname)
values (97632, 31, 'Brampton');
insert into ROOM (roomid, capacity, roomname)
values (44625, 27, 'Bratislava');
insert into ROOM (roomid, capacity, roomname)
values (92325, 20, 'Milan');
insert into ROOM (roomid, capacity, roomname)
values (33493, 39, 'Gersthofen');
insert into ROOM (roomid, capacity, roomname)
values (27918, 20, 'Kreuzau');
insert into ROOM (roomid, capacity, roomname)
values (92649, 42, 'Alcobendas');
insert into ROOM (roomid, capacity, roomname)
values (59124, 29, 'Sao paulo');
insert into ROOM (roomid, capacity, roomname)
values (85111, 23, 'Greenwood Village');
insert into ROOM (roomid, capacity, roomname)
values (29861, 44, 'Lahr');
insert into ROOM (roomid, capacity, roomname)
values (36667, 27, 'Di Savigliano');
insert into ROOM (roomid, capacity, roomname)
values (37958, 50, 'Columbus');
insert into ROOM (roomid, capacity, roomname)
values (74293, 22, 'Herford');
insert into ROOM (roomid, capacity, roomname)
values (45889, 41, 'Ljubljana');
insert into ROOM (roomid, capacity, roomname)
values (54282, 35, 'Huntington');
insert into ROOM (roomid, capacity, roomname)
values (54237, 47, 'Mumbai');
insert into ROOM (roomid, capacity, roomname)
values (13662, 33, 'Aurora');
insert into ROOM (roomid, capacity, roomname)
values (28117, 30, 'B?nes');
insert into ROOM (roomid, capacity, roomname)
values (21599, 28, 'L?beck');
insert into ROOM (roomid, capacity, roomname)
values (25513, 30, 'Albany');
insert into ROOM (roomid, capacity, roomname)
values (71257, 45, 'Hartford');
insert into ROOM (roomid, capacity, roomname)
values (59991, 47, 'Winnipeg');
insert into ROOM (roomid, capacity, roomname)
values (47812, 48, 'Bras?lia');
insert into ROOM (roomid, capacity, roomname)
values (98627, 20, 'Lyngby');
insert into ROOM (roomid, capacity, roomname)
values (53786, 44, 'Araras');
insert into ROOM (roomid, capacity, roomname)
values (38794, 49, 'Thalwil');
insert into ROOM (roomid, capacity, roomname)
values (76866, 39, 'Lecanto');
insert into ROOM (roomid, capacity, roomname)
values (34438, 33, 'Bingham Farms');
insert into ROOM (roomid, capacity, roomname)
values (41957, 39, 'Oppenheim');
insert into ROOM (roomid, capacity, roomname)
values (74558, 40, 'Fort Lewis');
commit;
prompt 1300 records committed...
insert into ROOM (roomid, capacity, roomname)
values (34554, 20, 'Westfield');
insert into ROOM (roomid, capacity, roomname)
values (84348, 42, 'Rio Rancho');
insert into ROOM (roomid, capacity, roomname)
values (58883, 25, 'Sevilla');
insert into ROOM (roomid, capacity, roomname)
values (47649, 49, 'Daejeon');
insert into ROOM (roomid, capacity, roomname)
values (72271, 39, 'Anyang-si');
insert into ROOM (roomid, capacity, roomname)
values (64181, 22, 'Bolzano');
insert into ROOM (roomid, capacity, roomname)
values (42246, 28, 'Maserada sul Piave');
insert into ROOM (roomid, capacity, roomname)
values (39445, 36, 'Wageningen');
insert into ROOM (roomid, capacity, roomname)
values (98429, 43, 'Bernex');
insert into ROOM (roomid, capacity, roomname)
values (97342, 27, 'Springville');
insert into ROOM (roomid, capacity, roomname)
values (42971, 46, 'Bernex');
insert into ROOM (roomid, capacity, roomname)
values (89716, 35, 'Dresden');
insert into ROOM (roomid, capacity, roomname)
values (51236, 43, 'Austin');
insert into ROOM (roomid, capacity, roomname)
values (74468, 50, 'El Paso');
insert into ROOM (roomid, capacity, roomname)
values (63216, 25, 'Taipei');
insert into ROOM (roomid, capacity, roomname)
values (34774, 22, 'Pretoria');
insert into ROOM (roomid, capacity, roomname)
values (49296, 26, 'Pecs');
insert into ROOM (roomid, capacity, roomname)
values (48897, 25, 'Roanoke');
insert into ROOM (roomid, capacity, roomname)
values (64662, 25, 'Santa rita sapuca?');
insert into ROOM (roomid, capacity, roomname)
values (81491, 31, 'Maidenhead');
insert into ROOM (roomid, capacity, roomname)
values (61728, 49, 'Hartford');
insert into ROOM (roomid, capacity, roomname)
values (79755, 45, 'Eisenh?ttenstadt');
insert into ROOM (roomid, capacity, roomname)
values (35261, 39, 'Carlin');
insert into ROOM (roomid, capacity, roomname)
values (25878, 48, 'Hilversum');
insert into ROOM (roomid, capacity, roomname)
values (85597, 47, 'Di Savigliano');
insert into ROOM (roomid, capacity, roomname)
values (48272, 30, 'Santa Cruz');
insert into ROOM (roomid, capacity, roomname)
values (62216, 43, 'Newcastle upon Tyne');
insert into ROOM (roomid, capacity, roomname)
values (84143, 33, 'Santa Cruz');
insert into ROOM (roomid, capacity, roomname)
values (58865, 36, 'Sevilla');
insert into ROOM (roomid, capacity, roomname)
values (46212, 41, 'Caguas');
insert into ROOM (roomid, capacity, roomname)
values (98913, 20, 'California');
insert into ROOM (roomid, capacity, roomname)
values (57123, 49, 'Ramat Gan');
insert into ROOM (roomid, capacity, roomname)
values (36687, 22, 'Woking');
insert into ROOM (roomid, capacity, roomname)
values (57371, 47, 'Hiller?d');
insert into ROOM (roomid, capacity, roomname)
values (66439, 21, 'Fremont');
insert into ROOM (roomid, capacity, roomname)
values (27575, 38, 'Fairview Heights');
insert into ROOM (roomid, capacity, roomname)
values (75783, 30, 'Valladolid');
insert into ROOM (roomid, capacity, roomname)
values (78541, 23, 'Varzea grande');
insert into ROOM (roomid, capacity, roomname)
values (82543, 42, 'Belmont');
insert into ROOM (roomid, capacity, roomname)
values (93572, 24, 'Leinfelden-Echterdin');
insert into ROOM (roomid, capacity, roomname)
values (18738, 39, 'Samrand');
insert into ROOM (roomid, capacity, roomname)
values (12879, 25, 'Bangalore');
insert into ROOM (roomid, capacity, roomname)
values (61824, 40, 'Antwerpen');
insert into ROOM (roomid, capacity, roomname)
values (41725, 28, 'Pordenone');
insert into ROOM (roomid, capacity, roomname)
values (59777, 28, 'Gaza');
insert into ROOM (roomid, capacity, roomname)
values (92613, 35, 'Bartlesville');
insert into ROOM (roomid, capacity, roomname)
values (34275, 37, 'El Segundo');
insert into ROOM (roomid, capacity, roomname)
values (29593, 32, 'Le chesnay');
insert into ROOM (roomid, capacity, roomname)
values (15719, 21, 'St. Louis');
insert into ROOM (roomid, capacity, roomname)
values (43356, 32, 'Stuttgart');
insert into ROOM (roomid, capacity, roomname)
values (11497, 50, 'Coimbra');
insert into ROOM (roomid, capacity, roomname)
values (45855, 35, 'Brisbane');
insert into ROOM (roomid, capacity, roomname)
values (64679, 31, 'Lincoln');
insert into ROOM (roomid, capacity, roomname)
values (14444, 47, 'Storrington');
insert into ROOM (roomid, capacity, roomname)
values (67894, 24, 'Edenbridge');
insert into ROOM (roomid, capacity, roomname)
values (23957, 20, 'Kaohsiung');
insert into ROOM (roomid, capacity, roomname)
values (95892, 42, 'Eschborn');
insert into ROOM (roomid, capacity, roomname)
values (16593, 48, 'Canal Winchester');
insert into ROOM (roomid, capacity, roomname)
values (25276, 20, 'Springville');
insert into ROOM (roomid, capacity, roomname)
values (64543, 38, 'Fort McMurray');
insert into ROOM (roomid, capacity, roomname)
values (52486, 32, 'Pompton Plains');
insert into ROOM (roomid, capacity, roomname)
values (76733, 47, 'West Chester');
insert into ROOM (roomid, capacity, roomname)
values (48883, 26, 'Oak park');
insert into ROOM (roomid, capacity, roomname)
values (77497, 47, 'Juneau');
insert into ROOM (roomid, capacity, roomname)
values (16712, 34, 'Milano');
insert into ROOM (roomid, capacity, roomname)
values (77283, 34, 'Salvador');
insert into ROOM (roomid, capacity, roomname)
values (45634, 50, 'Protvino');
insert into ROOM (roomid, capacity, roomname)
values (18639, 44, 'Verwood');
insert into ROOM (roomid, capacity, roomname)
values (79762, 21, 'Traralgon');
insert into ROOM (roomid, capacity, roomname)
values (43365, 35, 'Burlington');
insert into ROOM (roomid, capacity, roomname)
values (61932, 34, 'Nicosia');
insert into ROOM (roomid, capacity, roomname)
values (11678, 48, 'Lakeville');
insert into ROOM (roomid, capacity, roomname)
values (45315, 34, 'Belo Horizonte');
insert into ROOM (roomid, capacity, roomname)
values (44795, 22, 'Ferraz  vasconcelos');
insert into ROOM (roomid, capacity, roomname)
values (21558, 41, 'Ithaca');
insert into ROOM (roomid, capacity, roomname)
values (59273, 37, 'Lancaster');
insert into ROOM (roomid, capacity, roomname)
values (38315, 26, 'Casselberry');
insert into ROOM (roomid, capacity, roomname)
values (63153, 25, 'Hjallerup');
insert into ROOM (roomid, capacity, roomname)
values (79492, 31, 'Perth');
insert into ROOM (roomid, capacity, roomname)
values (29194, 23, 'Dorval');
insert into ROOM (roomid, capacity, roomname)
values (78283, 29, 'Kyunnam');
insert into ROOM (roomid, capacity, roomname)
values (66243, 48, 'M?nster');
insert into ROOM (roomid, capacity, roomname)
values (14337, 40, 'Bham');
insert into ROOM (roomid, capacity, roomname)
values (52572, 25, 'Ricardson');
insert into ROOM (roomid, capacity, roomname)
values (71426, 37, 'W?rth');
insert into ROOM (roomid, capacity, roomname)
values (95328, 24, 'Lyngby');
insert into ROOM (roomid, capacity, roomname)
values (37844, 34, 'Agoncillo');
insert into ROOM (roomid, capacity, roomname)
values (99897, 30, 'Herndon');
insert into ROOM (roomid, capacity, roomname)
values (18952, 43, 'K?ln');
insert into ROOM (roomid, capacity, roomname)
values (48428, 31, 'Paramus');
insert into ROOM (roomid, capacity, roomname)
values (81138, 44, 'Staten Island');
insert into ROOM (roomid, capacity, roomname)
values (79131, 42, 'Stoneham');
insert into ROOM (roomid, capacity, roomname)
values (92778, 38, 'Tulsa');
insert into ROOM (roomid, capacity, roomname)
values (41323, 35, 'Zagreb');
insert into ROOM (roomid, capacity, roomname)
values (72244, 41, 'Oyten');
insert into ROOM (roomid, capacity, roomname)
values (32211, 41, 'Melbourne');
insert into ROOM (roomid, capacity, roomname)
values (37579, 49, 'Wellington');
insert into ROOM (roomid, capacity, roomname)
values (89428, 24, 'Holts Summit');
insert into ROOM (roomid, capacity, roomname)
values (72734, 24, 'Kanazawa');
insert into ROOM (roomid, capacity, roomname)
values (88312, 27, 'Akron');
commit;
prompt 1400 records committed...
insert into ROOM (roomid, capacity, roomname)
values (23965, 22, 'Libertyville');
insert into ROOM (roomid, capacity, roomname)
values (88282, 29, 'M?nster');
insert into ROOM (roomid, capacity, roomname)
values (42783, 39, 'Fukui');
insert into ROOM (roomid, capacity, roomname)
values (41235, 23, 'North Point');
insert into ROOM (roomid, capacity, roomname)
values (43589, 38, 'Phoenix');
insert into ROOM (roomid, capacity, roomname)
values (78966, 27, 'Tilburg');
insert into ROOM (roomid, capacity, roomname)
values (89169, 30, 'Glenshaw');
insert into ROOM (roomid, capacity, roomname)
values (84451, 44, 'Doncaster');
insert into ROOM (roomid, capacity, roomname)
values (48884, 48, 'Dalmine');
insert into ROOM (roomid, capacity, roomname)
values (21156, 43, 'Zaandam');
insert into ROOM (roomid, capacity, roomname)
values (68576, 39, 'Milpitas');
insert into ROOM (roomid, capacity, roomname)
values (47337, 47, 'Or-yehuda');
insert into ROOM (roomid, capacity, roomname)
values (57733, 29, 'Oxon');
insert into ROOM (roomid, capacity, roomname)
values (98926, 24, 'Osaka');
insert into ROOM (roomid, capacity, roomname)
values (28738, 29, 'Mogliano Veneto');
insert into ROOM (roomid, capacity, roomname)
values (72745, 46, 'Silver Spring');
insert into ROOM (roomid, capacity, roomname)
values (74947, 24, 'Madison');
insert into ROOM (roomid, capacity, roomname)
values (48544, 24, 'Ricardson');
insert into ROOM (roomid, capacity, roomname)
values (63432, 50, 'Framingham');
insert into ROOM (roomid, capacity, roomname)
values (81654, 31, 'Chiba');
insert into ROOM (roomid, capacity, roomname)
values (52651, 41, 'Vilnius');
insert into ROOM (roomid, capacity, roomname)
values (52347, 42, 'Menlo Park');
insert into ROOM (roomid, capacity, roomname)
values (46762, 20, 'Bristol');
insert into ROOM (roomid, capacity, roomname)
values (63595, 31, 'Miami');
insert into ROOM (roomid, capacity, roomname)
values (95812, 49, 'Treviso');
insert into ROOM (roomid, capacity, roomname)
values (83248, 46, 'Ittigen');
insert into ROOM (roomid, capacity, roomname)
values (78473, 45, 'Ittigen');
insert into ROOM (roomid, capacity, roomname)
values (67493, 49, 'Mechanicsburg');
insert into ROOM (roomid, capacity, roomname)
values (85217, 25, 'Manaus');
insert into ROOM (roomid, capacity, roomname)
values (59557, 24, 'Rheinfelden');
insert into ROOM (roomid, capacity, roomname)
values (79982, 49, 'Carlsbad');
insert into ROOM (roomid, capacity, roomname)
values (39825, 50, 'Batavia');
insert into ROOM (roomid, capacity, roomname)
values (83845, 43, 'Mountain View');
insert into ROOM (roomid, capacity, roomname)
values (89395, 40, 'Immenstaad');
insert into ROOM (roomid, capacity, roomname)
values (26381, 25, 'Mount Olive');
insert into ROOM (roomid, capacity, roomname)
values (35941, 46, 'Kumamoto');
insert into ROOM (roomid, capacity, roomname)
values (49381, 21, 'Warren');
insert into ROOM (roomid, capacity, roomname)
values (29617, 24, 'Yokohama');
insert into ROOM (roomid, capacity, roomname)
values (89862, 49, 'Kungens kurva');
insert into ROOM (roomid, capacity, roomname)
values (61754, 36, 'Middleburg Heights');
insert into ROOM (roomid, capacity, roomname)
values (13177, 20, 'Ilmenau');
insert into ROOM (roomid, capacity, roomname)
values (55575, 39, 'Hartmannsdorf');
insert into ROOM (roomid, capacity, roomname)
values (44227, 28, 'Gummersbach');
insert into ROOM (roomid, capacity, roomname)
values (37547, 25, 'Gauteng');
insert into ROOM (roomid, capacity, roomname)
values (42985, 32, 'Lima');
insert into ROOM (roomid, capacity, roomname)
values (96578, 29, 'Aachen');
insert into ROOM (roomid, capacity, roomname)
values (41441, 48, 'Alexandria');
insert into ROOM (roomid, capacity, roomname)
values (29271, 47, 'Lexington');
insert into ROOM (roomid, capacity, roomname)
values (16389, 40, 'Algermissen');
insert into ROOM (roomid, capacity, roomname)
values (82144, 28, 'Bernex');
insert into ROOM (roomid, capacity, roomname)
values (94481, 29, 'Waco');
insert into ROOM (roomid, capacity, roomname)
values (45625, 48, 'Pecs');
insert into ROOM (roomid, capacity, roomname)
values (36384, 33, 'Altamonte Springs');
insert into ROOM (roomid, capacity, roomname)
values (92474, 31, 'Westfield');
insert into ROOM (roomid, capacity, roomname)
values (46795, 42, 'Almaty');
insert into ROOM (roomid, capacity, roomname)
values (21146, 30, 'Bend');
insert into ROOM (roomid, capacity, roomname)
values (98412, 30, 'Banbury');
insert into ROOM (roomid, capacity, roomname)
values (53556, 35, 'Bellevue');
insert into ROOM (roomid, capacity, roomname)
values (45843, 33, 'Rockville');
insert into ROOM (roomid, capacity, roomname)
values (93293, 25, 'Kyoto');
insert into ROOM (roomid, capacity, roomname)
values (57683, 42, 'Suberg');
insert into ROOM (roomid, capacity, roomname)
values (74562, 44, 'Pompton Plains');
insert into ROOM (roomid, capacity, roomname)
values (37186, 44, 'Matsuyama');
insert into ROOM (roomid, capacity, roomname)
values (11141, 38, 'Koppl');
insert into ROOM (roomid, capacity, roomname)
values (36223, 22, 'Nicosia');
insert into ROOM (roomid, capacity, roomname)
values (41852, 32, 'Sao roque');
insert into ROOM (roomid, capacity, roomname)
values (17412, 27, 'Bethesda');
insert into ROOM (roomid, capacity, roomname)
values (66522, 32, 'Nepean');
insert into ROOM (roomid, capacity, roomname)
values (63243, 45, 'Wageningen');
insert into ROOM (roomid, capacity, roomname)
values (51583, 21, 'Oldham');
insert into ROOM (roomid, capacity, roomname)
values (99359, 29, 'Wellington');
insert into ROOM (roomid, capacity, roomname)
values (66447, 29, 'Richardson');
insert into ROOM (roomid, capacity, roomname)
values (73533, 47, 'Vejle');
insert into ROOM (roomid, capacity, roomname)
values (77783, 39, 'Ciudad del Este');
insert into ROOM (roomid, capacity, roomname)
values (63596, 47, 'Duluth');
insert into ROOM (roomid, capacity, roomname)
values (12358, 33, 'North Point');
insert into ROOM (roomid, capacity, roomname)
values (47495, 35, 'Tilburg');
insert into ROOM (roomid, capacity, roomname)
values (43346, 43, 'Melrose park');
insert into ROOM (roomid, capacity, roomname)
values (39528, 31, 'Kuraby');
insert into ROOM (roomid, capacity, roomname)
values (46848, 23, 'Koeln');
insert into ROOM (roomid, capacity, roomname)
values (28359, 46, 'Kozani');
insert into ROOM (roomid, capacity, roomname)
values (87272, 23, 'Rockford');
insert into ROOM (roomid, capacity, roomname)
values (37371, 45, 'Mclean');
insert into ROOM (roomid, capacity, roomname)
values (48627, 39, 'Holliston');
insert into ROOM (roomid, capacity, roomname)
values (59974, 22, 'Waterloo');
insert into ROOM (roomid, capacity, roomname)
values (29833, 44, 'Monmouth');
insert into ROOM (roomid, capacity, roomname)
values (33398, 31, 'Glenshaw');
insert into ROOM (roomid, capacity, roomname)
values (46495, 24, 'Huntsville');
insert into ROOM (roomid, capacity, roomname)
values (95843, 36, 'Tallahassee');
insert into ROOM (roomid, capacity, roomname)
values (12649, 30, 'Fukui');
insert into ROOM (roomid, capacity, roomname)
values (25874, 39, 'Athens');
insert into ROOM (roomid, capacity, roomname)
values (24323, 42, 'Archbold');
insert into ROOM (roomid, capacity, roomname)
values (66936, 25, 'Hermitage');
insert into ROOM (roomid, capacity, roomname)
values (31631, 31, 'Birmensdorf');
insert into ROOM (roomid, capacity, roomname)
values (18171, 46, 'Freising');
insert into ROOM (roomid, capacity, roomname)
values (54572, 35, 'Ringwood');
insert into ROOM (roomid, capacity, roomname)
values (77313, 23, 'Lexington');
insert into ROOM (roomid, capacity, roomname)
values (23469, 31, 'Kista');
insert into ROOM (roomid, capacity, roomname)
values (43788, 50, 'Albuquerque');
insert into ROOM (roomid, capacity, roomname)
values (63111, 34, 'Bergen');
commit;
prompt 1500 records committed...
insert into ROOM (roomid, capacity, roomname)
values (86768, 44, 'Stony Point');
insert into ROOM (roomid, capacity, roomname)
values (82121, 38, 'Colorado Springs');
insert into ROOM (roomid, capacity, roomname)
values (84761, 46, 'Mablethorpe');
insert into ROOM (roomid, capacity, roomname)
values (95372, 22, 'Caguas');
insert into ROOM (roomid, capacity, roomname)
values (54351, 45, 'Pecs');
insert into ROOM (roomid, capacity, roomname)
values (28394, 43, 'Reykjavik');
insert into ROOM (roomid, capacity, roomname)
values (11292, 30, 'Boulogne');
insert into ROOM (roomid, capacity, roomname)
values (41825, 30, 'Rochester');
insert into ROOM (roomid, capacity, roomname)
values (33723, 50, 'Cannock');
insert into ROOM (roomid, capacity, roomname)
values (34934, 45, 'Oxford');
insert into ROOM (roomid, capacity, roomname)
values (94649, 20, 'Ilmenau');
insert into ROOM (roomid, capacity, roomname)
values (38142, 42, 'Barcelona');
insert into ROOM (roomid, capacity, roomname)
values (61186, 47, 'Slough');
insert into ROOM (roomid, capacity, roomname)
values (33485, 38, 'Kungki');
insert into ROOM (roomid, capacity, roomname)
values (17338, 39, 'Oxon');
insert into ROOM (roomid, capacity, roomname)
values (67236, 42, 'Bras?lia');
insert into ROOM (roomid, capacity, roomname)
values (13276, 34, 'Dinslaken');
insert into ROOM (roomid, capacity, roomname)
values (49528, 29, 'Brussel');
insert into ROOM (roomid, capacity, roomname)
values (33382, 46, 'Lexington');
insert into ROOM (roomid, capacity, roomname)
values (96586, 31, 'Leinfelden-Echterdin');
insert into ROOM (roomid, capacity, roomname)
values (36349, 26, 'Jerusalem');
insert into ROOM (roomid, capacity, roomname)
values (88638, 27, 'Cannock');
insert into ROOM (roomid, capacity, roomname)
values (42619, 20, 'Doncaster');
insert into ROOM (roomid, capacity, roomname)
values (81893, 20, 'Hilversum');
insert into ROOM (roomid, capacity, roomname)
values (54838, 46, 'Enschede');
insert into ROOM (roomid, capacity, roomname)
values (14848, 28, 'Cuenca');
insert into ROOM (roomid, capacity, roomname)
values (59746, 47, 'San Francisco');
insert into ROOM (roomid, capacity, roomname)
values (25284, 38, 'Massagno');
insert into ROOM (roomid, capacity, roomname)
values (62697, 34, 'Ankara');
insert into ROOM (roomid, capacity, roomname)
values (49792, 39, 'Hiroshima');
insert into ROOM (roomid, capacity, roomname)
values (59724, 44, 'Silverdale');
insert into ROOM (roomid, capacity, roomname)
values (56433, 32, 'Lyngby');
insert into ROOM (roomid, capacity, roomname)
values (78131, 44, 'Goteborg');
insert into ROOM (roomid, capacity, roomname)
values (54885, 22, 'Forest Park');
insert into ROOM (roomid, capacity, roomname)
values (72517, 28, 'Columbus');
insert into ROOM (roomid, capacity, roomname)
values (88146, 50, 'Northbrook');
insert into ROOM (roomid, capacity, roomname)
values (63774, 49, 'Greenville');
insert into ROOM (roomid, capacity, roomname)
values (11882, 26, 'Gummersbach');
insert into ROOM (roomid, capacity, roomname)
values (29495, 46, 'Utsunomiya');
insert into ROOM (roomid, capacity, roomname)
values (85119, 38, 'Newbury');
insert into ROOM (roomid, capacity, roomname)
values (48462, 36, 'Tooele');
insert into ROOM (roomid, capacity, roomname)
values (52821, 28, 'Arlington');
insert into ROOM (roomid, capacity, roomname)
values (88721, 22, 'Bkk');
insert into ROOM (roomid, capacity, roomname)
values (33844, 45, 'Oak park');
insert into ROOM (roomid, capacity, roomname)
values (67322, 50, 'K?ln');
insert into ROOM (roomid, capacity, roomname)
values (43529, 31, 'Mount Laurel');
insert into ROOM (roomid, capacity, roomname)
values (76455, 43, 'Velizy Villacoublay');
insert into ROOM (roomid, capacity, roomname)
values (22717, 42, 'Rancho Palos Verdes');
insert into ROOM (roomid, capacity, roomname)
values (78783, 48, 'New Delhi');
insert into ROOM (roomid, capacity, roomname)
values (52289, 47, 'Kobe');
commit;
prompt 1550 records loaded
prompt Loading CIRCLE...
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (76572, 26, 'BuffyBracco', 76934);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (44835, 21, 'NataliePenn', 23384);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (15431, 58, 'PamSpringfield', 26739);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (16425, 52, 'MaceoSepulveda', 69885);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (49314, 51, 'FranceColeman', 75112);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (79658, 56, 'JoannaPopper', 52195);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (65334, 22, 'NickelCollette', 77239);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (56662, 56, 'TchekyDamon', 31356);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (59855, 49, 'ChakaMcDowell', 89111);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (67728, 69, 'NatashaMcDonnell', 54295);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (96243, 58, 'RosanneBaker', 99192);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (12519, 67, 'AaronCreek', 15463);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (76969, 24, 'EmilyRhodes', 21424);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (12264, 55, 'SarahReno', 74562);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (76861, 31, 'HerbieSteagall', 48442);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (25189, 29, 'RoryBarrymore', 43255);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (11886, 30, 'TonyPigott-Smith', 89914);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (32525, 52, 'JuliaFrancis', 45644);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (33744, 23, 'BridgetSimpson', 94312);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (33636, 56, 'GordieKoyana', 43365);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (45141, 58, 'PamHawthorne', 86571);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (53929, 59, 'DevonTanon', 48729);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (93574, 37, 'AustinSevenfold', 73379);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (91557, 44, 'AmyD''Onofrio', 84766);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (77471, 34, 'JerryEl-Saher', 96817);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (77966, 33, 'MiliHeald', 93724);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (15483, 62, 'HelenSingletary', 73296);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (71258, 34, 'TildaFavreau', 65442);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (86575, 66, 'RandyTisdale', 95257);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (25764, 41, 'EmilioReeves', 66322);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (47641, 65, 'GordieVega', 88632);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (82115, 46, 'UmaGandolfini', 31677);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (36811, 61, 'SamCara', 75538);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (82445, 21, 'VinceCurry', 19965);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (83173, 47, 'SelmaIrving', 46478);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (76259, 70, 'EmmylouCrouch', 29866);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (59814, 55, 'HazelLewis', 19228);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (67784, 59, 'RawlinsWinans', 78829);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (19627, 23, 'BobbySteiger', 25726);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (79756, 59, 'WalterPierce', 17524);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (33376, 25, 'MaureenVince', 78131);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (99713, 29, 'LindseySchwimmer', 25799);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (43689, 32, 'ToddTaylor', 54889);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (47621, 58, 'MadeleineShatner', 17411);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (32577, 53, 'MaryCurtis-Hall', 43148);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (62361, 41, 'BrittanyPonce', 67712);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (13116, 24, 'JulioDe Niro', 64268);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (44478, 68, 'DenisLloyd', 91629);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (86594, 21, 'DionneHyde', 42293);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (27743, 41, 'FatsAlston', 89216);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (49258, 59, 'MadelineDushku', 65998);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (35372, 59, 'ConnieMacLachlan', 33351);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (88961, 63, 'DariusHershey', 61849);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (24881, 57, 'WillGaines', 96819);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (63859, 67, 'FrancesSledge', 45634);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (35212, 32, 'HilaryShepherd', 83194);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (99347, 40, 'AimeeBragg', 19135);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (68752, 52, 'GwynethEdmunds', 19965);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (85597, 51, 'NeilLedger', 83265);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (27156, 21, 'BruceMagnuson', 15463);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (15847, 21, 'FayeDanger', 63219);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (89941, 49, 'ReneWakeling', 24323);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (27246, 56, 'LouBright', 56594);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (64922, 52, 'LorraineVega', 85196);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (38156, 44, 'HenryHauser', 36349);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (89725, 22, 'RandyHoffman', 37732);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (96198, 35, 'SaulMacLachlan', 22175);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (49224, 51, 'RoseCochran', 89938);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (97233, 62, 'NigelDunst', 41957);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (51131, 33, 'HalleStanley', 21436);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (22514, 53, 'JefferyErmey', 72834);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (11346, 61, 'GordonDetmer', 63153);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (43475, 42, 'LeeleePlayboys', 21784);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (56378, 46, 'ChrissieCarr', 25462);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (89165, 42, 'HowardKidman', 45592);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (41999, 66, 'WallaceLevin', 54753);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (37567, 27, 'GoranBalin', 74293);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (68764, 62, 'LindaPaquin', 32994);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (14925, 50, 'JoelyBurke', 63364);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (97621, 68, 'MerrillDushku', 74558);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (34929, 69, 'EmmylouPantoliano', 74577);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (28768, 35, 'GarryGere', 29994);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (33265, 24, 'VerticalRankin', 53551);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (96717, 44, 'CarlaLoggins', 91756);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (12922, 41, 'BalthazarSossamon', 25878);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (59888, 50, 'ChristopherFoxx', 34174);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (28543, 70, 'BoydChung', 53797);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (35438, 39, 'SuziBerkley', 72236);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (71661, 64, 'CeCeCoolidge', 96268);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (65556, 70, 'CyndiFrakes', 69885);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (42768, 22, 'TreatLachey', 72718);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (49593, 66, 'MaureenCruise', 74293);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (92768, 23, 'MikeFolds', 38786);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (67632, 29, 'JesseSarandon', 35329);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (83828, 49, 'MosLang', 16992);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (34571, 21, 'ChristianSupernaw', 42333);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (13827, 63, 'ValStampley', 24645);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (62118, 64, 'JudyOates', 19686);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (92848, 37, 'RitaTurner', 56768);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (63973, 40, 'MaeCreek', 34713);
commit;
prompt 100 records committed...
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (72527, 69, 'HalleHenstridge', 27376);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (69746, 51, 'GarthTankard', 87731);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (87561, 49, 'JimmieFlatts', 69276);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (55535, 49, 'GiovanniConroy', 95865);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (85984, 28, 'Nathande Lancie', 47681);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (17243, 49, 'RedBates', 44429);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (63858, 47, 'BustaNicholas', 92149);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (58293, 24, 'RutgerRemar', 23523);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (68296, 22, 'LievBrosnan', 35988);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (39586, 20, 'AnthonyLaws', 27492);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (83632, 38, 'DeborahMcCready', 72542);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (61649, 49, 'JeremyWashington', 71426);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (46655, 47, 'LeeFerry', 23523);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (42637, 69, 'FranceSpeaks', 61515);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (78636, 46, 'JudiDowney', 47282);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (27253, 34, 'ShirleyVassar', 29451);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (45474, 61, 'RicardoMann', 65917);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (91192, 31, 'JaniceWells', 29472);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (72872, 64, 'VincentThorton', 62118);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (57467, 36, 'SaulGough', 85111);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (76487, 20, 'IvanShocked', 77497);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (18272, 41, 'CollinLeary', 89914);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (73387, 58, 'DonaldSartain', 32211);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (29252, 49, 'BryanCash', 47812);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (58193, 26, 'BuddySteenburgen', 43529);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (29414, 30, 'MatthewArkin', 97416);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (76127, 42, 'CliffDel Toro', 84418);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (69745, 43, 'RipNuman', 63134);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (29786, 66, 'LucindaBright', 94597);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (63555, 43, 'FamkeProwse', 79776);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (39166, 35, 'AlHuston', 95843);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (39727, 46, 'WaymanWayans', 15272);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (35914, 60, 'RandyGarfunkel', 51727);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (49232, 38, 'MalcolmRickles', 89344);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (19817, 30, 'AngieSledge', 47921);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (38322, 49, 'RachaelKier', 32492);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (87116, 63, 'ThelmaCrudup', 25414);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (19388, 45, 'MerleLizzy', 12589);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (48327, 28, 'TracyBenet', 17348);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (68783, 40, 'CleaGiannini', 43762);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (39754, 46, 'ColinHartnett', 96518);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (34717, 38, 'WallaceDrive', 24625);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (79479, 26, 'JannDownie', 75267);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (94595, 42, 'WillemGreenwood', 12491);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (39689, 59, 'CarlBaez', 31512);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (49496, 27, 'HalleBiel', 88526);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (14249, 42, 'VinceBracco', 68224);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (47925, 52, 'ToddBosco', 29451);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (92471, 51, 'DannyAdkins', 26137);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (98826, 35, 'LaraBerkeley', 27143);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (35374, 48, 'NellyDeVito', 41235);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (58378, 25, 'BoPaxton', 57123);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (42215, 29, 'JudyPeniston', 68224);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (27525, 54, 'DiamondEsposito', 38832);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (64484, 61, 'NickelCrow', 27492);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (71483, 24, 'IkeMatthau', 76955);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (17336, 22, 'PattiPerry', 74543);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (62923, 70, 'GiovanniLindo', 25445);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (68312, 39, 'GarryThewlis', 69628);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (58515, 64, 'MegSevigny', 76589);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (79234, 32, 'TaylorLlewelyn', 77539);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (96373, 63, 'RaulGore', 45215);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (89949, 59, 'DenisDiddley', 11852);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (95362, 25, 'BernieVoight', 18374);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (87921, 35, 'MeredithBridges', 35849);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (54193, 61, 'GailardStreet', 59122);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (74147, 51, 'FranceSchreiber', 54994);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (44665, 20, 'TiaNakai', 47613);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (12971, 26, 'ColeRaybon', 69628);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (88954, 22, 'ShelbyWincott', 53179);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (64583, 50, 'IsaacDowney', 12226);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (72746, 42, 'DrewLoggins', 83467);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (17698, 28, 'JenniferHatfield', 24991);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (24459, 44, 'TerenceBedelia', 38416);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (46582, 35, 'BalthazarSecada', 92618);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (23281, 41, 'RoyVinton', 48787);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (99255, 30, 'AaronGriffiths', 88231);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (66196, 31, 'MikiConnick', 18351);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (68332, 51, 'JudiMazar', 72933);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (48597, 28, 'UmaIglesias', 92467);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (52716, 22, 'KieranBirch', 28988);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (55624, 25, 'ScottReeves', 46977);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (86793, 41, 'AnneBlack', 93358);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (71741, 65, 'GilbertoBlack', 26328);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (96424, 68, 'JonnyCharles', 95787);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (25569, 39, 'TiaSherman', 71257);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (76667, 64, 'AndraeThornton', 74468);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (59955, 45, 'KittyChaplin', 98256);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (67238, 40, 'BradleyPiven', 34963);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (84334, 65, 'AliceFlemyng', 38573);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (67435, 32, 'RoddyRedgrave', 55923);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (87665, 65, 'BurtonJackman', 44584);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (59264, 68, 'JerryLennix', 98788);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (83447, 56, 'BreckinBreslin', 79645);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (91362, 46, 'LindaCash', 81893);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (74599, 63, 'LarnelleBegley', 89111);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (65746, 21, 'JulieHarrelson', 77283);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (37766, 26, 'ConnieKatt', 56696);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (35327, 51, 'AnnieVan Helden', 53743);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (25616, 59, 'RoseBrickell', 15719);
commit;
prompt 200 records committed...
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (28871, 31, 'HughWillis', 99917);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (69169, 36, 'LiquidRedford', 87712);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (29842, 22, 'KevinCrowe', 25313);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (32918, 31, 'DermotSpine', 98224);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (77587, 43, 'DebbieSevigny', 32476);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (63927, 22, 'NataschaDeVito', 53985);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (22375, 24, 'GeoffSobieski', 66393);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (18547, 70, 'LivUnion', 94833);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (81793, 51, 'RascalYoung', 71613);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (97569, 54, 'SethWhite', 38295);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (14827, 52, 'PercyMirren', 93248);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (58698, 69, 'DennisZappacosta', 33675);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (83323, 32, 'ViggoEvanswood', 24317);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (22217, 46, 'BebeQuinlan', 55382);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (64911, 61, 'WesJolie', 65442);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (61163, 27, 'GordonNicks', 42619);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (31966, 38, 'DonaldSpacey', 67557);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (16632, 41, 'GeoffCrowe', 99612);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (81945, 31, 'RuebenHarrelson', 94871);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (89964, 53, 'VictorFlanery', 27528);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (76644, 36, 'AngelaPigott-Smith', 93656);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (68959, 68, 'KarenAbraham', 78665);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (11363, 34, 'DarylEaston', 38859);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (56796, 57, 'NoahBrando', 78829);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (39275, 46, 'ChazzLipnicki', 81893);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (52626, 70, 'JoanBiel', 69348);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (73927, 20, 'JohnnyDeschanel', 16756);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (49571, 69, 'PaulaGlenn', 47942);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (11499, 21, 'RandallOwen', 34963);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (71331, 46, 'CarolRankin', 71486);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (45336, 27, 'GrantLyonne', 61528);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (67599, 70, 'PattiBates', 19686);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (14588, 63, 'GiovanniGoodman', 71868);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (15421, 44, 'PatrickFinney', 74715);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (53529, 60, 'AimeeDavidtz', 99983);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (97351, 63, 'ChetForrest', 46927);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (36883, 29, 'JudiFlatts', 32476);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (28777, 40, 'CrispinAllen', 59873);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (46276, 47, 'DavisRauhofer', 58147);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (25375, 52, 'GenaRicci', 97387);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (98342, 62, 'RawlinsLowe', 94321);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (32398, 32, 'LiliRonstadt', 38416);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (73567, 21, 'AliciaManning', 68329);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (17354, 53, 'PaulaLachey', 62871);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (55561, 55, 'AmandaStreet', 52416);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (74218, 31, 'AndyBall', 69348);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (33412, 38, 'GeoffFlanery', 72718);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (63465, 66, 'RoscoStanley', 65442);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (42733, 25, 'JudeImperioli', 84761);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (87449, 20, 'RobbieMarin', 74379);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (13748, 59, 'VanessaStiers', 25366);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (95812, 32, 'AdinaFoley', 64343);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (84622, 35, 'SammyDutton', 57276);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (83877, 34, 'RobertBoone', 37973);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (88563, 42, 'JudiRyder', 32492);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (49632, 44, 'SonaWitt', 78966);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (98296, 30, 'ElizaPerez', 84143);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (32844, 51, 'DavyBrody', 94871);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (37549, 43, 'RitaMurray', 44776);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (13875, 40, 'NoraTippe', 37333);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (11791, 56, 'MiliDourif', 31631);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (22465, 32, 'BrianFolds', 71257);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (67259, 37, 'CarolineDiCaprio', 34713);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (23656, 47, 'NigelSpacek', 29732);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (44882, 50, 'SherylChappelle', 28916);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (61318, 27, 'OliverGiraldo', 88778);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (62592, 41, 'SuzyBeckinsale', 16463);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (51986, 21, 'LorenFarrow', 47495);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (48938, 27, 'MitchellMcDonnell', 12639);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (61475, 41, 'GavinSnider', 58614);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (15187, 27, 'TyVinton', 37371);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (21917, 64, 'MauraWinger', 31899);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (66858, 20, 'MintMcAnally', 81524);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (37936, 66, 'JeanneBroza', 53252);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (33695, 31, 'OlgaChurch', 43148);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (34769, 51, 'CherryBonneville', 35541);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (52868, 67, 'GinaSutherland', 59281);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (45982, 53, 'ToddRickles', 69628);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (45171, 66, 'JudeHunter', 56245);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (41314, 21, 'TayeTucker', 87555);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (35595, 25, 'BarbaraEdmunds', 74614);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (56652, 51, 'KylieFariq', 56594);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (31427, 67, 'RobDooley', 26859);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (89139, 51, 'BradRauhofer', 14931);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (57875, 54, 'PatriciaGates', 28213);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (93563, 51, 'IlleanaDalton', 25878);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (48387, 23, 'RaulStuermer', 54698);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (63718, 50, 'TalvinBenson', 93424);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (76653, 42, 'ForestHamilton', 29597);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (18373, 44, 'TyroneGriffin', 47196);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (91612, 21, 'Ming-NaPaltrow', 88632);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (19445, 23, 'PattiKershaw', 15463);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (78263, 53, 'JaniceDiaz', 58798);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (35959, 66, 'CaseyMcKean', 54282);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (33428, 44, 'BridgetteQuaid', 56843);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (62973, 42, 'LesleyAtkins', 91451);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (23961, 61, 'TimothyBlack', 57229);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (96235, 51, 'RuebenReynolds', 62216);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (36612, 29, 'SallySuvari', 66927);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (19268, 24, 'AaronMatheson', 78841);
commit;
prompt 300 records committed...
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (34441, 44, 'TyroneFurtado', 35697);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (64344, 46, 'AllanSample', 59777);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (48662, 46, 'RikPalin', 48883);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (53171, 24, 'CurtisMcDiarmid', 63774);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (83747, 59, 'RaymondMason', 92745);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (96362, 27, 'SonaHauser', 93248);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (35955, 20, 'TraceRyan', 44364);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (63452, 44, 'KristinImbruglia', 67446);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (83367, 21, 'SharonTeng', 74777);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (67371, 63, 'WinonaJane', 26817);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (58557, 56, 'BettyWayans', 25313);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (19286, 28, 'MachineClinton', 72933);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (42938, 49, 'LanceUnion', 56433);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (96788, 62, 'JavonDuke', 77146);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (45867, 36, 'RickyLaPaglia', 32211);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (45743, 49, 'DonnaBlackwell', 77162);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (24114, 66, 'FredSarsgaard', 74516);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (74759, 48, 'DanielGatlin', 88282);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (64961, 43, 'WangViterelli', 54572);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (98967, 63, 'Jean-LucTah', 94939);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (32461, 44, 'StanleyMoreno', 66558);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (85743, 28, 'IvanBiel', 99598);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (49877, 47, 'MoeFerrer', 54885);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (57793, 63, 'ChrisConners', 33351);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (22549, 20, 'ColmCrimson', 51236);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (91418, 48, 'CliffRyder', 97969);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (82821, 34, 'GeenaBening', 97664);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (81221, 42, 'VerucaDiehl', 43124);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (93758, 26, 'CesarBarry', 69737);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (84269, 35, 'BarbaraTurturro', 72244);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (83142, 48, 'KimWhite', 42985);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (96662, 61, 'JoeShaw', 69551);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (46268, 40, 'ScarlettCarter', 53551);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (23769, 68, 'MiriamCollie', 16712);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (86381, 27, 'RobertaArkenstone', 74379);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (72545, 66, 'BozDavid', 25785);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (23798, 45, 'LeaPacino', 49296);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (28546, 27, 'KayBrock', 78595);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (16255, 60, 'FionaHorton', 92565);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (81255, 67, 'AlanaNuman', 95487);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (32593, 55, 'JacksonWebb', 57955);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (37792, 36, 'IsabellaHolden', 71426);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (38731, 43, 'AnitaGellar', 33312);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (96637, 55, 'PamBorden', 47812);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (78899, 25, 'BeverleyCochran', 54251);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (36425, 40, 'BobbyStrathairn', 32251);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (22979, 58, 'HaroldO''Connor', 94352);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (54115, 44, 'BeverleyOrlando', 45757);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (89179, 47, 'LiamLaw', 73654);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (24335, 49, 'LilyNess', 35287);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (38941, 64, 'RawlinsCrosby', 77497);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (73913, 33, 'JefferyPalmieri', 78496);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (93752, 39, 'ReneCube', 34189);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (54471, 67, 'LindseyHoskins', 62818);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (99681, 48, 'ValWopat', 29819);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (68285, 53, 'IvanMadonna', 43958);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (41585, 44, 'WillemChao', 48787);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (67466, 49, 'CherrySingh', 75112);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (71291, 67, 'BrookeMcNeice', 84766);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (88246, 22, 'HilaryFlanagan', 57683);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (41151, 45, 'PeteCrow', 62183);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (31671, 59, 'CatherineRedford', 62156);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (82489, 30, 'MauraNeeson', 38315);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (34156, 51, 'MadelineMichael', 79853);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (52272, 33, 'GeggyMcFadden', 89716);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (43257, 68, 'CampbellMahood', 85914);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (79836, 48, 'ReeseStanton', 91629);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (76936, 32, 'NastassjaClarkson', 28186);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (65211, 43, 'LouiseRenfro', 23384);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (35466, 53, 'CharltonPeniston', 35262);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (25923, 58, 'ToniMcPherson', 12491);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (48238, 50, 'RolandoCrouse', 47431);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (25146, 31, 'OmarMars', 92565);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (66493, 64, 'GabyReid', 48428);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (77351, 36, 'LeeHackman', 21726);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (45314, 58, 'TriniFlanery', 21293);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (66539, 49, 'KeithWhitwam', 91756);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (66856, 31, 'RosarioBeals', 48367);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (19214, 31, 'VondieSpeaks', 35372);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (23699, 28, 'PhilRudd', 27198);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (77413, 27, 'SpencerDooley', 56639);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (13614, 25, 'GabrielMcLachlan', 62871);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (87482, 46, 'LupePlummer', 92613);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (21736, 24, 'DarEmmett', 55879);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (53437, 24, 'TildaMcCabe', 82243);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (47824, 50, 'MaggieOrbit', 33559);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (96861, 36, 'CesarSledge', 78496);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (27177, 40, 'AaronLemmon', 92849);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (97179, 40, 'PaulaMalone', 33559);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (67616, 59, 'ToddJones', 29477);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (62456, 23, 'WoodyBenson', 98744);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (93968, 48, 'ChristinaColin Young', 14918);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (37478, 32, 'MerrillSquier', 37499);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (27616, 57, 'JesseOakenfold', 34513);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (58188, 69, 'SolomonFrakes', 94346);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (21938, 36, 'MerrillHanks', 34774);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (61659, 42, 'NikDavidtz', 49456);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (29496, 50, 'MerleSarandon', 99192);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (95786, 28, 'EmmVai', 11112);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (58474, 33, 'NellyGallant', 25874);
commit;
prompt 400 records committed...
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (78569, 57, 'MaureenGyllenhaal', 22145);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (13897, 26, 'RoscoO''Sullivan', 78969);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (69338, 57, 'JulieJessee', 73821);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (91643, 30, 'DiamondVannelli', 34554);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (15682, 41, 'IrenePacino', 93813);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (15921, 59, 'RosarioFirth', 66168);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (74133, 66, 'AshtonColin Young', 74839);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (92151, 33, 'OrlandoMichael', 47574);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (25339, 29, 'EugeneLi', 98485);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (31717, 36, 'MeredithDanes', 45625);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (73243, 69, 'BelindaFavreau', 69551);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (27472, 21, 'AliceMartin', 71975);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (17717, 40, 'AndreRusso', 38922);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (79675, 40, 'OliverVincent', 41119);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (28868, 50, 'MerilleeGryner', 79131);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (27131, 66, 'HaroldCotton', 57733);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (31393, 35, 'HankTsettos', 48897);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (45287, 54, 'StephenBaldwin', 17786);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (44533, 61, 'HookahLevert', 85389);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (41549, 22, 'KeithGreen', 33297);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (32321, 53, 'EarlGugino', 88878);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (23956, 36, 'GavinCarrack', 75369);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (55951, 59, 'RosieKeen', 96765);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (62555, 22, 'JavonTurturro', 28775);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (44591, 20, 'HalleMadonna', 87248);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (48558, 21, 'BuffyMcGill', 37499);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (21238, 68, 'WalterKurtz', 15653);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (64712, 37, 'HenryKennedy', 73533);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (16721, 40, 'NikLang', 98764);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (24531, 63, 'AlanAli', 95389);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (18641, 38, 'MichelleRhys-Davies', 24531);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (46862, 39, 'ChetEverett', 79665);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (52941, 29, 'LeoSarandon', 25445);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (19682, 52, 'QueenLoring', 68381);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (66274, 35, 'CevinO''Neill', 85568);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (81482, 41, 'MilesBruce', 63153);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (72343, 57, 'VincePatillo', 11112);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (59285, 54, 'VinPenders', 25878);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (56725, 35, 'ElleColtrane', 67894);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (63692, 67, 'HarrisonTheron', 84843);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (86696, 45, 'KirkCrosby', 14183);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (59328, 63, 'EdieFoxx', 74562);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (41618, 41, 'ChakaDorn', 88231);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (42648, 68, 'DebiBelles', 96353);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (63843, 24, 'CollinShalhoub', 98899);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (86375, 51, 'KathleenNicholson', 42311);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (94643, 28, 'StewartStrathairn', 36223);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (47285, 47, 'SonaLoggins', 43762);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (19965, 50, 'FranzBracco', 96578);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (96164, 36, 'WillScaggs', 35711);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (68269, 54, 'HexDillon', 11365);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (38362, 48, 'MarcSanta Rosa', 76934);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (61418, 55, 'DickWariner', 63247);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (37631, 62, 'CarlosBurrows', 44795);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (39128, 51, 'NicolasCollie', 93895);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (64111, 35, 'ChelyRundgren', 13282);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (42864, 57, 'BillApple', 35388);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (22324, 53, 'TyAiken', 85737);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (92127, 40, 'MollyRain', 92924);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (89518, 48, 'ColeyCaine', 21383);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (56214, 54, 'JeroenSpeaks', 98711);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (85342, 50, 'IsaiahMarley', 52486);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (36196, 45, 'WillemRamirez', 62183);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (63417, 35, 'JeanneDickinson', 93572);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (74616, 49, 'HelenAlda', 49876);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (33775, 64, 'HectorScheider', 44271);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (23412, 56, 'LeoLindo', 27528);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (79548, 69, 'KyleGracie', 53993);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (25935, 29, 'RitchieJohnson', 81174);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (22354, 49, 'PeteFerry', 86998);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (36463, 20, 'ColeClayton', 23456);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (44942, 30, 'AndraeDavidson', 47523);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (71597, 38, 'ValMcDonald', 43686);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (76819, 27, 'BrittanySedaka', 59281);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (67738, 28, 'NatalieBrock', 15947);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (45891, 38, 'EdgarConnery', 56727);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (38952, 21, 'TaraAkins', 26817);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (36185, 62, 'SalYankovic', 84766);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (33199, 38, 'AzucarRourke', 57133);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (18174, 21, 'AidaBrando', 77936);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (13227, 39, 'BradO''Donnell', 58834);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (49414, 34, 'NedDiffie', 19756);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (33249, 33, 'FrancesSpacey', 75149);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (73368, 64, 'AnnTomei', 74921);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (89729, 50, 'EmmaCeasar', 96586);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (67957, 33, 'AniHidalgo', 25513);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (99229, 49, 'WesStatham', 72185);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (88654, 66, 'CeiliChandler', 34722);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (34713, 56, 'LynnCostello', 67123);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (69962, 58, 'JoseSteenburgen', 63352);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (72177, 61, 'OwenPeet', 22465);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (67386, 40, 'YaphetJanney', 99553);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (69359, 66, 'IsaiahPalmieri', 77616);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (42871, 65, 'ChetBerry', 75313);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (16116, 70, 'DebbyBacon', 72236);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (27453, 43, 'EliasOwen', 82716);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (46654, 30, 'GarlandArcher', 57125);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (45565, 67, 'TraceSupernaw', 44867);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (76449, 50, 'HikaruPryce', 12639);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (84828, 36, 'CyndiFarris', 29732);
commit;
prompt 500 records committed...
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (41257, 65, 'CarolynDushku', 36663);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (55639, 70, 'AliciaDawson', 14951);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (52114, 35, 'MiguelRobards', 16497);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (24263, 20, 'VernKinney', 37619);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (46728, 52, 'EmilioPaymer', 74516);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (51917, 22, 'DebbyDrive', 83467);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (17178, 27, 'MaxReilly', 42985);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (34966, 27, 'CarrieWeaving', 38922);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (25141, 20, 'GregLange', 34275);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (42635, 28, 'MindyJessee', 76733);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (23154, 58, 'GrantEaston', 66863);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (43279, 63, 'CornellTsettos', 99359);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (22689, 20, 'WillNielsen', 91973);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (51727, 54, 'SelmaPullman', 41684);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (47944, 21, 'Mary BethColtrane', 48231);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (65786, 67, 'SheenaDawson', 79492);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (29535, 69, 'RachelSchiavelli', 81893);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (95597, 25, 'FairuzaManning', 71486);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (44661, 33, 'AlLarter', 41825);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (53468, 49, 'HarryCrowe', 11365);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (99623, 49, 'TemueraO''Connor', 89177);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (43189, 63, 'TanyaBriscoe', 73156);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (98979, 60, 'GladysKenoly', 36384);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (59956, 61, 'KathyFierstein', 42619);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (93389, 41, 'HenryMahoney', 97131);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (96577, 58, 'RhysRowlands', 21586);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (48325, 55, 'LariChecker', 42982);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (63531, 31, 'KidColton', 48541);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (64211, 52, 'JanePreston', 76298);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (69772, 51, 'AaronColtrane', 12249);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (54885, 21, 'RuebenNakai', 25313);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (22252, 36, 'GeraldWeisz', 49718);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (21547, 42, 'AimeeLennix', 94428);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (89458, 55, 'FrankSample', 92994);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (43962, 29, 'AnnStrong', 35261);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (47547, 69, 'LeonardoSquier', 25822);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (91342, 66, 'MarlonHurley', 53985);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (92744, 25, 'EdwinDownie', 17749);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (95497, 59, 'IceKline', 89216);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (21439, 42, 'CubaDench', 66121);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (57447, 69, 'CherylWeaving', 53743);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (55634, 48, 'VickieBotti', 34275);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (38257, 36, 'StevenCarradine', 24991);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (25511, 24, 'DennisSinatra', 58883);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (69786, 48, 'ArtGarber', 17765);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (86644, 52, 'EddieSobieski', 19741);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (42746, 69, 'EarlKaryo', 23417);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (67124, 67, 'GordonVisnjic', 21424);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (11192, 55, 'ThomasSossamon', 92745);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (56631, 26, 'KristinMcNarland', 98899);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (59355, 41, 'DebbyLeguizamo', 45215);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (13983, 32, 'KathleenHeslov', 51596);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (61235, 47, 'ConnieHarry', 59273);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (72158, 40, 'WillRebhorn', 13177);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (61151, 28, 'GladysBratt', 45113);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (52775, 27, 'AlanaApplegate', 65998);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (48746, 55, 'MartyBlair', 17786);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (15842, 36, 'EmmaRebhorn', 47337);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (79135, 64, 'PaulaPlowright', 49296);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (22492, 22, 'LindaMcDowall', 25785);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (71779, 58, 'NileKurtz', 72734);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (99136, 27, 'ViennaHolbrook', 52617);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (22745, 22, 'LenaThomson', 85897);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (35554, 67, 'EmmPalminteri', 11272);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (64764, 41, 'DonnaPollack', 14172);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (94532, 20, 'RonMorton', 89771);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (73738, 52, 'RobinArcher', 36384);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (86245, 23, 'JasonVan Helden', 36687);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (25575, 56, 'MerrillBean', 85965);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (59692, 62, 'TimothyLennox', 19564);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (24715, 49, 'RickMcKennitt', 16517);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (29452, 30, 'RonDepp', 19741);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (24441, 44, 'PetulaSayer', 67653);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (52338, 43, 'GaryLawrence', 52868);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (76993, 20, 'AlbertAllen', 74238);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (31743, 63, 'SophieIrons', 92293);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (26244, 65, 'LorettaMaxwell', 28213);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (21653, 35, 'JannFurtado', 74854);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (99549, 44, 'JoanZahn', 21436);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (51885, 28, 'JanePage', 38142);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (76193, 20, 'DonaldMcDonnell', 83194);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (75875, 48, 'ChadHersh', 82443);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (17511, 48, 'KevnStanton', 17559);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (16765, 25, 'TchekyMcGoohan', 16751);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (37552, 53, 'StockardBrickell', 29984);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (97849, 60, 'SandraEvanswood', 74512);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (96617, 59, 'SaulColtrane', 81498);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (35655, 70, 'BenjaminCheadle', 31652);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (36197, 44, 'RupertLennox', 26168);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (43799, 23, 'QuentinSewell', 38142);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (75764, 70, 'CaseyFraser', 18983);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (74146, 56, 'LeeleeEmmerich', 85119);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (75529, 28, 'StephanieBotti', 63247);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (51929, 67, 'JimmieO''Neill', 56963);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (14512, 46, 'MarianneAssante', 53743);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (97434, 23, 'DaveySteenburgen', 89527);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (29197, 22, 'JoaquimParish', 75595);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (28574, 67, 'LariMyles', 82243);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (55616, 56, 'JamesHawthorne', 78966);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (23861, 48, 'CubaKier', 29994);
commit;
prompt 600 records committed...
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (51543, 42, 'LorenBuffalo', 45577);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (56668, 27, 'EmmylouMcNarland', 28416);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (88879, 60, 'MirandaGellar', 68942);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (34817, 52, 'BrittanyPalminteri', 42331);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (55299, 29, 'CathyEllis', 99928);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (34683, 40, 'ArnoldSilverman', 89235);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (97876, 46, 'VivicaMahoney', 11843);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (55424, 60, 'SylvesterBassett', 58915);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (25927, 64, 'OroBriscoe', 71143);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (22994, 35, 'TrickWinstone', 73156);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (59265, 44, 'RhysGagnon', 44463);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (15767, 30, 'IsabellaBalk', 56115);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (89755, 38, 'DariusVan Shelton', 77749);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (95711, 47, 'YolandaBroza', 98913);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (26284, 21, 'RoscoeScorsese', 93677);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (82975, 22, 'KathyHawkins', 56963);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (77595, 44, 'NanciAiken', 63595);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (47422, 56, 'PragaHouston', 17282);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (54656, 67, 'HalPlimpton', 97269);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (81279, 25, 'GordRourke', 95557);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (39635, 27, 'JasonCarmen', 25451);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (51148, 56, 'CleaRauhofer', 95372);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (14969, 37, 'ColleenFord', 92994);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (52915, 70, 'GeoffShandling', 42246);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (47342, 54, 'DaryleLevert', 16164);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (92177, 43, 'ArminMorales', 11741);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (51876, 63, 'LiquidHedaya', 17348);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (95158, 44, 'JoanPantoliano', 81659);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (63624, 25, 'SandraPleasence', 24271);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (36555, 57, 'LeeleeTaha', 18217);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (39326, 47, 'JohnetteLynn', 66863);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (65421, 29, 'Jean-LucSlater', 92474);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (59832, 47, 'AdinaRusso', 45764);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (54455, 22, 'JudiWeisberg', 94667);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (32338, 30, 'RobbiePantoliano', 93358);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (21959, 45, 'RadneyStrong', 81936);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (83837, 24, 'LatinHeald', 25366);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (88379, 67, 'GordBerkeley', 94833);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (36325, 43, 'MarlonBlades', 73267);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (37212, 33, 'HazelCosta', 16247);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (45797, 54, 'AnnFavreau', 63558);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (71714, 29, 'JaredJenkins', 82716);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (15614, 26, 'JackAlexander', 17243);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (81256, 69, 'QueenBlackwell', 38416);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (31136, 24, 'CarolHolden', 28916);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (62643, 66, 'DianeAlexander', 49528);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (14188, 35, 'RufusStallone', 33599);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (15794, 35, 'MickyPalin', 99553);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (12637, 32, 'IsaacAli', 41947);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (96194, 66, 'RickieGlover', 33729);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (16175, 29, 'NickelLyonne', 48552);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (58186, 62, 'AzucarChecker', 26943);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (76297, 34, 'KyleSoul', 89454);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (73124, 47, 'JonathaCash', 41896);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (63771, 58, 'LucindaTwilley', 57395);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (99647, 27, 'DavySimpson', 48462);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (54845, 50, 'MerylAllan', 89914);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (35278, 27, 'RebeccaBoyle', 81198);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (51489, 25, 'MaxineAdams', 28214);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (23263, 56, 'ShawnTarantino', 57669);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (63339, 25, 'KennyMcDonald', 14778);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (72271, 56, 'HectorShaye', 17975);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (71218, 42, 'SarahRubinek', 72268);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (26381, 29, 'JuliannePantoliano', 69728);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (76882, 53, 'MarlonCoe', 82468);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (76786, 64, 'EmmaKershaw', 97612);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (64673, 69, 'TalvinCruise', 69775);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (44919, 39, 'AaronMoraz', 35831);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (66432, 24, 'RhonaSpine', 42246);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (12964, 38, 'JulianaMargulies', 68942);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (57711, 20, 'KazemPfeiffer', 15897);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (13958, 50, 'NoahKaryo', 37732);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (74525, 65, 'NatalieQuatro', 48235);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (59466, 54, 'HarrietPantoliano', 29597);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (41988, 67, 'DeniseIngram', 47681);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (52381, 68, 'NastassjaSupernaw', 29866);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (41296, 58, 'NatalieBeckinsale', 34774);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (81161, 21, 'NikDern', 17338);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (18424, 53, 'MichelleRussell', 55976);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (48281, 45, 'FairuzaRundgren', 38765);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (93195, 46, 'RonZahn', 71975);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (19717, 21, 'KirkHarrelson', 98926);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (82415, 38, 'IlleanaSanchez', 86288);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (74234, 55, 'JudiOsmond', 61515);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (24347, 35, 'RebekaQuaid', 44227);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (74615, 33, 'ClaireBusey', 89549);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (99465, 28, 'LorettaRodgers', 79982);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (25471, 53, 'CollectiveSinise', 64485);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (82241, 22, 'GarlandBurton', 99917);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (57935, 53, 'FrancoTilly', 66121);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (81112, 30, 'JohnnieDeGraw', 48235);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (78971, 34, 'MiraJeter', 93724);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (31667, 37, 'HarryGallant', 12745);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (39627, 58, 'PetulaLucas', 53743);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (66994, 31, 'LilyQuinn', 24174);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (32166, 29, 'ValNeville', 43183);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (59641, 54, 'NoahDavison', 24879);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (61735, 62, 'EmmylouWalker', 87778);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (45116, 57, 'KaronKline', 49792);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (43612, 56, 'JohnnyCosta', 44767);
commit;
prompt 700 records committed...
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (75249, 38, 'CledusCruz', 48323);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (83456, 47, 'ToddColton', 52525);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (42186, 27, 'CarrieNicholson', 28117);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (35712, 20, 'MaureenHiatt', 72933);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (16314, 44, 'LivTicotin', 42699);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (52168, 63, 'FatsSquier', 34925);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (55438, 52, 'WallaceRockwell', 44584);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (86355, 51, 'AnthonyIdle', 28616);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (66234, 25, 'TerriZevon', 61737);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (14936, 26, 'VendettaSatriani', 64679);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (48137, 58, 'TomRizzo', 73745);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (69443, 61, 'IsaacSutherland', 58158);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (26699, 36, 'KennethTwilley', 22987);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (85843, 51, 'AlessandroKristoffer', 48544);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (95771, 42, 'MichaelGandolfini', 56141);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (67614, 34, 'HikaruMacIsaac', 54652);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (22536, 57, 'BurtEnglish', 41755);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (69726, 67, 'FrancePleasence', 75927);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (89143, 59, 'DemiRundgren', 53383);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (92617, 40, 'BrittanySinise', 99696);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (32538, 58, 'ClarenceFerry', 57733);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (91419, 26, 'RutgerMazzello', 14918);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (77516, 25, 'AnitaPony', 72933);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (85993, 30, 'SusanStowe', 63134);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (26753, 57, 'SaffronLofgren', 55986);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (43128, 45, 'JudyMohr', 46478);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (42266, 38, 'RutgerSinatra', 42333);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (26629, 68, 'JuiceMargulies', 81375);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (79277, 49, 'FredPeterson', 29984);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (34814, 28, 'ArturoRain', 63774);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (84585, 25, 'JerryWopat', 97269);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (68712, 24, 'SineadBiggs', 37732);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (89673, 56, 'MaggieHorton', 27918);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (48466, 22, 'CarrieCoverdale', 52391);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (84769, 23, 'NikkiEvanswood', 21146);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (17499, 44, 'HectorJessee', 32424);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (64477, 33, 'TyroneCalle', 74839);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (88233, 69, 'HowardWeiss', 28231);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (24473, 57, 'KurtwoodNicholson', 48461);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (73815, 51, 'RobbieJanssen', 88661);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (48418, 70, 'EileenHuston', 74238);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (34722, 61, 'HowieBiggs', 34722);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (49644, 70, 'BarryGrier', 67557);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (92162, 26, 'LukeMortensen', 45764);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (63622, 32, 'LeeTeng', 66893);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (96991, 20, 'RobertRaye', 88553);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (13756, 57, 'KennyHeron', 23957);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (86261, 70, 'AlRanger', 37371);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (82476, 58, 'OlympiaLloyd', 81174);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (35413, 39, 'AzucarMason', 16992);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (32457, 60, 'MilesO''Neal', 65846);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (68417, 65, 'FredAlston', 23957);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (62651, 63, 'MandyPlummer', 97387);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (17828, 31, 'SammyRoberts', 86655);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (75277, 55, 'MadeleineTrevino', 28231);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (95585, 44, 'HerbieJohnson', 26739);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (28814, 20, 'RowanNelson', 64918);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (44759, 42, 'Anthonyvon Sydow', 95812);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (83733, 51, 'HowieGarcia', 35711);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (42549, 43, 'JoeyReinhold', 25177);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (37928, 69, 'TimSoul', 25552);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (38419, 69, 'KateKatt', 28738);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (27287, 66, 'BozBacharach', 72646);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (63223, 45, 'JeanneCobbs', 28117);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (41645, 55, 'BoydAzaria', 68576);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (32299, 47, 'HarryBloch', 53836);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (84279, 55, 'DougHughes', 11292);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (12245, 57, 'MiraMollard', 16576);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (94813, 58, 'JoannaEpps', 42755);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (81715, 67, 'RutgerMcKellen', 68329);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (25251, 40, 'AlMacPherson', 36426);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (38598, 36, 'SandraRoberts', 21383);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (69238, 46, 'ColmCosta', 69481);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (59331, 53, 'RaulArkenstone', 96163);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (58935, 49, 'KeithPaige', 14853);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (38637, 44, 'JuliannaMiller', 13479);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (38124, 47, 'KennyMerchant', 48235);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (49112, 29, 'VincePride', 63247);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (47289, 66, 'ColmNegbaur', 82184);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (99217, 68, 'DanielO''Hara', 47942);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (23657, 54, 'BreckinFraser', 69382);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (54216, 27, 'EmbethVincent', 97848);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (23623, 35, 'DrewO''Keefe', 17975);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (16896, 60, 'SimonRowlands', 78473);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (38345, 49, 'JimSaxon', 77497);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (18779, 24, 'PragaNicholson', 61728);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (73972, 64, 'GenaMcDowall', 72195);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (87148, 59, 'DonaldColton', 78473);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (38593, 51, 'GinoShepard', 15947);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (83547, 64, 'PaulMcGregor', 15166);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (87833, 64, 'CoreySpector', 35287);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (12563, 30, 'PattyBurrows', 98256);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (46453, 37, 'ForestPiven', 48166);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (45325, 59, 'GiancarloBotti', 49792);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (32927, 69, 'ValMcLachlan', 12757);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (84865, 51, 'EmersonHeald', 73376);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (27947, 24, 'MickyEder', 73647);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (78973, 52, 'SpencerPaltrow', 14951);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (86258, 43, 'DonPeebles', 65846);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (84486, 50, 'MaxPolley', 42249);
commit;
prompt 800 records committed...
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (62955, 48, 'RutgerArmstrong', 65442);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (85664, 70, 'DanniBush', 81654);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (13587, 34, 'ChristinaNielsen', 85336);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (68475, 70, 'KylieDownie', 44725);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (18764, 69, 'RogerVisnjic', 64362);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (34771, 63, 'TanyaTaylor', 79669);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (78454, 20, 'AlessandroPeniston', 72146);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (53263, 70, 'IsaiahGill', 15131);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (62165, 48, 'RyanVaughan', 37736);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (28552, 33, 'SethJudd', 18374);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (55887, 20, 'DomingoHeatherly', 66558);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (83191, 68, 'NickelVincent', 61634);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (65576, 41, 'TiaWhitman', 68418);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (63964, 49, 'NickelThorton', 66939);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (84181, 50, 'WaynePayton', 61136);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (89768, 20, 'YolandaCube', 83194);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (83387, 53, 'RachidDiehl', 29866);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (23634, 32, 'AnnaMargolyes', 38315);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (96425, 59, 'AustinCooper', 42971);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (65356, 56, 'JesusMcLachlan', 28775);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (39624, 68, 'ToriBale', 93813);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (81379, 68, 'LucindaBelle', 36461);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (19862, 25, 'LizzyBirch', 35541);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (73969, 35, 'DeniseBotti', 65112);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (48634, 40, 'MiraBrody', 38765);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (27961, 48, 'KatrinKristofferson', 39821);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (79483, 42, 'DiamondBenet', 66393);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (48128, 36, 'AmyHughes', 64172);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (19473, 50, 'JulianaMitchell', 14337);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (45356, 59, 'MarthaWesterberg', 51116);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (59532, 57, 'AvengedBurrows', 37958);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (43214, 59, 'PaulaSampson', 91385);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (22634, 27, 'JudeDuncan', 34184);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (38973, 62, 'GoldieMorrison', 48863);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (16527, 44, 'DeniseTodd', 29861);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (34736, 65, 'ViggoWheel', 35769);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (14199, 28, 'BillyRichards', 24317);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (25756, 44, 'JoaquimSinatra', 78283);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (84353, 62, 'ClarenceGuest', 64181);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (49565, 41, 'TanyaVinton', 36749);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (66721, 44, 'LaurenWhitford', 59281);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (11298, 23, 'TreyDanger', 16389);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (71453, 20, 'BrookeMcLean', 95557);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (53895, 57, 'RandyRush', 26381);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (43486, 44, 'LatinLarter', 79168);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (91414, 44, 'RitchiePaltrow', 56594);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (48718, 42, 'MelCapshaw', 84227);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (23793, 35, 'SamuelWeston', 15719);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (96267, 65, 'KittyFlanery', 66558);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (36375, 39, 'GranPaquin', 34513);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (33586, 36, 'DeborahDiFranco', 87487);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (71312, 40, 'PaulaKhan', 58445);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (35177, 63, 'RoscoRock', 62156);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (75716, 57, 'JackEllis', 85336);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (35789, 36, 'JosephTomlin', 89259);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (71237, 22, 'LanceMalkovich', 89363);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (14863, 35, 'LucyDalley', 64987);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (99153, 67, 'JetRockwell', 66243);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (56182, 65, 'NataschaKatt', 67617);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (59887, 40, 'RuebenTah', 48461);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (47885, 36, 'BonnieTorino', 79825);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (37438, 53, 'MelZellweger', 52617);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (41372, 53, 'BrendaBerkoff', 88231);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (34848, 37, 'TeenaGano', 46632);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (29542, 64, 'TeenaWills', 13995);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (23339, 37, 'HerbieLonsdale', 97481);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (76727, 24, 'MarleyRicci', 51116);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (81549, 60, 'LarrySanders', 69796);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (81821, 36, 'CatherinePosener', 51984);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (67848, 35, 'LilaHeston', 16389);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (42799, 26, 'DianneHaysbert', 28929);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (18823, 25, 'BoSepulveda', 35834);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (95839, 55, 'JulioGiamatti', 33528);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (85375, 31, 'SeanBiehn', 32251);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (61434, 42, 'DeborahViterelli', 15897);
insert into CIRCLE (circleid, studentnum, guide, roomid)
values (75942, 48, 'TreatReno', 39559);
commit;
prompt 876 records loaded
prompt Loading GRADE...
insert into GRADE (gradeid, gradename, studentsnum)
values (1234, ' ''Shoham''', 25);
insert into GRADE (gradeid, gradename, studentsnum)
values (2378, ' ''sapir''', 30);
insert into GRADE (gradeid, gradename, studentsnum)
values (6743, ' ''argaman''', 50);
insert into GRADE (gradeid, gradename, studentsnum)
values (9987, ' ''yahalom''', 70);
insert into GRADE (gradeid, gradename, studentsnum)
values (7497, 'G5', 20);
insert into GRADE (gradeid, gradename, studentsnum)
values (3699, 'D6', 34);
insert into GRADE (gradeid, gradename, studentsnum)
values (3613, 'D6', 35);
insert into GRADE (gradeid, gradename, studentsnum)
values (5374, 'F4', 40);
insert into GRADE (gradeid, gradename, studentsnum)
values (1535, 'H7', 21);
insert into GRADE (gradeid, gradename, studentsnum)
values (2115, 'C7', 38);
insert into GRADE (gradeid, gradename, studentsnum)
values (4451, 'G4', 26);
insert into GRADE (gradeid, gradename, studentsnum)
values (9482, 'E4', 11);
insert into GRADE (gradeid, gradename, studentsnum)
values (8988, 'E8', 10);
insert into GRADE (gradeid, gradename, studentsnum)
values (7266, 'F1', 30);
insert into GRADE (gradeid, gradename, studentsnum)
values (8954, 'A2', 13);
insert into GRADE (gradeid, gradename, studentsnum)
values (6727, 'A7', 25);
insert into GRADE (gradeid, gradename, studentsnum)
values (4761, 'B5', 31);
insert into GRADE (gradeid, gradename, studentsnum)
values (3553, 'D4', 18);
insert into GRADE (gradeid, gradename, studentsnum)
values (4421, 'D2', 20);
insert into GRADE (gradeid, gradename, studentsnum)
values (4798, 'F8', 20);
insert into GRADE (gradeid, gradename, studentsnum)
values (2667, 'D6', 40);
insert into GRADE (gradeid, gradename, studentsnum)
values (3591, 'B4', 15);
insert into GRADE (gradeid, gradename, studentsnum)
values (7797, 'G2', 19);
insert into GRADE (gradeid, gradename, studentsnum)
values (4636, 'E4', 11);
insert into GRADE (gradeid, gradename, studentsnum)
values (3526, 'D6', 21);
insert into GRADE (gradeid, gradename, studentsnum)
values (6959, 'G6', 12);
insert into GRADE (gradeid, gradename, studentsnum)
values (5339, 'H4', 39);
insert into GRADE (gradeid, gradename, studentsnum)
values (6391, 'C5', 13);
insert into GRADE (gradeid, gradename, studentsnum)
values (1447, 'C2', 22);
insert into GRADE (gradeid, gradename, studentsnum)
values (1984, 'D8', 11);
insert into GRADE (gradeid, gradename, studentsnum)
values (8847, 'F6', 16);
insert into GRADE (gradeid, gradename, studentsnum)
values (7667, 'A6', 38);
insert into GRADE (gradeid, gradename, studentsnum)
values (7915, 'E1', 25);
insert into GRADE (gradeid, gradename, studentsnum)
values (7717, 'B2', 30);
insert into GRADE (gradeid, gradename, studentsnum)
values (8653, 'B4', 36);
insert into GRADE (gradeid, gradename, studentsnum)
values (6856, 'E6', 27);
insert into GRADE (gradeid, gradename, studentsnum)
values (3323, 'D1', 21);
insert into GRADE (gradeid, gradename, studentsnum)
values (2966, 'E7', 21);
insert into GRADE (gradeid, gradename, studentsnum)
values (3144, 'G6', 19);
insert into GRADE (gradeid, gradename, studentsnum)
values (1565, 'H3', 10);
insert into GRADE (gradeid, gradename, studentsnum)
values (8413, 'H2', 40);
insert into GRADE (gradeid, gradename, studentsnum)
values (3173, 'G1', 29);
insert into GRADE (gradeid, gradename, studentsnum)
values (2483, 'A6', 39);
insert into GRADE (gradeid, gradename, studentsnum)
values (8247, 'C5', 15);
insert into GRADE (gradeid, gradename, studentsnum)
values (5285, 'G2', 30);
insert into GRADE (gradeid, gradename, studentsnum)
values (9532, 'E8', 32);
insert into GRADE (gradeid, gradename, studentsnum)
values (2581, 'A5', 22);
insert into GRADE (gradeid, gradename, studentsnum)
values (9734, 'B1', 15);
insert into GRADE (gradeid, gradename, studentsnum)
values (2499, 'A6', 26);
insert into GRADE (gradeid, gradename, studentsnum)
values (9932, 'D4', 29);
insert into GRADE (gradeid, gradename, studentsnum)
values (2334, 'C2', 12);
insert into GRADE (gradeid, gradename, studentsnum)
values (4928, 'A5', 28);
insert into GRADE (gradeid, gradename, studentsnum)
values (7369, 'B5', 38);
insert into GRADE (gradeid, gradename, studentsnum)
values (1732, 'C6', 23);
insert into GRADE (gradeid, gradename, studentsnum)
values (6997, 'H6', 11);
insert into GRADE (gradeid, gradename, studentsnum)
values (6675, 'A5', 17);
insert into GRADE (gradeid, gradename, studentsnum)
values (4158, 'H8', 16);
insert into GRADE (gradeid, gradename, studentsnum)
values (8329, 'G2', 24);
insert into GRADE (gradeid, gradename, studentsnum)
values (4234, 'C1', 11);
insert into GRADE (gradeid, gradename, studentsnum)
values (5798, 'B3', 16);
insert into GRADE (gradeid, gradename, studentsnum)
values (2666, 'E6', 25);
insert into GRADE (gradeid, gradename, studentsnum)
values (3488, 'D8', 14);
insert into GRADE (gradeid, gradename, studentsnum)
values (4589, 'A8', 24);
insert into GRADE (gradeid, gradename, studentsnum)
values (6323, 'E3', 37);
insert into GRADE (gradeid, gradename, studentsnum)
values (2376, 'C6', 36);
insert into GRADE (gradeid, gradename, studentsnum)
values (1479, 'A2', 25);
insert into GRADE (gradeid, gradename, studentsnum)
values (8827, 'G2', 25);
insert into GRADE (gradeid, gradename, studentsnum)
values (5127, 'D7', 14);
insert into GRADE (gradeid, gradename, studentsnum)
values (1691, 'A5', 11);
insert into GRADE (gradeid, gradename, studentsnum)
values (2756, 'C5', 23);
insert into GRADE (gradeid, gradename, studentsnum)
values (9627, 'D2', 31);
insert into GRADE (gradeid, gradename, studentsnum)
values (4743, 'E5', 13);
insert into GRADE (gradeid, gradename, studentsnum)
values (9796, 'C2', 36);
insert into GRADE (gradeid, gradename, studentsnum)
values (1496, 'G5', 22);
insert into GRADE (gradeid, gradename, studentsnum)
values (9668, 'F1', 18);
insert into GRADE (gradeid, gradename, studentsnum)
values (7619, 'F6', 23);
insert into GRADE (gradeid, gradename, studentsnum)
values (8928, 'B1', 14);
insert into GRADE (gradeid, gradename, studentsnum)
values (7377, 'H5', 13);
insert into GRADE (gradeid, gradename, studentsnum)
values (7838, 'F4', 22);
insert into GRADE (gradeid, gradename, studentsnum)
values (6393, 'B2', 22);
insert into GRADE (gradeid, gradename, studentsnum)
values (8519, 'G8', 29);
insert into GRADE (gradeid, gradename, studentsnum)
values (4373, 'B7', 32);
insert into GRADE (gradeid, gradename, studentsnum)
values (5165, 'E5', 29);
insert into GRADE (gradeid, gradename, studentsnum)
values (9687, 'B2', 30);
insert into GRADE (gradeid, gradename, studentsnum)
values (9565, 'H8', 24);
insert into GRADE (gradeid, gradename, studentsnum)
values (5818, 'E6', 36);
insert into GRADE (gradeid, gradename, studentsnum)
values (9495, 'B8', 17);
insert into GRADE (gradeid, gradename, studentsnum)
values (3242, 'D7', 21);
insert into GRADE (gradeid, gradename, studentsnum)
values (7545, 'H4', 36);
insert into GRADE (gradeid, gradename, studentsnum)
values (4496, 'D2', 39);
insert into GRADE (gradeid, gradename, studentsnum)
values (2794, 'G3', 21);
insert into GRADE (gradeid, gradename, studentsnum)
values (6374, 'A7', 39);
insert into GRADE (gradeid, gradename, studentsnum)
values (1827, 'B7', 14);
insert into GRADE (gradeid, gradename, studentsnum)
values (4191, 'E3', 31);
insert into GRADE (gradeid, gradename, studentsnum)
values (6139, 'E4', 36);
insert into GRADE (gradeid, gradename, studentsnum)
values (1969, 'H3', 15);
insert into GRADE (gradeid, gradename, studentsnum)
values (5358, 'E1', 25);
insert into GRADE (gradeid, gradename, studentsnum)
values (2424, 'E5', 24);
insert into GRADE (gradeid, gradename, studentsnum)
values (4644, 'B3', 11);
insert into GRADE (gradeid, gradename, studentsnum)
values (8473, 'B2', 34);
commit;
prompt 100 records committed...
insert into GRADE (gradeid, gradename, studentsnum)
values (1872, 'B5', 40);
insert into GRADE (gradeid, gradename, studentsnum)
values (6971, 'D5', 32);
insert into GRADE (gradeid, gradename, studentsnum)
values (5712, 'E1', 20);
insert into GRADE (gradeid, gradename, studentsnum)
values (2949, 'C8', 16);
insert into GRADE (gradeid, gradename, studentsnum)
values (4647, 'D5', 33);
insert into GRADE (gradeid, gradename, studentsnum)
values (2231, 'F4', 24);
insert into GRADE (gradeid, gradename, studentsnum)
values (8424, 'C3', 37);
insert into GRADE (gradeid, gradename, studentsnum)
values (1998, 'H8', 30);
insert into GRADE (gradeid, gradename, studentsnum)
values (8298, 'B7', 27);
insert into GRADE (gradeid, gradename, studentsnum)
values (8967, 'E8', 27);
insert into GRADE (gradeid, gradename, studentsnum)
values (3511, 'E6', 10);
insert into GRADE (gradeid, gradename, studentsnum)
values (9569, 'H3', 25);
insert into GRADE (gradeid, gradename, studentsnum)
values (7533, 'A8', 11);
insert into GRADE (gradeid, gradename, studentsnum)
values (5977, 'H3', 33);
insert into GRADE (gradeid, gradename, studentsnum)
values (5217, 'A4', 12);
insert into GRADE (gradeid, gradename, studentsnum)
values (1115, 'G8', 27);
insert into GRADE (gradeid, gradename, studentsnum)
values (3853, 'C5', 24);
insert into GRADE (gradeid, gradename, studentsnum)
values (6184, 'D4', 11);
insert into GRADE (gradeid, gradename, studentsnum)
values (8522, 'D7', 34);
insert into GRADE (gradeid, gradename, studentsnum)
values (3839, 'G2', 15);
insert into GRADE (gradeid, gradename, studentsnum)
values (2178, 'A4', 10);
insert into GRADE (gradeid, gradename, studentsnum)
values (5543, 'H7', 31);
insert into GRADE (gradeid, gradename, studentsnum)
values (7957, 'C6', 16);
insert into GRADE (gradeid, gradename, studentsnum)
values (3646, 'D3', 27);
insert into GRADE (gradeid, gradename, studentsnum)
values (8637, 'H5', 23);
insert into GRADE (gradeid, gradename, studentsnum)
values (8366, 'G5', 28);
insert into GRADE (gradeid, gradename, studentsnum)
values (8823, 'E8', 17);
insert into GRADE (gradeid, gradename, studentsnum)
values (9425, 'G8', 36);
insert into GRADE (gradeid, gradename, studentsnum)
values (1173, 'G2', 15);
insert into GRADE (gradeid, gradename, studentsnum)
values (2158, 'H2', 28);
insert into GRADE (gradeid, gradename, studentsnum)
values (2342, 'A6', 31);
insert into GRADE (gradeid, gradename, studentsnum)
values (1359, 'G8', 36);
insert into GRADE (gradeid, gradename, studentsnum)
values (7222, 'E8', 26);
insert into GRADE (gradeid, gradename, studentsnum)
values (2449, 'E3', 36);
insert into GRADE (gradeid, gradename, studentsnum)
values (5519, 'B7', 26);
insert into GRADE (gradeid, gradename, studentsnum)
values (6162, 'B8', 31);
insert into GRADE (gradeid, gradename, studentsnum)
values (8262, 'D8', 22);
insert into GRADE (gradeid, gradename, studentsnum)
values (5734, 'C5', 37);
insert into GRADE (gradeid, gradename, studentsnum)
values (5875, 'D3', 30);
insert into GRADE (gradeid, gradename, studentsnum)
values (8838, 'F4', 13);
insert into GRADE (gradeid, gradename, studentsnum)
values (6328, 'G3', 18);
insert into GRADE (gradeid, gradename, studentsnum)
values (8743, 'C8', 20);
insert into GRADE (gradeid, gradename, studentsnum)
values (7819, 'C4', 28);
insert into GRADE (gradeid, gradename, studentsnum)
values (3197, 'H5', 23);
insert into GRADE (gradeid, gradename, studentsnum)
values (8795, 'B6', 26);
insert into GRADE (gradeid, gradename, studentsnum)
values (7214, 'C7', 15);
insert into GRADE (gradeid, gradename, studentsnum)
values (2441, 'C4', 37);
insert into GRADE (gradeid, gradename, studentsnum)
values (1463, 'B6', 22);
insert into GRADE (gradeid, gradename, studentsnum)
values (9254, 'A5', 30);
insert into GRADE (gradeid, gradename, studentsnum)
values (5632, 'B6', 11);
insert into GRADE (gradeid, gradename, studentsnum)
values (5466, 'F3', 35);
insert into GRADE (gradeid, gradename, studentsnum)
values (6275, 'H4', 11);
insert into GRADE (gradeid, gradename, studentsnum)
values (7196, 'A7', 33);
insert into GRADE (gradeid, gradename, studentsnum)
values (4294, 'C8', 22);
insert into GRADE (gradeid, gradename, studentsnum)
values (5385, 'H4', 14);
insert into GRADE (gradeid, gradename, studentsnum)
values (8729, 'E6', 13);
insert into GRADE (gradeid, gradename, studentsnum)
values (3971, 'F8', 36);
insert into GRADE (gradeid, gradename, studentsnum)
values (5366, 'F7', 29);
insert into GRADE (gradeid, gradename, studentsnum)
values (3134, 'E4', 17);
insert into GRADE (gradeid, gradename, studentsnum)
values (4745, 'C3', 29);
insert into GRADE (gradeid, gradename, studentsnum)
values (3394, 'D2', 31);
insert into GRADE (gradeid, gradename, studentsnum)
values (5481, 'D7', 18);
insert into GRADE (gradeid, gradename, studentsnum)
values (5388, 'C1', 36);
insert into GRADE (gradeid, gradename, studentsnum)
values (5922, 'C3', 30);
insert into GRADE (gradeid, gradename, studentsnum)
values (5279, 'E4', 19);
insert into GRADE (gradeid, gradename, studentsnum)
values (3829, 'G3', 29);
insert into GRADE (gradeid, gradename, studentsnum)
values (5714, 'G5', 34);
insert into GRADE (gradeid, gradename, studentsnum)
values (5585, 'C4', 31);
insert into GRADE (gradeid, gradename, studentsnum)
values (1329, 'E2', 28);
insert into GRADE (gradeid, gradename, studentsnum)
values (8695, 'E7', 19);
insert into GRADE (gradeid, gradename, studentsnum)
values (7318, 'F4', 20);
insert into GRADE (gradeid, gradename, studentsnum)
values (5539, 'A1', 28);
insert into GRADE (gradeid, gradename, studentsnum)
values (8688, 'A3', 34);
insert into GRADE (gradeid, gradename, studentsnum)
values (7273, 'E5', 29);
insert into GRADE (gradeid, gradename, studentsnum)
values (4812, 'H5', 11);
insert into GRADE (gradeid, gradename, studentsnum)
values (8636, 'F4', 38);
insert into GRADE (gradeid, gradename, studentsnum)
values (3824, 'E5', 33);
insert into GRADE (gradeid, gradename, studentsnum)
values (4222, 'B1', 16);
insert into GRADE (gradeid, gradename, studentsnum)
values (1672, 'A1', 38);
insert into GRADE (gradeid, gradename, studentsnum)
values (9141, 'H1', 35);
insert into GRADE (gradeid, gradename, studentsnum)
values (1884, 'D2', 29);
insert into GRADE (gradeid, gradename, studentsnum)
values (5815, 'F2', 37);
insert into GRADE (gradeid, gradename, studentsnum)
values (1528, 'F5', 27);
insert into GRADE (gradeid, gradename, studentsnum)
values (6396, 'B4', 18);
insert into GRADE (gradeid, gradename, studentsnum)
values (2467, 'C1', 23);
insert into GRADE (gradeid, gradename, studentsnum)
values (5518, 'E6', 15);
insert into GRADE (gradeid, gradename, studentsnum)
values (8597, 'H7', 32);
insert into GRADE (gradeid, gradename, studentsnum)
values (7898, 'G3', 10);
insert into GRADE (gradeid, gradename, studentsnum)
values (6795, 'B2', 11);
insert into GRADE (gradeid, gradename, studentsnum)
values (1799, 'A8', 40);
insert into GRADE (gradeid, gradename, studentsnum)
values (8661, 'C4', 30);
insert into GRADE (gradeid, gradename, studentsnum)
values (5163, 'E6', 17);
insert into GRADE (gradeid, gradename, studentsnum)
values (1369, 'G1', 29);
insert into GRADE (gradeid, gradename, studentsnum)
values (1196, 'G7', 30);
insert into GRADE (gradeid, gradename, studentsnum)
values (4922, 'A4', 29);
insert into GRADE (gradeid, gradename, studentsnum)
values (7326, 'D6', 13);
insert into GRADE (gradeid, gradename, studentsnum)
values (8125, 'A1', 25);
insert into GRADE (gradeid, gradename, studentsnum)
values (3964, 'D6', 31);
insert into GRADE (gradeid, gradename, studentsnum)
values (3665, 'B3', 15);
insert into GRADE (gradeid, gradename, studentsnum)
values (7397, 'H7', 34);
commit;
prompt 200 records committed...
insert into GRADE (gradeid, gradename, studentsnum)
values (8598, 'E8', 25);
insert into GRADE (gradeid, gradename, studentsnum)
values (1624, 'G3', 17);
insert into GRADE (gradeid, gradename, studentsnum)
values (1668, 'H3', 11);
insert into GRADE (gradeid, gradename, studentsnum)
values (4311, 'A3', 39);
insert into GRADE (gradeid, gradename, studentsnum)
values (3718, 'F2', 34);
insert into GRADE (gradeid, gradename, studentsnum)
values (7841, 'C5', 33);
insert into GRADE (gradeid, gradename, studentsnum)
values (4931, 'D3', 36);
insert into GRADE (gradeid, gradename, studentsnum)
values (8654, 'G4', 18);
insert into GRADE (gradeid, gradename, studentsnum)
values (6573, 'C4', 35);
insert into GRADE (gradeid, gradename, studentsnum)
values (4189, 'F4', 32);
insert into GRADE (gradeid, gradename, studentsnum)
values (7989, 'D6', 23);
insert into GRADE (gradeid, gradename, studentsnum)
values (8559, 'C5', 29);
insert into GRADE (gradeid, gradename, studentsnum)
values (2551, 'A1', 17);
insert into GRADE (gradeid, gradename, studentsnum)
values (2154, 'G5', 28);
insert into GRADE (gradeid, gradename, studentsnum)
values (7923, 'A8', 19);
insert into GRADE (gradeid, gradename, studentsnum)
values (6423, 'B6', 40);
insert into GRADE (gradeid, gradename, studentsnum)
values (3167, 'E5', 31);
insert into GRADE (gradeid, gradename, studentsnum)
values (9773, 'G1', 17);
insert into GRADE (gradeid, gradename, studentsnum)
values (5116, 'H4', 21);
insert into GRADE (gradeid, gradename, studentsnum)
values (6798, 'A5', 31);
insert into GRADE (gradeid, gradename, studentsnum)
values (5876, 'H2', 37);
insert into GRADE (gradeid, gradename, studentsnum)
values (2684, 'D6', 11);
insert into GRADE (gradeid, gradename, studentsnum)
values (4121, 'G6', 40);
insert into GRADE (gradeid, gradename, studentsnum)
values (7362, 'E4', 38);
insert into GRADE (gradeid, gradename, studentsnum)
values (9994, 'F5', 37);
insert into GRADE (gradeid, gradename, studentsnum)
values (1764, 'D8', 29);
insert into GRADE (gradeid, gradename, studentsnum)
values (8982, 'B6', 31);
insert into GRADE (gradeid, gradename, studentsnum)
values (5182, 'H3', 23);
insert into GRADE (gradeid, gradename, studentsnum)
values (3571, 'D4', 15);
insert into GRADE (gradeid, gradename, studentsnum)
values (9998, 'D8', 18);
insert into GRADE (gradeid, gradename, studentsnum)
values (9713, 'D3', 40);
insert into GRADE (gradeid, gradename, studentsnum)
values (9763, 'F2', 37);
insert into GRADE (gradeid, gradename, studentsnum)
values (6952, 'E2', 12);
insert into GRADE (gradeid, gradename, studentsnum)
values (2871, 'C6', 14);
insert into GRADE (gradeid, gradename, studentsnum)
values (8289, 'D6', 26);
insert into GRADE (gradeid, gradename, studentsnum)
values (4428, 'B5', 30);
insert into GRADE (gradeid, gradename, studentsnum)
values (2415, 'F6', 29);
insert into GRADE (gradeid, gradename, studentsnum)
values (2281, 'A5', 38);
insert into GRADE (gradeid, gradename, studentsnum)
values (6313, 'D5', 21);
insert into GRADE (gradeid, gradename, studentsnum)
values (7843, 'B8', 33);
insert into GRADE (gradeid, gradename, studentsnum)
values (1229, 'G6', 31);
insert into GRADE (gradeid, gradename, studentsnum)
values (8116, 'D7', 35);
insert into GRADE (gradeid, gradename, studentsnum)
values (9275, 'A1', 10);
insert into GRADE (gradeid, gradename, studentsnum)
values (4875, 'F6', 36);
insert into GRADE (gradeid, gradename, studentsnum)
values (9913, 'G1', 23);
insert into GRADE (gradeid, gradename, studentsnum)
values (1626, 'G6', 28);
insert into GRADE (gradeid, gradename, studentsnum)
values (7482, 'C6', 21);
insert into GRADE (gradeid, gradename, studentsnum)
values (7231, 'D5', 10);
insert into GRADE (gradeid, gradename, studentsnum)
values (4533, 'C5', 24);
insert into GRADE (gradeid, gradename, studentsnum)
values (1214, 'C2', 20);
insert into GRADE (gradeid, gradename, studentsnum)
values (9374, 'B4', 39);
insert into GRADE (gradeid, gradename, studentsnum)
values (9266, 'G4', 27);
insert into GRADE (gradeid, gradename, studentsnum)
values (2838, 'H1', 15);
insert into GRADE (gradeid, gradename, studentsnum)
values (1382, 'B5', 34);
insert into GRADE (gradeid, gradename, studentsnum)
values (1936, 'A2', 40);
insert into GRADE (gradeid, gradename, studentsnum)
values (6981, 'D4', 20);
insert into GRADE (gradeid, gradename, studentsnum)
values (4834, 'H2', 35);
insert into GRADE (gradeid, gradename, studentsnum)
values (4346, 'H3', 27);
insert into GRADE (gradeid, gradename, studentsnum)
values (7218, 'B3', 31);
insert into GRADE (gradeid, gradename, studentsnum)
values (9549, 'C1', 39);
insert into GRADE (gradeid, gradename, studentsnum)
values (7187, 'H2', 13);
insert into GRADE (gradeid, gradename, studentsnum)
values (8651, 'G5', 11);
insert into GRADE (gradeid, gradename, studentsnum)
values (3923, 'C3', 38);
insert into GRADE (gradeid, gradename, studentsnum)
values (6659, 'F7', 38);
insert into GRADE (gradeid, gradename, studentsnum)
values (9182, 'G4', 32);
insert into GRADE (gradeid, gradename, studentsnum)
values (3362, 'B3', 12);
insert into GRADE (gradeid, gradename, studentsnum)
values (5867, 'B5', 11);
insert into GRADE (gradeid, gradename, studentsnum)
values (3247, 'F2', 33);
insert into GRADE (gradeid, gradename, studentsnum)
values (3569, 'A7', 22);
insert into GRADE (gradeid, gradename, studentsnum)
values (6586, 'E8', 17);
insert into GRADE (gradeid, gradename, studentsnum)
values (9392, 'H5', 16);
insert into GRADE (gradeid, gradename, studentsnum)
values (6417, 'B4', 36);
insert into GRADE (gradeid, gradename, studentsnum)
values (3194, 'H8', 22);
insert into GRADE (gradeid, gradename, studentsnum)
values (6183, 'B4', 39);
insert into GRADE (gradeid, gradename, studentsnum)
values (7974, 'A5', 30);
insert into GRADE (gradeid, gradename, studentsnum)
values (2568, 'H1', 20);
insert into GRADE (gradeid, gradename, studentsnum)
values (4493, 'F1', 12);
insert into GRADE (gradeid, gradename, studentsnum)
values (9557, 'H5', 33);
insert into GRADE (gradeid, gradename, studentsnum)
values (8622, 'B2', 22);
insert into GRADE (gradeid, gradename, studentsnum)
values (8416, 'D7', 34);
insert into GRADE (gradeid, gradename, studentsnum)
values (6852, 'A6', 33);
insert into GRADE (gradeid, gradename, studentsnum)
values (1341, 'C2', 12);
insert into GRADE (gradeid, gradename, studentsnum)
values (5813, 'H8', 20);
insert into GRADE (gradeid, gradename, studentsnum)
values (6343, 'F5', 39);
insert into GRADE (gradeid, gradename, studentsnum)
values (9678, 'F7', 23);
insert into GRADE (gradeid, gradename, studentsnum)
values (1965, 'E6', 38);
insert into GRADE (gradeid, gradename, studentsnum)
values (2554, 'C3', 23);
insert into GRADE (gradeid, gradename, studentsnum)
values (9443, 'E6', 15);
insert into GRADE (gradeid, gradename, studentsnum)
values (9216, 'F3', 35);
insert into GRADE (gradeid, gradename, studentsnum)
values (5784, 'G7', 15);
insert into GRADE (gradeid, gradename, studentsnum)
values (8171, 'B6', 30);
insert into GRADE (gradeid, gradename, studentsnum)
values (4847, 'A8', 25);
insert into GRADE (gradeid, gradename, studentsnum)
values (9247, 'A2', 27);
insert into GRADE (gradeid, gradename, studentsnum)
values (5297, 'C2', 18);
insert into GRADE (gradeid, gradename, studentsnum)
values (1512, 'C2', 30);
insert into GRADE (gradeid, gradename, studentsnum)
values (3733, 'H3', 32);
insert into GRADE (gradeid, gradename, studentsnum)
values (6817, 'F1', 10);
insert into GRADE (gradeid, gradename, studentsnum)
values (5768, 'E4', 27);
insert into GRADE (gradeid, gradename, studentsnum)
values (5854, 'D5', 29);
insert into GRADE (gradeid, gradename, studentsnum)
values (6489, 'F7', 35);
commit;
prompt 300 records committed...
insert into GRADE (gradeid, gradename, studentsnum)
values (6243, 'C1', 30);
insert into GRADE (gradeid, gradename, studentsnum)
values (2363, 'D2', 38);
insert into GRADE (gradeid, gradename, studentsnum)
values (1688, 'G6', 30);
insert into GRADE (gradeid, gradename, studentsnum)
values (4718, 'C3', 22);
insert into GRADE (gradeid, gradename, studentsnum)
values (1533, 'B2', 38);
insert into GRADE (gradeid, gradename, studentsnum)
values (7363, 'F1', 28);
insert into GRADE (gradeid, gradename, studentsnum)
values (7117, 'A7', 21);
insert into GRADE (gradeid, gradename, studentsnum)
values (7544, 'B8', 11);
insert into GRADE (gradeid, gradename, studentsnum)
values (6839, 'A3', 30);
insert into GRADE (gradeid, gradename, studentsnum)
values (5524, 'G3', 17);
insert into GRADE (gradeid, gradename, studentsnum)
values (4724, 'F3', 14);
insert into GRADE (gradeid, gradename, studentsnum)
values (2354, 'C8', 16);
insert into GRADE (gradeid, gradename, studentsnum)
values (4641, 'C7', 26);
insert into GRADE (gradeid, gradename, studentsnum)
values (7319, 'G1', 20);
insert into GRADE (gradeid, gradename, studentsnum)
values (5323, 'G4', 34);
insert into GRADE (gradeid, gradename, studentsnum)
values (1445, 'E8', 23);
insert into GRADE (gradeid, gradename, studentsnum)
values (1487, 'H2', 34);
insert into GRADE (gradeid, gradename, studentsnum)
values (4919, 'F1', 10);
insert into GRADE (gradeid, gradename, studentsnum)
values (7632, 'D5', 18);
insert into GRADE (gradeid, gradename, studentsnum)
values (1189, 'A2', 12);
insert into GRADE (gradeid, gradename, studentsnum)
values (6582, 'F4', 15);
insert into GRADE (gradeid, gradename, studentsnum)
values (2366, 'A8', 26);
insert into GRADE (gradeid, gradename, studentsnum)
values (4918, 'E5', 29);
insert into GRADE (gradeid, gradename, studentsnum)
values (1649, 'F3', 23);
insert into GRADE (gradeid, gradename, studentsnum)
values (2517, 'H1', 21);
insert into GRADE (gradeid, gradename, studentsnum)
values (9546, 'H1', 36);
insert into GRADE (gradeid, gradename, studentsnum)
values (6929, 'F3', 25);
insert into GRADE (gradeid, gradename, studentsnum)
values (4457, 'D2', 18);
insert into GRADE (gradeid, gradename, studentsnum)
values (2166, 'D3', 39);
insert into GRADE (gradeid, gradename, studentsnum)
values (1556, 'F7', 34);
insert into GRADE (gradeid, gradename, studentsnum)
values (8223, 'G2', 14);
insert into GRADE (gradeid, gradename, studentsnum)
values (5415, 'H6', 19);
insert into GRADE (gradeid, gradename, studentsnum)
values (2936, 'F1', 17);
insert into GRADE (gradeid, gradename, studentsnum)
values (5167, 'B4', 30);
insert into GRADE (gradeid, gradename, studentsnum)
values (2898, 'B2', 37);
insert into GRADE (gradeid, gradename, studentsnum)
values (6229, 'A2', 30);
insert into GRADE (gradeid, gradename, studentsnum)
values (7184, 'D3', 31);
insert into GRADE (gradeid, gradename, studentsnum)
values (9224, 'F1', 17);
insert into GRADE (gradeid, gradename, studentsnum)
values (2724, 'D1', 16);
insert into GRADE (gradeid, gradename, studentsnum)
values (1514, 'F8', 25);
insert into GRADE (gradeid, gradename, studentsnum)
values (1253, 'G6', 36);
insert into GRADE (gradeid, gradename, studentsnum)
values (2125, 'E7', 37);
insert into GRADE (gradeid, gradename, studentsnum)
values (8527, 'H6', 19);
insert into GRADE (gradeid, gradename, studentsnum)
values (1529, 'H5', 40);
insert into GRADE (gradeid, gradename, studentsnum)
values (7338, 'C5', 29);
insert into GRADE (gradeid, gradename, studentsnum)
values (4192, 'B6', 24);
insert into GRADE (gradeid, gradename, studentsnum)
values (3974, 'H3', 17);
insert into GRADE (gradeid, gradename, studentsnum)
values (2578, 'C8', 11);
insert into GRADE (gradeid, gradename, studentsnum)
values (4299, 'D5', 37);
insert into GRADE (gradeid, gradename, studentsnum)
values (4517, 'B5', 28);
insert into GRADE (gradeid, gradename, studentsnum)
values (9489, 'F2', 31);
insert into GRADE (gradeid, gradename, studentsnum)
values (9688, 'A3', 30);
insert into GRADE (gradeid, gradename, studentsnum)
values (1289, 'A4', 21);
insert into GRADE (gradeid, gradename, studentsnum)
values (1283, 'B6', 29);
insert into GRADE (gradeid, gradename, studentsnum)
values (1824, 'A7', 19);
insert into GRADE (gradeid, gradename, studentsnum)
values (8374, 'B8', 28);
insert into GRADE (gradeid, gradename, studentsnum)
values (1769, 'D7', 21);
insert into GRADE (gradeid, gradename, studentsnum)
values (3352, 'B8', 18);
insert into GRADE (gradeid, gradename, studentsnum)
values (2721, 'E4', 25);
insert into GRADE (gradeid, gradename, studentsnum)
values (5166, 'H5', 30);
insert into GRADE (gradeid, gradename, studentsnum)
values (2278, 'E7', 32);
insert into GRADE (gradeid, gradename, studentsnum)
values (5619, 'F3', 12);
insert into GRADE (gradeid, gradename, studentsnum)
values (9317, 'E3', 18);
insert into GRADE (gradeid, gradename, studentsnum)
values (7128, 'E1', 21);
insert into GRADE (gradeid, gradename, studentsnum)
values (4462, 'B2', 21);
insert into GRADE (gradeid, gradename, studentsnum)
values (5266, 'F7', 31);
insert into GRADE (gradeid, gradename, studentsnum)
values (7883, 'F3', 11);
insert into GRADE (gradeid, gradename, studentsnum)
values (8325, 'D4', 10);
insert into GRADE (gradeid, gradename, studentsnum)
values (6567, 'D6', 37);
insert into GRADE (gradeid, gradename, studentsnum)
values (3472, 'C7', 15);
insert into GRADE (gradeid, gradename, studentsnum)
values (4211, 'E8', 10);
insert into GRADE (gradeid, gradename, studentsnum)
values (1716, 'C7', 38);
insert into GRADE (gradeid, gradename, studentsnum)
values (1632, 'C4', 20);
insert into GRADE (gradeid, gradename, studentsnum)
values (4383, 'B3', 13);
insert into GRADE (gradeid, gradename, studentsnum)
values (6649, 'G3', 11);
insert into GRADE (gradeid, gradename, studentsnum)
values (8914, 'C8', 17);
insert into GRADE (gradeid, gradename, studentsnum)
values (8521, 'D3', 17);
insert into GRADE (gradeid, gradename, studentsnum)
values (3192, 'F6', 19);
insert into GRADE (gradeid, gradename, studentsnum)
values (8853, 'C3', 31);
insert into GRADE (gradeid, gradename, studentsnum)
values (9766, 'H8', 27);
insert into GRADE (gradeid, gradename, studentsnum)
values (5556, 'A5', 40);
insert into GRADE (gradeid, gradename, studentsnum)
values (7837, 'E1', 37);
insert into GRADE (gradeid, gradename, studentsnum)
values (2237, 'H6', 23);
insert into GRADE (gradeid, gradename, studentsnum)
values (8643, 'G6', 34);
insert into GRADE (gradeid, gradename, studentsnum)
values (1858, 'F1', 28);
insert into GRADE (gradeid, gradename, studentsnum)
values (2764, 'F7', 10);
insert into GRADE (gradeid, gradename, studentsnum)
values (2812, 'D8', 38);
insert into GRADE (gradeid, gradename, studentsnum)
values (3243, 'H5', 26);
insert into GRADE (gradeid, gradename, studentsnum)
values (6299, 'C3', 32);
insert into GRADE (gradeid, gradename, studentsnum)
values (1167, 'E1', 27);
insert into GRADE (gradeid, gradename, studentsnum)
values (9466, 'E3', 28);
insert into GRADE (gradeid, gradename, studentsnum)
values (8564, 'A2', 31);
insert into GRADE (gradeid, gradename, studentsnum)
values (5546, 'D3', 10);
insert into GRADE (gradeid, gradename, studentsnum)
values (8769, 'F8', 23);
insert into GRADE (gradeid, gradename, studentsnum)
values (1862, 'G3', 31);
insert into GRADE (gradeid, gradename, studentsnum)
values (4321, 'H7', 15);
insert into GRADE (gradeid, gradename, studentsnum)
values (9268, 'H1', 11);
insert into GRADE (gradeid, gradename, studentsnum)
values (2958, 'D1', 21);
insert into GRADE (gradeid, gradename, studentsnum)
values (4235, 'F6', 21);
insert into GRADE (gradeid, gradename, studentsnum)
values (6661, 'E2', 35);
commit;
prompt 400 records committed...
insert into GRADE (gradeid, gradename, studentsnum)
values (2544, 'G8', 28);
insert into GRADE (gradeid, gradename, studentsnum)
values (6334, 'A2', 33);
insert into GRADE (gradeid, gradename, studentsnum)
values (8881, 'E1', 26);
insert into GRADE (gradeid, gradename, studentsnum)
values (7685, 'F2', 25);
insert into GRADE (gradeid, gradename, studentsnum)
values (9645, 'D5', 21);
insert into GRADE (gradeid, gradename, studentsnum)
values (9675, 'E4', 17);
insert into GRADE (gradeid, gradename, studentsnum)
values (7188, 'H4', 31);
insert into GRADE (gradeid, gradename, studentsnum)
values (6611, 'D4', 11);
insert into GRADE (gradeid, gradename, studentsnum)
values (8562, 'A4', 29);
insert into GRADE (gradeid, gradename, studentsnum)
values (2997, 'E4', 24);
insert into GRADE (gradeid, gradename, studentsnum)
values (7483, 'A7', 11);
insert into GRADE (gradeid, gradename, studentsnum)
values (7967, 'A7', 38);
insert into GRADE (gradeid, gradename, studentsnum)
values (1244, 'D4', 23);
insert into GRADE (gradeid, gradename, studentsnum)
values (2595, 'H8', 10);
insert into GRADE (gradeid, gradename, studentsnum)
values (7321, 'F5', 19);
insert into GRADE (gradeid, gradename, studentsnum)
values (7471, 'E2', 28);
insert into GRADE (gradeid, gradename, studentsnum)
values (9639, 'D2', 18);
insert into GRADE (gradeid, gradename, studentsnum)
values (5696, 'F5', 24);
insert into GRADE (gradeid, gradename, studentsnum)
values (7687, 'A3', 20);
insert into GRADE (gradeid, gradename, studentsnum)
values (4166, 'B6', 13);
insert into GRADE (gradeid, gradename, studentsnum)
values (7216, 'B2', 24);
insert into GRADE (gradeid, gradename, studentsnum)
values (4452, 'H5', 21);
insert into GRADE (gradeid, gradename, studentsnum)
values (2918, 'H4', 12);
insert into GRADE (gradeid, gradename, studentsnum)
values (2436, 'C8', 29);
insert into GRADE (gradeid, gradename, studentsnum)
values (6463, 'B8', 13);
insert into GRADE (gradeid, gradename, studentsnum)
values (4175, 'C5', 21);
insert into GRADE (gradeid, gradename, studentsnum)
values (7118, 'C6', 20);
insert into GRADE (gradeid, gradename, studentsnum)
values (6883, 'B7', 28);
insert into GRADE (gradeid, gradename, studentsnum)
values (6189, 'G4', 16);
insert into GRADE (gradeid, gradename, studentsnum)
values (1475, 'A8', 37);
insert into GRADE (gradeid, gradename, studentsnum)
values (3342, 'E7', 18);
insert into GRADE (gradeid, gradename, studentsnum)
values (6333, 'A5', 28);
insert into GRADE (gradeid, gradename, studentsnum)
values (7467, 'B6', 17);
insert into GRADE (gradeid, gradename, studentsnum)
values (1559, 'E5', 16);
insert into GRADE (gradeid, gradename, studentsnum)
values (4414, 'H3', 38);
insert into GRADE (gradeid, gradename, studentsnum)
values (3785, 'G8', 38);
insert into GRADE (gradeid, gradename, studentsnum)
values (3216, 'G7', 25);
insert into GRADE (gradeid, gradename, studentsnum)
values (8492, 'C5', 17);
insert into GRADE (gradeid, gradename, studentsnum)
values (4571, 'A5', 33);
insert into GRADE (gradeid, gradename, studentsnum)
values (9951, 'E7', 18);
insert into GRADE (gradeid, gradename, studentsnum)
values (3867, 'A2', 26);
insert into GRADE (gradeid, gradename, studentsnum)
values (9768, 'D2', 37);
insert into GRADE (gradeid, gradename, studentsnum)
values (7931, 'F5', 18);
insert into GRADE (gradeid, gradename, studentsnum)
values (4811, 'B5', 24);
insert into GRADE (gradeid, gradename, studentsnum)
values (7828, 'H8', 22);
insert into GRADE (gradeid, gradename, studentsnum)
values (5612, 'A5', 25);
insert into GRADE (gradeid, gradename, studentsnum)
values (7435, 'C5', 19);
insert into GRADE (gradeid, gradename, studentsnum)
values (6939, 'B3', 30);
insert into GRADE (gradeid, gradename, studentsnum)
values (3795, 'D8', 12);
insert into GRADE (gradeid, gradename, studentsnum)
values (9226, 'G8', 34);
insert into GRADE (gradeid, gradename, studentsnum)
values (5193, 'C1', 32);
insert into GRADE (gradeid, gradename, studentsnum)
values (7874, 'G4', 11);
insert into GRADE (gradeid, gradename, studentsnum)
values (3551, 'H2', 35);
insert into GRADE (gradeid, gradename, studentsnum)
values (7387, 'E5', 40);
insert into GRADE (gradeid, gradename, studentsnum)
values (1268, 'B8', 32);
insert into GRADE (gradeid, gradename, studentsnum)
values (9624, 'H8', 21);
insert into GRADE (gradeid, gradename, studentsnum)
values (1693, 'H6', 18);
insert into GRADE (gradeid, gradename, studentsnum)
values (9918, 'B7', 16);
insert into GRADE (gradeid, gradename, studentsnum)
values (5257, 'A5', 23);
insert into GRADE (gradeid, gradename, studentsnum)
values (5744, 'A4', 19);
insert into GRADE (gradeid, gradename, studentsnum)
values (3473, 'C1', 22);
insert into GRADE (gradeid, gradename, studentsnum)
values (1745, 'C3', 16);
insert into GRADE (gradeid, gradename, studentsnum)
values (2779, 'E6', 39);
insert into GRADE (gradeid, gradename, studentsnum)
values (8848, 'C3', 36);
insert into GRADE (gradeid, gradename, studentsnum)
values (4616, 'F8', 38);
insert into GRADE (gradeid, gradename, studentsnum)
values (5786, 'A5', 15);
insert into GRADE (gradeid, gradename, studentsnum)
values (8884, 'B7', 27);
insert into GRADE (gradeid, gradename, studentsnum)
values (2593, 'A7', 21);
insert into GRADE (gradeid, gradename, studentsnum)
values (5314, 'E4', 38);
insert into GRADE (gradeid, gradename, studentsnum)
values (4251, 'H8', 32);
insert into GRADE (gradeid, gradename, studentsnum)
values (1967, 'F6', 32);
insert into GRADE (gradeid, gradename, studentsnum)
values (2221, 'G5', 23);
insert into GRADE (gradeid, gradename, studentsnum)
values (4695, 'E6', 28);
insert into GRADE (gradeid, gradename, studentsnum)
values (5963, 'B3', 17);
insert into GRADE (gradeid, gradename, studentsnum)
values (2597, 'D4', 30);
insert into GRADE (gradeid, gradename, studentsnum)
values (5534, 'H1', 11);
insert into GRADE (gradeid, gradename, studentsnum)
values (4741, 'E4', 20);
insert into GRADE (gradeid, gradename, studentsnum)
values (7378, 'C1', 22);
insert into GRADE (gradeid, gradename, studentsnum)
values (7825, 'F1', 11);
insert into GRADE (gradeid, gradename, studentsnum)
values (7689, 'E3', 24);
insert into GRADE (gradeid, gradename, studentsnum)
values (6717, 'G4', 16);
insert into GRADE (gradeid, gradename, studentsnum)
values (5911, 'G8', 36);
insert into GRADE (gradeid, gradename, studentsnum)
values (5429, 'D6', 22);
insert into GRADE (gradeid, gradename, studentsnum)
values (8568, 'C1', 28);
insert into GRADE (gradeid, gradename, studentsnum)
values (9849, 'G7', 40);
insert into GRADE (gradeid, gradename, studentsnum)
values (3722, 'H1', 38);
insert into GRADE (gradeid, gradename, studentsnum)
values (9269, 'H5', 32);
insert into GRADE (gradeid, gradename, studentsnum)
values (8433, 'C6', 20);
insert into GRADE (gradeid, gradename, studentsnum)
values (11, 'efrat', 23);
insert into GRADE (gradeid, gradename, studentsnum)
values (5367, '04', 24);
insert into GRADE (gradeid, gradename, studentsnum)
values (7549, '08', 30);
insert into GRADE (gradeid, gradename, studentsnum)
values (5393, '07', 33);
insert into GRADE (gradeid, gradename, studentsnum)
values (7121, '05', 22);
insert into GRADE (gradeid, gradename, studentsnum)
values (1787, '03', 12);
insert into GRADE (gradeid, gradename, studentsnum)
values (4282, '05', 33);
insert into GRADE (gradeid, gradename, studentsnum)
values (6532, '05', 33);
insert into GRADE (gradeid, gradename, studentsnum)
values (7491, '08', 27);
insert into GRADE (gradeid, gradename, studentsnum)
values (1722, '04', 25);
insert into GRADE (gradeid, gradename, studentsnum)
values (5698, '08', 29);
insert into GRADE (gradeid, gradename, studentsnum)
values (4532, '05', 35);
commit;
prompt 500 records committed...
insert into GRADE (gradeid, gradename, studentsnum)
values (1215, '02', 25);
insert into GRADE (gradeid, gradename, studentsnum)
values (1711, '05', 28);
insert into GRADE (gradeid, gradename, studentsnum)
values (5779, '07', 12);
insert into GRADE (gradeid, gradename, studentsnum)
values (6116, '04', 20);
insert into GRADE (gradeid, gradename, studentsnum)
values (5391, '01', 12);
insert into GRADE (gradeid, gradename, studentsnum)
values (7928, '06', 23);
insert into GRADE (gradeid, gradename, studentsnum)
values (9567, '07', 39);
insert into GRADE (gradeid, gradename, studentsnum)
values (6514, '03', 29);
insert into GRADE (gradeid, gradename, studentsnum)
values (2773, '06', 13);
insert into GRADE (gradeid, gradename, studentsnum)
values (4484, '05', 36);
insert into GRADE (gradeid, gradename, studentsnum)
values (5426, '02', 22);
insert into GRADE (gradeid, gradename, studentsnum)
values (7716, '06', 36);
insert into GRADE (gradeid, gradename, studentsnum)
values (4857, '03', 26);
insert into GRADE (gradeid, gradename, studentsnum)
values (8396, '03', 37);
insert into GRADE (gradeid, gradename, studentsnum)
values (1877, '01', 22);
insert into GRADE (gradeid, gradename, studentsnum)
values (6267, '06', 38);
insert into GRADE (gradeid, gradename, studentsnum)
values (3658, '05', 29);
insert into GRADE (gradeid, gradename, studentsnum)
values (8551, '07', 11);
insert into GRADE (gradeid, gradename, studentsnum)
values (1973, '04', 24);
insert into GRADE (gradeid, gradename, studentsnum)
values (1315, '03', 27);
insert into GRADE (gradeid, gradename, studentsnum)
values (5533, '08', 38);
insert into GRADE (gradeid, gradename, studentsnum)
values (5227, '06', 13);
insert into GRADE (gradeid, gradename, studentsnum)
values (3224, '04', 34);
insert into GRADE (gradeid, gradename, studentsnum)
values (4773, '01', 40);
insert into GRADE (gradeid, gradename, studentsnum)
values (9513, '03', 16);
insert into GRADE (gradeid, gradename, studentsnum)
values (2733, '07', 17);
insert into GRADE (gradeid, gradename, studentsnum)
values (1243, '07', 25);
insert into GRADE (gradeid, gradename, studentsnum)
values (5239, '08', 40);
insert into GRADE (gradeid, gradename, studentsnum)
values (6357, '04', 36);
insert into GRADE (gradeid, gradename, studentsnum)
values (3856, '04', 21);
insert into GRADE (gradeid, gradename, studentsnum)
values (3875, '03', 26);
insert into GRADE (gradeid, gradename, studentsnum)
values (1893, '08', 18);
insert into GRADE (gradeid, gradename, studentsnum)
values (6473, '08', 35);
insert into GRADE (gradeid, gradename, studentsnum)
values (3253, '06', 37);
insert into GRADE (gradeid, gradename, studentsnum)
values (6858, '04', 17);
insert into GRADE (gradeid, gradename, studentsnum)
values (3987, '05', 20);
insert into GRADE (gradeid, gradename, studentsnum)
values (2872, '02', 18);
insert into GRADE (gradeid, gradename, studentsnum)
values (7453, '04', 28);
insert into GRADE (gradeid, gradename, studentsnum)
values (5287, '05', 16);
insert into GRADE (gradeid, gradename, studentsnum)
values (5934, '07', 14);
insert into GRADE (gradeid, gradename, studentsnum)
values (8577, '07', 40);
insert into GRADE (gradeid, gradename, studentsnum)
values (9959, 'E5', 32);
insert into GRADE (gradeid, gradename, studentsnum)
values (1226, 'G5', 27);
insert into GRADE (gradeid, gradename, studentsnum)
values (6119, 'C3', 10);
insert into GRADE (gradeid, gradename, studentsnum)
values (9961, 'A3', 17);
insert into GRADE (gradeid, gradename, studentsnum)
values (9926, 'H5', 39);
insert into GRADE (gradeid, gradename, studentsnum)
values (4246, 'A4', 15);
insert into GRADE (gradeid, gradename, studentsnum)
values (1132, 'C5', 36);
insert into GRADE (gradeid, gradename, studentsnum)
values (7984, 'F6', 31);
insert into GRADE (gradeid, gradename, studentsnum)
values (5672, 'C6', 19);
insert into GRADE (gradeid, gradename, studentsnum)
values (5238, 'F5', 17);
insert into GRADE (gradeid, gradename, studentsnum)
values (8393, 'H3', 35);
insert into GRADE (gradeid, gradename, studentsnum)
values (7432, 'D3', 17);
insert into GRADE (gradeid, gradename, studentsnum)
values (5628, 'G6', 10);
insert into GRADE (gradeid, gradename, studentsnum)
values (8526, 'B7', 22);
insert into GRADE (gradeid, gradename, studentsnum)
values (2598, 'G1', 40);
insert into GRADE (gradeid, gradename, studentsnum)
values (5853, 'E5', 31);
insert into GRADE (gradeid, gradename, studentsnum)
values (6838, 'H4', 20);
insert into GRADE (gradeid, gradename, studentsnum)
values (9593, 'G2', 25);
insert into GRADE (gradeid, gradename, studentsnum)
values (8248, 'F4', 38);
insert into GRADE (gradeid, gradename, studentsnum)
values (6453, 'B5', 11);
insert into GRADE (gradeid, gradename, studentsnum)
values (6499, 'B7', 14);
insert into GRADE (gradeid, gradename, studentsnum)
values (9785, 'A4', 36);
insert into GRADE (gradeid, gradename, studentsnum)
values (8669, 'D4', 20);
insert into GRADE (gradeid, gradename, studentsnum)
values (8483, 'H4', 21);
insert into GRADE (gradeid, gradename, studentsnum)
values (3638, 'F3', 40);
insert into GRADE (gradeid, gradename, studentsnum)
values (6599, 'F2', 22);
insert into GRADE (gradeid, gradename, studentsnum)
values (3422, 'D1', 20);
insert into GRADE (gradeid, gradename, studentsnum)
values (9653, 'H2', 37);
insert into GRADE (gradeid, gradename, studentsnum)
values (7224, 'B4', 33);
insert into GRADE (gradeid, gradename, studentsnum)
values (6168, 'F7', 31);
insert into GRADE (gradeid, gradename, studentsnum)
values (2629, 'C7', 15);
insert into GRADE (gradeid, gradename, studentsnum)
values (2735, 'A8', 28);
insert into GRADE (gradeid, gradename, studentsnum)
values (5247, 'E4', 27);
insert into GRADE (gradeid, gradename, studentsnum)
values (5593, 'H1', 27);
insert into GRADE (gradeid, gradename, studentsnum)
values (3985, 'D1', 26);
insert into GRADE (gradeid, gradename, studentsnum)
values (1781, 'B3', 34);
insert into GRADE (gradeid, gradename, studentsnum)
values (3113, 'G8', 35);
insert into GRADE (gradeid, gradename, studentsnum)
values (9139, 'E5', 22);
insert into GRADE (gradeid, gradename, studentsnum)
values (2998, 'H3', 10);
insert into GRADE (gradeid, gradename, studentsnum)
values (6338, 'A5', 18);
insert into GRADE (gradeid, gradename, studentsnum)
values (6411, 'E7', 10);
insert into GRADE (gradeid, gradename, studentsnum)
values (5888, 'C1', 14);
insert into GRADE (gradeid, gradename, studentsnum)
values (7598, 'G8', 36);
insert into GRADE (gradeid, gradename, studentsnum)
values (1154, 'C4', 13);
insert into GRADE (gradeid, gradename, studentsnum)
values (6825, 'E8', 17);
insert into GRADE (gradeid, gradename, studentsnum)
values (1926, 'A3', 11);
insert into GRADE (gradeid, gradename, studentsnum)
values (2889, 'F3', 15);
insert into GRADE (gradeid, gradename, studentsnum)
values (5646, 'H5', 27);
insert into GRADE (gradeid, gradename, studentsnum)
values (3582, 'A8', 14);
insert into GRADE (gradeid, gradename, studentsnum)
values (7875, 'A1', 23);
insert into GRADE (gradeid, gradename, studentsnum)
values (5299, 'H8', 30);
insert into GRADE (gradeid, gradename, studentsnum)
values (4899, 'B6', 15);
insert into GRADE (gradeid, gradename, studentsnum)
values (8612, 'A2', 25);
insert into GRADE (gradeid, gradename, studentsnum)
values (2453, 'A4', 31);
insert into GRADE (gradeid, gradename, studentsnum)
values (3538, 'H2', 35);
insert into GRADE (gradeid, gradename, studentsnum)
values (7814, 'F1', 21);
insert into GRADE (gradeid, gradename, studentsnum)
values (8735, 'B1', 37);
insert into GRADE (gradeid, gradename, studentsnum)
values (6344, 'H3', 21);
insert into GRADE (gradeid, gradename, studentsnum)
values (5825, 'A7', 35);
commit;
prompt 600 records committed...
insert into GRADE (gradeid, gradename, studentsnum)
values (7767, 'D8', 11);
insert into GRADE (gradeid, gradename, studentsnum)
values (1696, 'H6', 22);
insert into GRADE (gradeid, gradename, studentsnum)
values (1634, 'E1', 33);
insert into GRADE (gradeid, gradename, studentsnum)
values (9112, 'C8', 12);
insert into GRADE (gradeid, gradename, studentsnum)
values (5777, 'G1', 39);
insert into GRADE (gradeid, gradename, studentsnum)
values (8227, 'H5', 38);
insert into GRADE (gradeid, gradename, studentsnum)
values (9376, 'E7', 32);
insert into GRADE (gradeid, gradename, studentsnum)
values (7652, 'E5', 16);
insert into GRADE (gradeid, gradename, studentsnum)
values (5148, 'C7', 26);
insert into GRADE (gradeid, gradename, studentsnum)
values (2351, 'D5', 22);
insert into GRADE (gradeid, gradename, studentsnum)
values (9414, 'B7', 19);
insert into GRADE (gradeid, gradename, studentsnum)
values (9966, 'H6', 23);
insert into GRADE (gradeid, gradename, studentsnum)
values (4289, 'B5', 33);
insert into GRADE (gradeid, gradename, studentsnum)
values (6329, 'A1', 36);
insert into GRADE (gradeid, gradename, studentsnum)
values (7653, 'F8', 15);
insert into GRADE (gradeid, gradename, studentsnum)
values (7783, 'A8', 33);
insert into GRADE (gradeid, gradename, studentsnum)
values (1942, 'B5', 19);
insert into GRADE (gradeid, gradename, studentsnum)
values (9517, 'A2', 30);
insert into GRADE (gradeid, gradename, studentsnum)
values (2643, 'G6', 31);
insert into GRADE (gradeid, gradename, studentsnum)
values (1881, 'B8', 31);
insert into GRADE (gradeid, gradename, studentsnum)
values (9799, 'E6', 29);
insert into GRADE (gradeid, gradename, studentsnum)
values (2265, 'F6', 17);
insert into GRADE (gradeid, gradename, studentsnum)
values (1163, 'F7', 39);
insert into GRADE (gradeid, gradename, studentsnum)
values (7246, 'D6', 10);
insert into GRADE (gradeid, gradename, studentsnum)
values (3881, 'E6', 15);
insert into GRADE (gradeid, gradename, studentsnum)
values (6127, 'F6', 24);
insert into GRADE (gradeid, gradename, studentsnum)
values (7698, 'D5', 36);
insert into GRADE (gradeid, gradename, studentsnum)
values (5221, 'C8', 10);
insert into GRADE (gradeid, gradename, studentsnum)
values (6796, 'C2', 36);
insert into GRADE (gradeid, gradename, studentsnum)
values (6954, 'G1', 24);
insert into GRADE (gradeid, gradename, studentsnum)
values (8386, 'F7', 14);
insert into GRADE (gradeid, gradename, studentsnum)
values (7618, 'B8', 31);
insert into GRADE (gradeid, gradename, studentsnum)
values (9874, 'G8', 16);
insert into GRADE (gradeid, gradename, studentsnum)
values (6672, 'F2', 15);
insert into GRADE (gradeid, gradename, studentsnum)
values (8936, 'E3', 35);
insert into GRADE (gradeid, gradename, studentsnum)
values (6231, 'H2', 33);
insert into GRADE (gradeid, gradename, studentsnum)
values (2555, 'E4', 33);
insert into GRADE (gradeid, gradename, studentsnum)
values (6944, 'A6', 35);
insert into GRADE (gradeid, gradename, studentsnum)
values (8554, 'G6', 13);
insert into GRADE (gradeid, gradename, studentsnum)
values (1789, 'A3', 40);
insert into GRADE (gradeid, gradename, studentsnum)
values (4351, 'G6', 20);
insert into GRADE (gradeid, gradename, studentsnum)
values (3335, 'D5', 31);
insert into GRADE (gradeid, gradename, studentsnum)
values (6646, 'D1', 29);
insert into GRADE (gradeid, gradename, studentsnum)
values (4793, 'F5', 40);
insert into GRADE (gradeid, gradename, studentsnum)
values (1721, 'H1', 18);
insert into GRADE (gradeid, gradename, studentsnum)
values (5866, 'E2', 18);
insert into GRADE (gradeid, gradename, studentsnum)
values (9355, 'H3', 16);
insert into GRADE (gradeid, gradename, studentsnum)
values (2123, 'D7', 27);
insert into GRADE (gradeid, gradename, studentsnum)
values (3475, 'F6', 19);
insert into GRADE (gradeid, gradename, studentsnum)
values (6799, 'C7', 16);
insert into GRADE (gradeid, gradename, studentsnum)
values (9568, 'C7', 26);
insert into GRADE (gradeid, gradename, studentsnum)
values (9676, 'H2', 19);
insert into GRADE (gradeid, gradename, studentsnum)
values (2978, 'C7', 22);
insert into GRADE (gradeid, gradename, studentsnum)
values (1879, 'A4', 28);
insert into GRADE (gradeid, gradename, studentsnum)
values (4518, 'B2', 32);
insert into GRADE (gradeid, gradename, studentsnum)
values (7149, 'G3', 34);
insert into GRADE (gradeid, gradename, studentsnum)
values (1343, 'D4', 16);
insert into GRADE (gradeid, gradename, studentsnum)
values (6142, 'C2', 18);
insert into GRADE (gradeid, gradename, studentsnum)
values (9728, 'F4', 11);
insert into GRADE (gradeid, gradename, studentsnum)
values (3894, 'C8', 21);
insert into GRADE (gradeid, gradename, studentsnum)
values (4141, 'B2', 21);
insert into GRADE (gradeid, gradename, studentsnum)
values (1966, 'C3', 26);
insert into GRADE (gradeid, gradename, studentsnum)
values (3586, 'C3', 20);
insert into GRADE (gradeid, gradename, studentsnum)
values (6492, 'D8', 12);
insert into GRADE (gradeid, gradename, studentsnum)
values (5494, 'H6', 38);
insert into GRADE (gradeid, gradename, studentsnum)
values (4528, 'G5', 30);
insert into GRADE (gradeid, gradename, studentsnum)
values (2358, 'E3', 14);
insert into GRADE (gradeid, gradename, studentsnum)
values (5462, 'H3', 15);
insert into GRADE (gradeid, gradename, studentsnum)
values (6544, 'C3', 17);
insert into GRADE (gradeid, gradename, studentsnum)
values (5931, 'B1', 31);
insert into GRADE (gradeid, gradename, studentsnum)
values (1625, 'H6', 20);
insert into GRADE (gradeid, gradename, studentsnum)
values (1439, 'H7', 39);
insert into GRADE (gradeid, gradename, studentsnum)
values (9869, 'C5', 30);
insert into GRADE (gradeid, gradename, studentsnum)
values (9841, 'A6', 12);
insert into GRADE (gradeid, gradename, studentsnum)
values (9144, 'C3', 25);
insert into GRADE (gradeid, gradename, studentsnum)
values (9933, 'E6', 14);
insert into GRADE (gradeid, gradename, studentsnum)
values (3313, 'C1', 32);
insert into GRADE (gradeid, gradename, studentsnum)
values (5865, 'E1', 38);
insert into GRADE (gradeid, gradename, studentsnum)
values (7617, 'F4', 11);
insert into GRADE (gradeid, gradename, studentsnum)
values (7458, 'B7', 20);
insert into GRADE (gradeid, gradename, studentsnum)
values (4696, 'C4', 33);
insert into GRADE (gradeid, gradename, studentsnum)
values (4878, 'B1', 18);
insert into GRADE (gradeid, gradename, studentsnum)
values (1481, 'D3', 38);
insert into GRADE (gradeid, gradename, studentsnum)
values (5835, 'B4', 38);
insert into GRADE (gradeid, gradename, studentsnum)
values (5317, 'A6', 29);
insert into GRADE (gradeid, gradename, studentsnum)
values (8972, 'H5', 29);
insert into GRADE (gradeid, gradename, studentsnum)
values (4215, 'C5', 17);
insert into GRADE (gradeid, gradename, studentsnum)
values (1813, 'H8', 10);
insert into GRADE (gradeid, gradename, studentsnum)
values (1286, 'G3', 12);
insert into GRADE (gradeid, gradename, studentsnum)
values (1331, 'F5', 33);
insert into GRADE (gradeid, gradename, studentsnum)
values (7391, 'A7', 15);
insert into GRADE (gradeid, gradename, studentsnum)
values (5541, 'F5', 26);
insert into GRADE (gradeid, gradename, studentsnum)
values (6538, 'F2', 11);
insert into GRADE (gradeid, gradename, studentsnum)
values (4673, 'H4', 18);
insert into GRADE (gradeid, gradename, studentsnum)
values (5649, 'G8', 27);
insert into GRADE (gradeid, gradename, studentsnum)
values (4171, 'B8', 34);
insert into GRADE (gradeid, gradename, studentsnum)
values (9612, 'C5', 32);
insert into GRADE (gradeid, gradename, studentsnum)
values (9228, 'D5', 19);
insert into GRADE (gradeid, gradename, studentsnum)
values (3799, 'F7', 39);
insert into GRADE (gradeid, gradename, studentsnum)
values (7228, 'A5', 37);
commit;
prompt 700 records committed...
insert into GRADE (gradeid, gradename, studentsnum)
values (6518, 'E3', 15);
insert into GRADE (gradeid, gradename, studentsnum)
values (7247, 'B1', 10);
insert into GRADE (gradeid, gradename, studentsnum)
values (5965, 'H2', 11);
insert into GRADE (gradeid, gradename, studentsnum)
values (3988, 'H8', 23);
insert into GRADE (gradeid, gradename, studentsnum)
values (4381, 'G5', 12);
insert into GRADE (gradeid, gradename, studentsnum)
values (3249, 'B7', 20);
insert into GRADE (gradeid, gradename, studentsnum)
values (2347, 'F4', 40);
insert into GRADE (gradeid, gradename, studentsnum)
values (1287, 'H7', 38);
insert into GRADE (gradeid, gradename, studentsnum)
values (3229, 'D2', 39);
insert into GRADE (gradeid, gradename, studentsnum)
values (2955, 'E6', 26);
insert into GRADE (gradeid, gradename, studentsnum)
values (6958, 'E7', 38);
insert into GRADE (gradeid, gradename, studentsnum)
values (1922, 'C2', 29);
insert into GRADE (gradeid, gradename, studentsnum)
values (5218, 'A1', 33);
insert into GRADE (gradeid, gradename, studentsnum)
values (4261, 'A1', 23);
insert into GRADE (gradeid, gradename, studentsnum)
values (5114, 'H8', 21);
insert into GRADE (gradeid, gradename, studentsnum)
values (7555, 'A4', 11);
insert into GRADE (gradeid, gradename, studentsnum)
values (9188, 'A7', 18);
insert into GRADE (gradeid, gradename, studentsnum)
values (2656, 'C2', 36);
insert into GRADE (gradeid, gradename, studentsnum)
values (8917, 'F1', 16);
insert into GRADE (gradeid, gradename, studentsnum)
values (4197, 'B4', 28);
insert into GRADE (gradeid, gradename, studentsnum)
values (9371, 'C8', 26);
insert into GRADE (gradeid, gradename, studentsnum)
values (7399, 'B1', 21);
insert into GRADE (gradeid, gradename, studentsnum)
values (2575, 'A2', 32);
insert into GRADE (gradeid, gradename, studentsnum)
values (6433, 'G5', 16);
insert into GRADE (gradeid, gradename, studentsnum)
values (8886, 'F3', 26);
insert into GRADE (gradeid, gradename, studentsnum)
values (8354, 'G6', 35);
insert into GRADE (gradeid, gradename, studentsnum)
values (3929, 'C7', 27);
insert into GRADE (gradeid, gradename, studentsnum)
values (5729, 'H4', 31);
insert into GRADE (gradeid, gradename, studentsnum)
values (6969, 'A5', 36);
insert into GRADE (gradeid, gradename, studentsnum)
values (6744, 'E1', 33);
insert into GRADE (gradeid, gradename, studentsnum)
values (3191, 'D4', 27);
insert into GRADE (gradeid, gradename, studentsnum)
values (2398, 'E4', 11);
insert into GRADE (gradeid, gradename, studentsnum)
values (7536, 'E6', 37);
insert into GRADE (gradeid, gradename, studentsnum)
values (4279, 'F1', 23);
insert into GRADE (gradeid, gradename, studentsnum)
values (9867, 'A3', 39);
insert into GRADE (gradeid, gradename, studentsnum)
values (9121, 'A5', 32);
insert into GRADE (gradeid, gradename, studentsnum)
values (6175, 'C6', 21);
insert into GRADE (gradeid, gradename, studentsnum)
values (3761, 'F6', 12);
insert into GRADE (gradeid, gradename, studentsnum)
values (1797, 'E1', 25);
insert into GRADE (gradeid, gradename, studentsnum)
values (8683, 'D6', 24);
insert into GRADE (gradeid, gradename, studentsnum)
values (6478, 'C1', 38);
insert into GRADE (gradeid, gradename, studentsnum)
values (8754, 'D6', 36);
insert into GRADE (gradeid, gradename, studentsnum)
values (8448, 'C1', 23);
insert into GRADE (gradeid, gradename, studentsnum)
values (7343, 'F5', 20);
insert into GRADE (gradeid, gradename, studentsnum)
values (9223, 'D6', 22);
insert into GRADE (gradeid, gradename, studentsnum)
values (9551, 'G1', 39);
insert into GRADE (gradeid, gradename, studentsnum)
values (7867, 'H6', 24);
insert into GRADE (gradeid, gradename, studentsnum)
values (3967, 'F2', 39);
insert into GRADE (gradeid, gradename, studentsnum)
values (4612, 'G3', 26);
insert into GRADE (gradeid, gradename, studentsnum)
values (6488, 'F1', 16);
insert into GRADE (gradeid, gradename, studentsnum)
values (1345, 'F6', 21);
insert into GRADE (gradeid, gradename, studentsnum)
values (8481, 'H8', 17);
insert into GRADE (gradeid, gradename, studentsnum)
values (6177, 'E3', 21);
insert into GRADE (gradeid, gradename, studentsnum)
values (3965, 'H7', 33);
insert into GRADE (gradeid, gradename, studentsnum)
values (6951, 'C5', 21);
insert into GRADE (gradeid, gradename, studentsnum)
values (5952, 'D6', 30);
insert into GRADE (gradeid, gradename, studentsnum)
values (4427, 'E1', 19);
insert into GRADE (gradeid, gradename, studentsnum)
values (6164, 'C7', 27);
insert into GRADE (gradeid, gradename, studentsnum)
values (5921, 'H5', 37);
insert into GRADE (gradeid, gradename, studentsnum)
values (8226, 'F8', 35);
insert into GRADE (gradeid, gradename, studentsnum)
values (7476, 'E8', 32);
insert into GRADE (gradeid, gradename, studentsnum)
values (4954, 'A8', 16);
insert into GRADE (gradeid, gradename, studentsnum)
values (4925, 'E1', 31);
insert into GRADE (gradeid, gradename, studentsnum)
values (2418, 'G2', 12);
insert into GRADE (gradeid, gradename, studentsnum)
values (7151, 'D8', 21);
insert into GRADE (gradeid, gradename, studentsnum)
values (5889, 'B4', 16);
insert into GRADE (gradeid, gradename, studentsnum)
values (8965, 'G8', 27);
insert into GRADE (gradeid, gradename, studentsnum)
values (1546, 'A5', 13);
insert into GRADE (gradeid, gradename, studentsnum)
values (2837, 'D6', 19);
insert into GRADE (gradeid, gradename, studentsnum)
values (1614, 'C4', 28);
insert into GRADE (gradeid, gradename, studentsnum)
values (6845, 'F3', 39);
insert into GRADE (gradeid, gradename, studentsnum)
values (3918, 'A5', 39);
insert into GRADE (gradeid, gradename, studentsnum)
values (2169, 'F1', 10);
insert into GRADE (gradeid, gradename, studentsnum)
values (2975, 'G2', 36);
insert into GRADE (gradeid, gradename, studentsnum)
values (4388, 'G1', 27);
insert into GRADE (gradeid, gradename, studentsnum)
values (6821, 'A5', 20);
insert into GRADE (gradeid, gradename, studentsnum)
values (6674, 'H1', 15);
insert into GRADE (gradeid, gradename, studentsnum)
values (6714, 'E2', 20);
insert into GRADE (gradeid, gradename, studentsnum)
values (7614, 'E3', 21);
insert into GRADE (gradeid, gradename, studentsnum)
values (5697, 'F3', 26);
insert into GRADE (gradeid, gradename, studentsnum)
values (4762, 'G8', 22);
insert into GRADE (gradeid, gradename, studentsnum)
values (5135, 'C6', 40);
insert into GRADE (gradeid, gradename, studentsnum)
values (4967, 'A3', 17);
insert into GRADE (gradeid, gradename, studentsnum)
values (9318, 'A7', 21);
insert into GRADE (gradeid, gradename, studentsnum)
values (5645, 'F8', 18);
insert into GRADE (gradeid, gradename, studentsnum)
values (3946, 'C7', 12);
insert into GRADE (gradeid, gradename, studentsnum)
values (7666, 'G1', 17);
insert into GRADE (gradeid, gradename, studentsnum)
values (6121, 'D5', 29);
insert into GRADE (gradeid, gradename, studentsnum)
values (2887, 'F3', 11);
insert into GRADE (gradeid, gradename, studentsnum)
values (8487, 'E8', 37);
insert into GRADE (gradeid, gradename, studentsnum)
values (2352, 'H5', 25);
insert into GRADE (gradeid, gradename, studentsnum)
values (2375, 'H6', 34);
insert into GRADE (gradeid, gradename, studentsnum)
values (9477, 'E3', 12);
insert into GRADE (gradeid, gradename, studentsnum)
values (1831, 'B4', 28);
insert into GRADE (gradeid, gradename, studentsnum)
values (9741, 'H4', 30);
insert into GRADE (gradeid, gradename, studentsnum)
values (7597, 'H2', 37);
insert into GRADE (gradeid, gradename, studentsnum)
values (2927, 'H8', 19);
insert into GRADE (gradeid, gradename, studentsnum)
values (5929, 'D6', 12);
insert into GRADE (gradeid, gradename, studentsnum)
values (5678, 'B3', 39);
insert into GRADE (gradeid, gradename, studentsnum)
values (2992, 'B2', 14);
commit;
prompt 800 records committed...
insert into GRADE (gradeid, gradename, studentsnum)
values (7381, 'D1', 30);
insert into GRADE (gradeid, gradename, studentsnum)
values (1897, 'E2', 18);
insert into GRADE (gradeid, gradename, studentsnum)
values (3212, 'B3', 14);
insert into GRADE (gradeid, gradename, studentsnum)
values (8165, 'H6', 35);
insert into GRADE (gradeid, gradename, studentsnum)
values (3344, 'C1', 40);
insert into GRADE (gradeid, gradename, studentsnum)
values (9289, 'E3', 37);
insert into GRADE (gradeid, gradename, studentsnum)
values (5399, 'A2', 38);
insert into GRADE (gradeid, gradename, studentsnum)
values (8269, 'E4', 13);
insert into GRADE (gradeid, gradename, studentsnum)
values (8412, 'A3', 37);
insert into GRADE (gradeid, gradename, studentsnum)
values (2491, 'E5', 30);
insert into GRADE (gradeid, gradename, studentsnum)
values (3797, 'D2', 37);
insert into GRADE (gradeid, gradename, studentsnum)
values (6154, 'B7', 21);
insert into GRADE (gradeid, gradename, studentsnum)
values (1147, 'B1', 10);
insert into GRADE (gradeid, gradename, studentsnum)
values (7374, 'A6', 18);
insert into GRADE (gradeid, gradename, studentsnum)
values (1676, 'B5', 15);
insert into GRADE (gradeid, gradename, studentsnum)
values (1847, 'A5', 31);
insert into GRADE (gradeid, gradename, studentsnum)
values (7422, 'B6', 31);
insert into GRADE (gradeid, gradename, studentsnum)
values (3947, 'C7', 13);
insert into GRADE (gradeid, gradename, studentsnum)
values (4253, 'E2', 13);
insert into GRADE (gradeid, gradename, studentsnum)
values (5783, 'G1', 29);
insert into GRADE (gradeid, gradename, studentsnum)
values (2689, 'B6', 25);
insert into GRADE (gradeid, gradename, studentsnum)
values (8619, 'C6', 23);
insert into GRADE (gradeid, gradename, studentsnum)
values (1233, 'B5', 10);
insert into GRADE (gradeid, gradename, studentsnum)
values (9277, 'B2', 30);
insert into GRADE (gradeid, gradename, studentsnum)
values (7678, 'E6', 17);
insert into GRADE (gradeid, gradename, studentsnum)
values (1793, 'H7', 32);
insert into GRADE (gradeid, gradename, studentsnum)
values (4858, 'A5', 17);
insert into GRADE (gradeid, gradename, studentsnum)
values (2747, 'A8', 32);
insert into GRADE (gradeid, gradename, studentsnum)
values (2224, 'G3', 11);
insert into GRADE (gradeid, gradename, studentsnum)
values (2943, 'B8', 34);
insert into GRADE (gradeid, gradename, studentsnum)
values (2722, 'D8', 18);
insert into GRADE (gradeid, gradename, studentsnum)
values (6541, 'H7', 15);
insert into GRADE (gradeid, gradename, studentsnum)
values (4666, 'B2', 27);
insert into GRADE (gradeid, gradename, studentsnum)
values (3693, 'C2', 29);
insert into GRADE (gradeid, gradename, studentsnum)
values (1564, 'F4', 22);
insert into GRADE (gradeid, gradename, studentsnum)
values (6336, 'D5', 39);
commit;
prompt 836 records loaded
prompt Loading TEACHER...
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (469, 'ElijahParish', 'literature', to_date('03-12-1987', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (991, 'NatalieHaysbert', 'sport', to_date('12-06-1991', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (327, 'PragaMetcalf', 'torah', to_date('14-02-1970', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (635, 'JohnnieEpps', 'sport', to_date('29-04-1992', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (332, 'EddiePhillips', 'english', to_date('30-05-1991', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (367, 'WhoopiValentin', 'graamer', to_date('10-08-1996', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (765, 'BarrySpacek', 'sport', to_date('19-02-1980', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (499, 'RolandoLewis', 'literature', to_date('25-06-1990', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (247, 'CarrieSquier', 'literature', to_date('22-05-2001', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (762, 'NedPolito', 'math', to_date('21-08-1973', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (896, 'SherylRomijn-Stamos', 'english', to_date('04-04-1979', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (185, 'MariaNivola', 'literature', to_date('22-06-1993', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (383, 'JoyCronin', 'literature', to_date('07-10-1975', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (656, 'LoisStowe', 'literature', to_date('09-01-1991', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (757, 'HugoSanders', 'graamer', to_date('04-12-1987', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (126, 'MelGunton', 'torah', to_date('17-10-2001', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (797, 'AlexLattimore', 'math', to_date('22-05-1986', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (382, 'ColinMagnuson', 'english', to_date('06-06-1971', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (393, 'MerrileeShawn', 'torah', to_date('16-02-1999', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (827, 'BenHarrelson', 'history', to_date('18-03-1991', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (825, 'PamelaDeVito', 'torah', to_date('26-09-1989', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (641, 'CeliaArden', 'graamer', to_date('28-06-1987', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (384, 'ColmMoriarty', 'sport', to_date('24-11-1975', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (264, 'JonnyMohr', 'history', to_date('19-09-2003', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (684, 'AliceWeaving', 'graamer', to_date('05-10-1984', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (379, 'MadelineTsettos', 'english', to_date('24-06-1983', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (736, 'SarahNeeson', 'history', to_date('24-06-1973', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (751, 'JoyDeVita', 'english', to_date('30-01-2003', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (113, 'JoanCalle', 'history', to_date('01-04-1991', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (445, 'ChelyBadalucco', 'torah', to_date('27-06-1988', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (867, 'HarveyBasinger', 'torah', to_date('24-03-1980', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (675, 'MarcGosdin', 'literature', to_date('07-12-1971', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (717, 'IreneGellar', 'english', to_date('05-12-1998', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (286, 'ElleRhodes', 'literature', to_date('29-08-1986', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (179, 'CherylDench', 'graamer', to_date('15-07-1994', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (928, 'GatesKristofferson', 'history', to_date('25-10-1985', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (822, 'GabrielleHewett', 'history', to_date('07-12-1995', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (984, 'JerryOrton', 'math', to_date('02-08-1970', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (421, 'RebeccaKoyana', 'sport', to_date('29-06-2003', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (837, 'ChazzLeoni', 'graamer', to_date('19-07-1974', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (415, 'KingPlatt', 'literature', to_date('21-04-1984', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (342, 'DennyEngland', 'torah', to_date('13-05-2002', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (191, 'JulietteOsment', 'history', to_date('30-09-1999', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (492, 'KeithCollette', 'torah', to_date('23-05-1996', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (439, 'HollyGano', 'english', to_date('04-12-1971', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (533, 'RaulWiedlin', 'sport', to_date('09-05-1985', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (964, 'NastassjaGleeson', 'english', to_date('10-08-2003', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (654, 'JeremyWarwick', 'history', to_date('23-08-1980', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (169, 'LauraPleasence', 'math', to_date('17-03-1995', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (124, 'MerleMraz', 'sport', to_date('12-07-1973', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (274, 'JeffreyRaye', 'history', to_date('04-10-1983', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (945, 'RowanArkenstone', 'torah', to_date('29-12-1990', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (149, 'CeliaRoundtree', 'english', to_date('18-05-1999', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (586, 'ValSummer', 'history', to_date('17-09-2002', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (486, 'DonalLevin', 'english', to_date('25-11-1986', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (841, 'PenelopeHedaya', 'torah', to_date('04-04-1971', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (996, 'IvanLewin', 'history', to_date('13-09-1994', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (451, 'CeiliVance', 'sport', to_date('12-06-1978', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (775, 'MorganZevon', 'graamer', to_date('14-10-1988', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (669, 'GordieDolenz', 'graamer', to_date('29-09-1978', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (637, 'RemyCulkin', 'torah', to_date('29-03-1987', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (688, 'LucyBurns', 'torah', to_date('14-11-2001', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (544, 'GinaBening', 'torah', to_date('29-11-1973', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (163, 'JeffMohr', 'english', to_date('02-08-1999', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (767, 'JulieCurfman', 'english', to_date('27-08-2002', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (651, 'HarrisRaye', 'graamer', to_date('18-09-1990', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (956, 'RichardBonham', 'graamer', to_date('05-09-1980', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (883, 'HowieThomas', 'sport', to_date('21-12-2000', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (347, 'DemiSecada', 'history', to_date('30-07-1975', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (756, 'CharlesRydell', 'math', to_date('23-01-1998', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (786, 'BrendanSchwimmer', 'history', to_date('03-03-1980', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (391, 'CrispinQuinones', 'literature', to_date('24-06-1996', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (177, 'AnnaBiehn', 'math', to_date('17-03-2000', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (795, 'JackTucker', 'history', to_date('06-02-1974', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (396, 'MirandaDavies', 'english', to_date('23-02-1986', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (843, 'VincentSweet', 'history', to_date('02-06-1977', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (748, 'QuentinNelson', 'sport', to_date('16-08-1977', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (559, 'BrentChappelle', 'history', to_date('05-09-1971', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (111, 'JaneaneJohansson', 'literature', to_date('24-04-2000', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (599, 'CourtneySpacey', 'english', to_date('30-05-1995', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (244, 'LorettaRockwell', 'sport', to_date('22-07-1980', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (573, 'Jean-ClaudeBuscemi', 'sport', to_date('09-09-1972', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (672, 'MelGlover', 'literature', to_date('23-02-1989', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (887, 'FreddieDonovan', 'grammer', to_date('04-03-1998', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (472, 'RosarioMcAnally', 'torah', to_date('31-05-2002', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (681, 'EddieVicious', 'literature', to_date('19-11-1970', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (312, 'DustinKinnear', 'literature', to_date('12-04-1994', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (988, 'CornellBugnon', 'sport', to_date('05-03-1989', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (473, 'DenisBasinger', 'literature', to_date('17-07-1994', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (118, 'VondaWashington', 'torah', to_date('05-10-1973', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (345, 'KristinCross', 'sport', to_date('02-07-1979', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (587, 'EdwinStevenson', 'history', to_date('09-01-1986', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (344, 'WarrenShawn', 'torah', to_date('28-06-1990', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (368, 'RadneyMurdock', 'english', to_date('31-07-1977', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (583, 'StephenMatarazzo', 'grammer', to_date('15-11-1986', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (879, 'WhoopiRock', 'history', to_date('16-12-1988', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (729, 'TraceNewman', 'math', to_date('12-07-1997', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (655, 'NatachaGoldwyn', 'sport', to_date('29-11-2003', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (453, 'Jean-LucMacy', 'literature', to_date('07-01-2001', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (228, 'GarthFarina', 'literature', to_date('18-11-1982', 'dd-mm-yyyy'));
commit;
prompt 100 records committed...
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (265, 'CeliaBentley', 'history', to_date('24-03-1987', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (246, 'GarryCeasar', 'sport', to_date('22-08-1975', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (243, 'AhmadAtlas', 'literature', to_date('09-04-1986', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (547, 'NickelPolley', 'english', to_date('03-09-1999', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (645, 'RichardSandoval', 'history', to_date('03-03-1985', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (493, 'LizzyMcDonald', 'history', to_date('06-06-1986', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (253, 'RussellRossellini', 'sport', to_date('22-08-1980', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (563, 'NatashaWagner', 'history', to_date('07-11-1984', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (157, 'MelanieJackson', 'english', to_date('23-10-1976', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (114, 'MorrisBelles', 'graamer', to_date('25-11-1982', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (715, 'RowanDempsey', 'history', to_date('29-04-1991', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (376, 'AvengedRickman', 'english', to_date('08-08-1986', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (966, 'MaggieDolenz', 'graamer', to_date('14-01-1983', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (369, 'RheaLaPaglia', 'sport', to_date('10-12-1997', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (978, 'ArnoldNorton', 'english', to_date('11-07-1992', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (631, 'LennyBalin', 'history', to_date('06-03-2000', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (828, 'VerticalBacharach', 'history', to_date('29-04-1994', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (489, 'JannMcCain', 'sport', to_date('11-03-1999', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (664, 'AlecBrickell', 'math', to_date('25-11-1982', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (471, 'CherryBosco', 'sport', to_date('05-02-2002', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (444, 'CheechMac', 'history', to_date('10-11-1986', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (927, 'KieranBeckinsale', 'english', to_date('26-11-1992', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (878, 'LynnHoward', 'math', to_date('08-03-1978', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (596, 'BarryRains', 'english', to_date('16-08-1988', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (323, 'MariannePlimpton', 'history', to_date('09-06-1970', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (324, 'GeorgeGetty', 'sport', to_date('24-02-1974', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (588, 'TayeReinhold', 'math', to_date('09-01-1975', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (855, 'JamieDrive', 'graamer', to_date('09-09-1970', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (696, 'BozBerkoff', 'history', to_date('22-10-1985', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (976, 'JackBush', 'literature', to_date('14-11-2001', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (495, 'HalSnipes', 'graamer', to_date('20-06-2001', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (256, 'LorraineKing', 'literature', to_date('03-04-1998', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (735, 'BenicioCruise', 'graamer', to_date('14-04-1986', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (668, 'SharonBrock', 'math', to_date('21-08-1989', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (558, 'BlairBiggs', 'torah', to_date('16-08-1987', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (913, 'ThelmaBraugher', 'literature', to_date('26-04-1978', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (863, 'TziFoley', 'english', to_date('01-03-1977', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (866, 'ScarlettKinski', 'history', to_date('22-11-1982', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (569, 'ConnieLyonne', 'torah', to_date('15-04-1982', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (133, 'FreddyRichter', 'english', to_date('24-08-1980', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (616, 'YolandaWong', 'graamer', to_date('11-11-1976', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (543, 'LaurenceJohnson', 'torah', to_date('15-06-1972', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (298, 'RachaelRundgren', 'math', to_date('06-02-1999', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (292, 'RhysRenfro', 'graamer', to_date('30-11-1985', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (172, 'PamKrumholtz', 'torah', to_date('17-08-1995', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (534, 'CyndiDeVita', 'torah', to_date('06-12-1977', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (348, 'BrendaDzundza', 'math', to_date('10-11-1976', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (771, 'TalvinLeary', 'math', to_date('22-11-1982', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (739, 'KirkKhan', 'english', to_date('11-04-1982', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (496, 'TeaBerkoff', 'graamer', to_date('31-08-1971', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (366, 'FranceMakowicz', 'graamer', to_date('18-04-2000', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (716, 'WillemPierce', 'math', to_date('02-09-1995', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (781, 'LorettaCattrall', 'literature', to_date('20-12-1976', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (221, 'AmyHopper', 'literature', to_date('28-09-1994', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (165, 'MaggieLiotta', 'sport', to_date('18-05-1983', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (695, 'DanniBalk', 'sport', to_date('29-05-1987', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (552, 'DariusWhite', 'torah', to_date('14-07-1991', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (217, 'MickyWomack', 'torah', to_date('11-05-2001', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (364, 'LarryImperioli', 'english', to_date('23-09-1978', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (974, 'LesleyLiu', 'literature', to_date('06-07-1973', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (392, 'ViennaWithers', 'sport', to_date('28-12-1973', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (618, 'ChuckSainte-Marie', 'sport', to_date('22-04-1976', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (697, 'ChloeRossellini', 'torah', to_date('25-02-1978', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (667, 'VerticalHughes', 'torah', to_date('17-06-1974', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (989, 'AzucarNugent', 'literature', to_date('28-04-1977', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (234, 'DustinYorn', 'literature', to_date('03-05-1989', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (155, 'JaniceOsmond', 'torah', to_date('21-01-1986', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (331, 'GailardHarmon', 'history', to_date('31-01-1997', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (134, 'AlfredSalt', 'history', to_date('28-10-1972', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (713, 'DarWhite', 'sport', to_date('15-12-1987', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (936, 'ColinMatheson', 'sport', to_date('01-03-1980', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (959, 'ChrissieWeiland', 'sport', to_date('07-10-1984', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (322, 'NancyMahood', 'sport', to_date('14-07-1982', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (789, 'AlfieRipley', 'torah', to_date('13-09-1992', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (895, 'NoahTolkan', 'literature', to_date('15-10-1976', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (487, 'RussellBadalucco', 'graamer', to_date('27-06-1978', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (425, 'MurrayPacino', 'history', to_date('02-10-1980', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (188, 'CheechCruise', 'english', to_date('29-09-1977', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (116, 'TimothySenior', 'literature', to_date('31-07-1997', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (468, 'KieranThompson', 'torah', to_date('23-11-1988', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (776, 'DebiAtlas', 'literature', to_date('10-01-1997', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (161, 'EmersonWeiland', 'math', to_date('09-02-1997', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (218, 'AidaPorter', 'torah', to_date('03-02-1992', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (362, 'LynetteBrooke', 'sport', to_date('30-03-1979', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (491, 'RachidHauer', 'torah', to_date('05-11-1990', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (557, 'TerenceEat World', 'sport', to_date('22-01-1981', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (426, 'WesleyFrost', 'math', to_date('28-05-1984', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (143, 'GeraldineSavage', 'sport', to_date('21-03-1994', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (627, 'MarlonBiggs', 'history', to_date('04-12-1979', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (427, 'SineadKenoly', 'history', to_date('24-10-1988', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (958, 'BradleyTomei', 'sport', to_date('10-02-1994', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (293, 'LeoMcGowan', 'torah', to_date('26-10-2003', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (754, 'CevinPesci', 'torah', to_date('20-02-1981', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (117, 'DavisTravolta', 'torah', to_date('22-03-1972', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (275, 'RedHersh', 'torah', to_date('20-08-1978', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (693, 'LaurenStarr', 'math', to_date('21-05-1972', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (335, 'SteveHayek', 'graamer', to_date('13-03-1990', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (413, 'CledusKhan', 'torah', to_date('25-11-2002', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (567, 'UmaRockwell', 'sport', to_date('02-08-1975', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (699, 'Carrie-AnneKrumholtz', 'graamer', to_date('04-07-1997', 'dd-mm-yyyy'));
commit;
prompt 200 records committed...
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (566, 'RhonaSaxon', 'math', to_date('16-09-1978', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (877, 'JeanneHarnes', 'sport', to_date('12-09-1970', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (973, 'LorettaTah', 'graamer', to_date('14-10-1978', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (522, 'EllenPressly', 'history', to_date('01-07-1970', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (375, 'KieranPerez', 'math', to_date('14-03-1990', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (965, 'RandallPerez', 'literature', to_date('30-10-1975', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (722, 'BebeHanks', 'torah', to_date('17-12-1988', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (429, 'BenicioFord', 'sport', to_date('06-07-1974', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (266, 'RemyMueller-Stahl', 'english', to_date('01-08-2000', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (455, 'AntonioHaysbert', 'english', to_date('20-10-1993', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (644, 'HookahColtrane', 'torah', to_date('11-12-2003', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (912, 'TildaBrosnan', 'torah', to_date('16-12-1985', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (679, 'LionelDushku', 'history', to_date('10-08-1999', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (792, 'RodWheel', 'math', to_date('05-09-2002', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (319, 'JudgeFehr', 'math', to_date('08-05-1984', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (171, 'SonaStiller', 'math', to_date('13-12-1991', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (711, 'TommyKenoly', 'graamer', to_date('03-05-1993', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (123, 'LydiaHatosy', 'torah', to_date('03-03-1997', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (658, 'TimShelton', 'sport', to_date('24-04-1975', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (447, 'GarlandNeuwirth', 'math', to_date('06-08-1985', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (592, 'NormThewlis', 'sport', to_date('03-06-1979', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (768, 'RosarioHutton', 'english', to_date('22-02-1987', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (481, 'RhysMcGoohan', 'math', to_date('15-03-1973', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (946, 'NancyNavarro', 'sport', to_date('01-11-1973', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (888, 'HarveySanchez', 'math', to_date('31-08-1976', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (226, 'LiamPollack', 'torah', to_date('13-08-2001', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (856, 'DarGryner', 'english', to_date('03-06-1997', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (761, 'FionnulaKirshner', 'math', to_date('17-06-1998', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (619, 'FrancesLang', 'torah', to_date('14-11-1975', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (199, 'AniHanks', 'english', to_date('21-02-1995', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (993, 'LouMcKennitt', 'sport', to_date('10-10-1974', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (763, 'CurtisApple', 'literature', to_date('20-12-1998', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (652, 'QueenHawkins', 'history', to_date('25-05-1989', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (128, 'FatsGracie', 'history', to_date('27-12-1994', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (611, 'MerylColton', 'graamer', to_date('11-09-1994', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (268, 'NikkiVisnjic', 'graamer', to_date('26-05-1999', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (769, 'UmaNess', 'sport', to_date('15-09-1972', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (665, 'MartinRossellini', 'history', to_date('09-09-1972', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (718, 'RobertKrumholtz', 'graamer', to_date('27-04-1980', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (346, 'LouNugent', 'graamer', to_date('16-02-1996', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (517, 'MelGertner', 'torah', to_date('12-01-1980', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (513, 'ScarlettIdol', 'graamer', to_date('01-01-1999', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (854, 'AliWarwick', 'english', to_date('22-04-1986', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (526, 'AidanSirtis', 'torah', to_date('08-07-2000', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (594, 'HoraceCook', 'history', to_date('11-03-1995', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (456, 'TchekyD''Onofrio', 'sport', to_date('27-07-1985', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (629, 'TalKahn', 'literature', to_date('29-07-1985', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (482, 'GilbertoDiffie', 'torah', to_date('26-11-1998', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (824, 'IvanMonk', 'torah', to_date('07-12-1997', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (389, 'MiguelOsmond', 'graamer', to_date('20-04-1982', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (235, 'RawlinsMasur', 'sport', to_date('02-06-1994', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (831, 'RaymondBeckinsale', 'graamer', to_date('10-07-1982', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (325, 'KelliHatosy', 'literature', to_date('09-10-1976', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (283, 'ShawnTicotin', 'sport', to_date('16-06-1998', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (939, 'BryanFlack', 'graamer', to_date('22-10-1990', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (361, 'RoryTanon', 'graamer', to_date('28-02-1972', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (546, 'NanciBerenger', 'torah', to_date('01-06-1998', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (873, 'LloydGatlin', 'math', to_date('08-12-1977', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (678, 'TerrenceWebb', 'torah', to_date('13-03-1972', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (294, 'JudyBrooke', 'english', to_date('18-09-1978', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (315, 'TerriEvett', 'history', to_date('06-09-1980', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (814, 'LouFehr', 'literature', to_date('04-08-1973', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (685, 'KieferPeebles', 'torah', to_date('06-06-1990', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (576, 'RonnyKelly', 'history', to_date('05-08-1984', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (836, 'CourtneyNelligan', 'torah', to_date('13-06-1999', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (198, 'GiovanniBrolin', 'literature', to_date('16-01-2000', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (985, 'KaseyCaan', 'torah', to_date('20-08-2002', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (694, 'BruceHolmes', 'history', to_date('08-05-1997', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (714, 'BarbaraLiotta', 'literature', to_date('05-09-1981', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (733, 'DickCohn', 'history', to_date('15-04-2003', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (659, 'BreckinMurdock', 'graamer', to_date('19-10-1982', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (571, 'ChloeBlaine', 'history', to_date('12-03-1972', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (176, 'GordonArkin', 'sport', to_date('14-07-1977', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (874, 'AshtonBlair', 'graamer', to_date('02-01-1993', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (448, 'TziWalsh', 'literature', to_date('03-04-1977', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (192, 'MollyLedger', 'literature', to_date('27-12-1994', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (297, 'SusanCurtis', 'english', to_date('01-02-1970', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (196, 'ColleenGordon', 'math', to_date('20-08-1994', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (657, 'HalKadison', 'literature', to_date('25-06-1982', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (138, 'AnitaVan Damme', 'graamer', to_date('10-02-1986', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (412, 'RoscoeLevy', 'graamer', to_date('06-01-1975', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (483, 'KimberlySolido', 'math', to_date('13-07-1993', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (242, 'AvrilRussell', 'torah', to_date('15-11-1999', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (937, 'GranLevin', 'history', to_date('23-12-1986', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (152, 'SheenaLeguizamo', 'graamer', to_date('07-01-2001', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (386, 'LariAtlas', 'math', to_date('28-05-1993', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (279, 'SalmaBusey', 'math', to_date('14-08-1999', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (255, 'MekhiSpacey', 'graamer', to_date('02-07-1970', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (833, 'ColeyCornell', 'math', to_date('22-11-1994', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (227, 'JackNightingale', 'literature', to_date('09-09-1977', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (224, 'MykeltiMcDowell', 'english', to_date('19-09-1997', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (581, 'KeanuBates', 'torah', to_date('17-08-1981', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (647, 'KeanuSchneider', 'literature', to_date('26-08-1972', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (783, 'PierceLiotta', 'history', to_date('18-05-1972', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (924, 'SanderBrothers', 'graamer', to_date('10-11-1993', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (385, 'BrianMcFerrin', 'literature', to_date('06-08-1975', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (857, 'JamieMyers', 'english', to_date('30-07-1981', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (941, 'OmarDanes', 'english', to_date('23-01-2001', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (374, 'DomingoPortman', 'torah', to_date('19-07-2000', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (288, 'SophieCassidy', 'sport', to_date('01-04-2000', 'dd-mm-yyyy'));
commit;
prompt 300 records committed...
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (233, 'JeanneIsaacs', 'graamer', to_date('18-10-1995', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (339, 'DabneyLlewelyn', 'torah', to_date('14-09-2000', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (282, 'BernieSchock', 'sport', to_date('04-07-1981', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (147, 'BrittanyKinski', 'torah', to_date('11-01-2002', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (475, 'GinaIdle', 'torah', to_date('24-06-1999', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (875, 'LenniePosey', 'english', to_date('06-02-1995', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (125, 'CarolRuiz', 'literature', to_date('28-12-2000', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (182, 'GinaCassidy', 'graamer', to_date('11-05-1975', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (838, 'CyndiVicious', 'english', to_date('12-08-1982', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (387, 'FirstTravolta', 'graamer', to_date('22-06-1986', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (851, 'MiaRobinson', 'literature', to_date('23-02-1994', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (951, 'CarlPleasure', 'literature', to_date('25-03-1990', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (178, 'MarisaAlexander', 'math', to_date('15-11-1992', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (869, 'JacksonGallagher', 'sport', to_date('12-06-1999', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (972, 'JessicaCrow', 'english', to_date('02-04-1983', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (724, 'LorettaChinlund', 'graamer', to_date('19-11-1980', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (164, 'LilyKeitel', 'history', to_date('09-01-1994', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (254, 'IceFlanery', 'literature', to_date('13-08-1981', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (411, 'TchekyArthur', 'sport', to_date('08-04-1980', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (842, 'FredaStiles', 'math', to_date('13-02-1976', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (922, 'SydneyWalker', 'graamer', to_date('21-06-1988', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (889, 'MarcCurfman', 'sport', to_date('25-10-1980', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (532, 'JaneDeGraw', 'math', to_date('12-11-1997', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (622, 'SimonRandal', 'graamer', to_date('13-08-1977', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (446, 'CandiceKaryo', 'math', to_date('02-05-1986', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (556, 'BruceLandau', 'math', to_date('22-07-1984', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (168, 'PragaAglukark', 'sport', to_date('13-02-1980', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (923, 'ChadEnglund', 'english', to_date('11-12-1977', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (461, 'VivicaSevigny', 'history', to_date('30-03-1978', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (115, 'StewartSalonga', 'torah', to_date('09-12-2000', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (561, 'GordieDale', 'english', to_date('14-04-1985', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (835, 'GabyChapman', 'torah', to_date('06-08-1989', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (997, 'MichelleHolland', 'math', to_date('15-04-1991', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (598, 'CevinDeLuise', 'graamer', to_date('30-12-1994', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (329, 'ReeseRubinek', 'literature', to_date('02-04-1997', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (646, 'WesEverett', 'math', to_date('14-02-2003', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (317, 'RogerTsettos', 'torah', to_date('23-11-1992', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (112, 'EmmFeuerstein', 'history', to_date('19-01-1988', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (628, 'DiamondCrow', 'english', to_date('09-02-2001', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (132, 'Chant?Thurman', 'literature', to_date('21-02-1998', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (432, 'MaceoRobbins', 'history', to_date('17-09-1987', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (821, 'EmmRydell', 'math', to_date('12-01-1970', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (334, 'PetulaDavison', 'literature', to_date('28-08-1971', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (692, 'AshtonMcBride', 'torah', to_date('19-04-1986', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (734, 'HughPurefoy', 'english', to_date('20-10-1999', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (153, 'JenniferCrouch', 'sport', to_date('29-07-1975', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (726, 'NinaCurry', 'torah', to_date('10-12-1982', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (623, 'SaffronStiers', 'history', to_date('03-10-1971', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (931, 'MerrillLavigne', 'torah', to_date('30-09-1971', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (417, 'DenzelDiesel', 'english', to_date('31-10-1983', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (953, 'TraceRooker', 'graamer', to_date('21-11-1984', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (271, 'IlleanaWithers', 'literature', to_date('18-06-2002', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (846, 'AndrewHudson', 'literature', to_date('08-01-1981', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (897, 'RosannaOlin', 'torah', to_date('12-12-2001', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (582, 'GlenDepp', 'english', to_date('30-07-1992', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (747, 'MelGary', 'torah', to_date('20-03-1970', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (239, 'KirkBiggs', 'math', to_date('21-10-1971', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (687, 'FionaBates', 'literature', to_date('22-01-1999', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (276, 'JulioManning', 'literature', to_date('18-07-1972', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (186, 'AzucarIfans', 'graamer', to_date('14-04-1972', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (438, 'MosDeejay', 'english', to_date('29-06-1997', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (638, 'SandraHirsch', 'history', to_date('29-05-1978', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (548, 'HarrisImperioli', 'literature', to_date('21-02-1977', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (423, 'CrispinShepherd', 'math', to_date('02-01-1991', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (632, 'CarleneMcKellen', 'torah', to_date('11-08-1970', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (686, 'QueenMoore', 'sport', to_date('31-01-1979', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (463, 'AlanaDysart', 'graamer', to_date('20-07-1977', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (343, 'TriniEckhart', 'graamer', to_date('16-05-1982', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (744, 'JenniferTucci', 'sport', to_date('27-05-1992', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (299, 'RosarioYoung', 'sport', to_date('01-10-1981', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (868, 'JarvisMcLachlan', 'graamer', to_date('17-11-1999', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (328, 'JoelyDerringer', 'history', to_date('08-01-1988', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (262, 'KristinDushku', 'sport', to_date('20-01-1995', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (269, 'RosarioTillis', 'sport', to_date('13-02-2000', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (881, 'BridgetteCrouse', 'graamer', to_date('10-09-1975', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (585, 'BelindaLapointe', 'history', to_date('20-08-1989', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (314, 'SanderLucien', 'history', to_date('14-12-1972', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (258, 'TracyClose', 'literature', to_date('05-04-1974', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (755, 'PaulErmey', 'literature', to_date('25-03-1981', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (452, 'MaggieAkins', 'literature', to_date('06-09-1985', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (933, 'RogerSingh', 'math', to_date('18-03-1978', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (584, 'JoshuaScorsese', 'sport', to_date('12-07-1997', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (625, 'ChristianCumming', 'torah', to_date('12-03-1998', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (527, 'EmersonVannelli', 'sport', to_date('11-02-1992', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (154, 'VickieRowlands', 'math', to_date('07-11-2002', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (589, 'ClaudeSepulveda', 'graamer', to_date('12-06-1976', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (626, 'NikkaCraddock', 'english', to_date('22-04-1973', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (773, 'RickySellers', 'torah', to_date('16-08-1988', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (834, 'RobertaStiles', 'math', to_date('31-08-2003', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (892, 'LorettaMay', 'history', to_date('10-07-1998', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (477, 'IreneWatley', 'english', to_date('24-02-1994', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (725, 'Ming-NaLerner', 'history', to_date('25-12-1979', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (723, 'HerbiePleasure', 'torah', to_date('10-09-1988', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (127, 'JaimeSainte-Marie', 'math', to_date('24-05-1999', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (388, 'RemyRoundtree', 'literature', to_date('30-07-1982', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (691, 'LoreenaWilder', 'literature', to_date('07-07-1994', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (189, 'JoaquimOszajca', 'math', to_date('08-03-1994', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (137, 'PhilipKramer', 'literature', to_date('23-01-1988', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (289, 'CliveMcFadden', 'english', to_date('14-10-2000', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (156, 'JannStallone', 'graamer', to_date('17-01-1971', 'dd-mm-yyyy'));
commit;
prompt 400 records committed...
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (225, 'LinCoyote', 'english', to_date('31-12-1998', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (311, 'ChuckCohn', 'torah', to_date('10-12-1977', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (943, 'HookahEverett', 'graamer', to_date('24-07-1986', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (812, 'SpencerMason', 'english', to_date('11-10-1971', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (145, 'LorenWood', 'history', to_date('21-04-1978', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (326, 'SpikeSandler', 'literature', to_date('10-10-1981', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (798, 'RichRockwell', 'torah', to_date('11-01-1977', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (511, 'CevinGoldwyn', 'graamer', to_date('04-12-1977', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (295, 'GlennPage', 'sport', to_date('09-02-1975', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (194, 'LesleyCrow', 'graamer', to_date('02-04-1986', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (464, 'AmyGuzman', 'graamer', to_date('03-05-1997', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (568, 'ErnestBright', 'math', to_date('11-02-1984', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (969, 'BretRooker', 'history', to_date('23-06-1975', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (595, 'RolandoCrowell', 'math', to_date('27-10-1985', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (476, 'KrisLyonne', 'torah', to_date('18-05-1987', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (398, 'Jean-LucCamp', 'history', to_date('10-07-1997', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (926, 'RayNewman', 'graamer', to_date('03-10-1976', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (241, 'SamanthaCarr', 'literature', to_date('02-05-1975', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (365, 'StewartSobieski', 'literature', to_date('26-03-1980', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (433, 'DomingoWagner', 'sport', to_date('27-12-2000', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (167, 'JoshuaFrost', 'sport', to_date('04-04-1991', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (377, 'MaggieGlenn', 'graamer', to_date('04-07-2003', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (864, 'LizzyVega', 'history', to_date('09-01-1993', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (753, 'KingGyllenhaal', 'english', to_date('29-05-2001', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (249, 'ChristopherJoli', 'math', to_date('10-02-1980', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (359, 'TeenaRispoli', 'graamer', to_date('21-03-1970', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (222, 'LizzyTsettos', 'english', to_date('12-05-1992', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (528, 'KieferMcGovern', 'graamer', to_date('20-10-1986', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (975, 'MerleZevon', 'english', to_date('09-01-1972', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (129, 'TommyWoodard', 'graamer', to_date('17-03-1975', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (497, 'GeenaPhillips', 'english', to_date('16-06-1971', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (549, 'CurtisButler', 'english', to_date('25-03-1985', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (865, 'EmmylouCassidy', 'history', to_date('27-09-1993', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (861, 'DebiRoot', 'english', to_date('22-06-1975', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (882, 'DeanKadison', 'graamer', to_date('28-09-1984', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (434, 'NileRobards', 'sport', to_date('31-03-1994', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (915, 'PowersCara', 'literature', to_date('16-01-1995', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (662, 'StanleyMatarazzo', 'literature', to_date('10-08-1978', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (862, 'DeniseMollard', 'sport', to_date('01-06-1973', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (987, 'JudiPerlman', 'math', to_date('04-02-1978', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (287, 'GeraldSalonga', 'literature', to_date('06-08-1984', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (591, 'AlClark', 'math', to_date('04-06-1991', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (523, 'MirandaChung', 'english', to_date('25-04-1980', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (363, 'BobbyWheel', 'sport', to_date('10-03-1992', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (554, 'PhilipTomei', 'sport', to_date('12-05-1984', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (484, 'MartyReynolds', 'torah', to_date('04-05-1976', 'dd-mm-yyyy'));
insert into TEACHER (teacherid, tname, subject, tbirthdate)
values (698, 'JamieRuffalo', 'math', to_date('12-05-1990', 'dd-mm-yyyy'));
commit;
prompt 447 records loaded
prompt Loading SCHEDULE...
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (8761, 8, 'friday', 43124, 8522, 317);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (7611, 2, 'wednesday', 55815, 7653, 733);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (1579, 5, 'monday', 43427, 8936, 692);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (3386, 3, 'monday', 91629, 1877, 523);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (2455, 5, 'wednesday', 52828, 6453, 178);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (7348, 3, 'tuesday', 69593, 6329, 398);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (1124, 2, 'thursday', 42755, 5374, 434);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (7333, 2, 'thursday', 74963, 1942, 827);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (3163, 4, 'monday', 57467, 7222, 182);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5735, 7, 'wednesday', 26225, 8954, 838);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5254, 2, 'wednesday', 93963, 3113, 635);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (4833, 4, 'sunday', 93424, 1893, 792);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5458, 4, 'thursday', 98744, 2889, 637);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (1645, 3, 'monday', 57133, 9966, 924);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (6379, 1, 'sunday', 28916, 4451, 659);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (7513, 4, 'friday', 41119, 7653, 767);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (3582, 2, 'friday', 23965, 5339, 658);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (8279, 6, 'monday', 43851, 8413, 177);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (6447, 4, 'friday', 29866, 2966, 274);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (8977, 5, 'sunday', 98412, 2773, 164);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (1267, 8, 'friday', 76298, 2231, 364);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (4593, 5, 'monday', 19532, 4743, 385);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (6984, 7, 'tuesday', 18374, 8298, 863);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (3223, 4, 'sunday', 53252, 3875, 451);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (7995, 5, 'wednesday', 67557, 2334, 989);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (1616, 6, 'wednesday', 88778, 1154, 157);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (2915, 5, 'tuesday', 92723, 1215, 421);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (7132, 6, 'thursday', 95372, 5239, 571);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (9112, 6, 'tuesday', 66916, 6411, 421);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (8284, 1, 'sunday', 73379, 7266, 191);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (3675, 8, 'tuesday', 89344, 6323, 629);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (9398, 7, 'friday', 13282, 4158, 319);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (2907, 2, 'thursday', 75674, 8954, 453);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (2654, 5, 'monday', 93895, 3323, 865);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (7787, 3, 'friday', 29833, 2666, 384);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5967, 3, 'monday', 74947, 2667, 812);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (9277, 8, 'tuesday', 95257, 7767, 178);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (6729, 6, 'monday', 84761, 1634, 835);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (4999, 7, 'thursday', 83248, 9961, 112);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (4574, 5, 'tuesday', 97647, 6514, 936);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5905, 8, 'monday', 14748, 6391, 176);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5914, 5, 'thursday', 62697, 4743, 912);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (3243, 6, 'monday', 66916, 5543, 571);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (7381, 3, 'thursday', 35831, 4289, 425);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (3565, 2, 'wednesday', 97848, 4158, 528);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (8808, 8, 'sunday', 95237, 1479, 619);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (4525, 6, 'sunday', 37579, 8577, 664);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (2227, 7, 'wednesday', 14931, 9734, 924);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (6159, 4, 'tuesday', 59221, 5646, 933);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (3999, 2, 'sunday', 82253, 9517, 869);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5656, 2, 'friday', 37844, 9966, 312);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (6697, 1, 'wednesday', 69481, 4928, 747);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (3531, 1, 'monday', 88282, 8393, 711);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (2672, 5, 'wednesday', 51583, 6393, 446);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5947, 3, 'wednesday', 34438, 2756, 433);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (6494, 7, 'thursday', 67712, 5519, 626);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (7526, 1, 'friday', 92868, 5217, 456);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (3296, 6, 'wednesday', 41825, 2424, 974);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (8757, 7, 'wednesday', 21436, 3173, 928);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (2195, 1, 'sunday', 33144, 8298, 344);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (1594, 1, 'tuesday', 69796, 5777, 637);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (8106, 6, 'friday', 26384, 9799, 552);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (8597, 4, 'sunday', 34174, 3224, 838);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (1955, 2, 'friday', 33675, 8551, 582);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (6496, 2, 'monday', 49456, 2342, 364);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (9739, 5, 'tuesday', 32474, 1969, 191);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (2826, 2, 'tuesday', 97416, 8522, 697);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5848, 2, 'monday', 13662, 1215, 154);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (8554, 3, 'sunday', 37424, 5227, 258);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (9395, 2, 'sunday', 19532, 4636, 776);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (1589, 1, 'thursday', 56112, 3173, 191);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (9315, 5, 'tuesday', 98764, 9376, 476);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (9763, 6, 'wednesday', 72146, 3856, 271);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (3248, 8, 'wednesday', 74715, 5247, 113);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (6771, 1, 'friday', 11791, 3511, 856);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (3915, 8, 'monday', 93777, 2115, 286);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5663, 1, 'wednesday', 88336, 7598, 646);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (9142, 2, 'wednesday', 17524, 5358, 239);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (1557, 5, 'sunday', 75698, 6329, 895);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5575, 4, 'sunday', 24317, 5818, 427);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (2888, 2, 'sunday', 85217, 8637, 838);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (1868, 7, 'thursday', 76841, 1479, 517);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (6506, 4, 'tuesday', 56768, 6411, 953);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (7815, 3, 'monday', 16121, 5646, 857);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (8861, 6, 'tuesday', 29819, 7224, 448);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5576, 4, 'monday', 79645, 6675, 235);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (7863, 6, 'monday', 67617, 8386, 856);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (3359, 1, 'tuesday', 86571, 7928, 915);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (6402, 5, 'tuesday', 11112, 1787, 328);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (2142, 3, 'monday', 21726, 5888, 688);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (6332, 2, 'thursday', 78779, 5247, 152);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (7972, 4, 'thursday', 35262, 9668, 641);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (3109, 1, 'sunday', 89138, 3582, 132);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (9124, 1, 'thursday', 38295, 2666, 491);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (8968, 7, 'tuesday', 55556, 8386, 297);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (3679, 3, 'tuesday', 79762, 5672, 586);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (8311, 1, 'wednesday', 43982, 2998, 781);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (9465, 6, 'wednesday', 21997, 5672, 548);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (8739, 1, 'sunday', 49528, 7875, 383);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (2492, 7, 'wednesday', 57733, 2598, 687);
commit;
prompt 100 records committed...
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (1758, 7, 'sunday', 36615, 4158, 723);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (2191, 8, 'wednesday', 49764, 2735, 587);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (3474, 6, 'wednesday', 42293, 9796, 975);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (1262, 3, 'monday', 92325, 1496, 842);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (1558, 6, 'friday', 94649, 6514, 729);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (4456, 4, 'sunday', 76143, 6453, 993);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (1703, 1, 'wednesday', 36426, 9874, 953);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (2103, 7, 'wednesday', 58834, 5127, 444);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5316, 2, 'friday', 39869, 2342, 717);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (9434, 3, 'wednesday', 45251, 3638, 481);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5687, 4, 'thursday', 94972, 5358, 991);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (4577, 8, 'sunday', 36749, 5374, 117);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (9443, 4, 'sunday', 38922, 4761, 126);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (3901, 7, 'tuesday', 46848, 5393, 831);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (3551, 5, 'thursday', 13877, 8928, 415);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (8131, 8, 'monday', 36656, 5712, 544);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5101, 8, 'monday', 25723, 8247, 656);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (8278, 8, 'friday', 98899, 2453, 413);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (2432, 7, 'monday', 76399, 6139, 786);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (3702, 1, 'sunday', 16389, 9425, 331);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (8443, 4, 'sunday', 25513, 7928, 668);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (7516, 2, 'sunday', 49718, 4761, 812);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (6103, 8, 'friday', 67493, 8612, 769);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (8232, 8, 'sunday', 76754, 3638, 837);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (9171, 4, 'monday', 44625, 9112, 533);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (1793, 5, 'friday', 72195, 9959, 681);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (7525, 6, 'tuesday', 56112, 1315, 446);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (8517, 4, 'monday', 34788, 5285, 489);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (6633, 2, 'friday', 61336, 9565, 761);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (3107, 1, 'tuesday', 89169, 8577, 587);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (1865, 8, 'wednesday', 12667, 9734, 126);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (8128, 3, 'thursday', 62156, 2666, 672);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (6202, 8, 'sunday', 58989, 1479, 568);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (8426, 5, 'thursday', 95812, 6184, 692);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5847, 6, 'monday', 93264, 6514, 685);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (4465, 3, 'wednesday', 95389, 1315, 527);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (6458, 1, 'monday', 21312, 4496, 767);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (6512, 2, 'wednesday', 87712, 8669, 227);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (7518, 5, 'thursday', 74963, 3224, 771);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (6679, 4, 'wednesday', 11398, 3253, 573);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (3512, 3, 'thursday', 92745, 6959, 939);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (9317, 4, 'monday', 34963, 3856, 679);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5924, 2, 'tuesday', 69775, 5628, 828);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (6574, 6, 'friday', 28224, 9966, 292);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5541, 2, 'wednesday', 92778, 8612, 242);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (7864, 5, 'monday', 85737, 1984, 798);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (8568, 3, 'tuesday', 43363, 9668, 922);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (6355, 2, 'sunday', 59873, 4761, 767);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (7382, 4, 'friday', 55245, 6231, 377);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (2767, 2, 'thursday', 73379, 1781, 828);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5251, 2, 'sunday', 77825, 8827, 363);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5307, 6, 'monday', 35495, 7222, 926);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (6634, 4, 'sunday', 31288, 1447, 225);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (1412, 8, 'monday', 15574, 9565, 753);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (7897, 3, 'wednesday', 96586, 9796, 471);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (7188, 2, 'friday', 21415, 1132, 426);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (2262, 5, 'monday', 69274, 1163, 111);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5818, 1, 'wednesday', 97969, 7767, 421);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5592, 2, 'friday', 42311, 6997, 123);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (6373, 2, 'sunday', 91258, 5165, 365);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (2977, 1, 'friday', 28654, 5393, 176);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (4931, 3, 'thursday', 74614, 1447, 129);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5377, 7, 'sunday', 93248, 2483, 463);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (2397, 4, 'friday', 76754, 9425, 691);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (8388, 7, 'monday', 59746, 3699, 239);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (9291, 1, 'friday', 31848, 7491, 711);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (3944, 8, 'tuesday', 56768, 2231, 838);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (7993, 5, 'monday', 42783, 9532, 185);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (8431, 4, 'friday', 16497, 3582, 862);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (1624, 6, 'sunday', 74512, 2334, 497);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (7721, 3, 'friday', 11398, 9565, 618);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (2121, 7, 'monday', 89259, 5798, 453);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5454, 8, 'monday', 49718, 9785, 714);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5276, 8, 'friday', 31512, 9961, 588);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (6617, 6, 'sunday', 99897, 9112, 319);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (2851, 2, 'sunday', 57955, 4761, 814);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (6993, 3, 'wednesday', 91846, 4282, 599);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (1468, 6, 'friday', 14183, 7491, 895);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (1446, 3, 'tuesday', 92728, 6139, 176);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (1603, 4, 'friday', 25414, 5358, 375);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (6895, 3, 'wednesday', 66243, 7667, 163);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (8897, 1, 'monday', 52933, 9414, 592);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (6817, 4, 'friday', 95237, 4158, 692);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5419, 8, 'tuesday', 45634, 6139, 697);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (1614, 1, 'friday', 64987, 2449, 836);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (6733, 4, 'thursday', 48758, 8954, 831);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (8216, 5, 'tuesday', 13284, 6139, 364);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (7417, 5, 'friday', 36627, 5628, 869);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (9238, 8, 'monday', 41258, 7667, 163);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (2189, 6, 'friday', 54351, 5165, 626);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (1317, 5, 'sunday', 74947, 4899, 988);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5854, 2, 'friday', 43686, 9112, 936);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (6718, 7, 'wednesday', 89842, 5934, 133);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (9467, 6, 'thursday', 65442, 9796, 824);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (2166, 4, 'sunday', 64986, 1565, 253);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (4535, 8, 'thursday', 29861, 9966, 696);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5152, 2, 'friday', 44917, 8988, 825);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5244, 8, 'thursday', 34275, 9959, 984);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (2284, 5, 'tuesday', 35541, 4158, 768);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (8878, 4, 'sunday', 36627, 2735, 966);
commit;
prompt 200 records committed...
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (3981, 3, 'tuesday', 57955, 9513, 895);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5977, 7, 'thursday', 28224, 5165, 623);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (7859, 5, 'wednesday', 92924, 5777, 429);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (3176, 2, 'wednesday', 61336, 1998, 657);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (9176, 6, 'monday', 45962, 5818, 323);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5744, 6, 'thursday', 33799, 5825, 552);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (9662, 6, 'wednesday', 43958, 9627, 595);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (7439, 5, 'friday', 53556, 7875, 475);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5177, 5, 'friday', 46927, 2453, 762);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (2744, 4, 'tuesday', 82716, 5287, 339);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5842, 3, 'tuesday', 32396, 6357, 694);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5738, 5, 'thursday', 96586, 6599, 425);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (8573, 8, 'tuesday', 73379, 6184, 324);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (9533, 7, 'friday', 34934, 8735, 897);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (1161, 2, 'wednesday', 61754, 7121, 567);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5717, 7, 'thursday', 18931, 6675, 616);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (4493, 8, 'tuesday', 33723, 6499, 912);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (9657, 3, 'wednesday', 89939, 5247, 433);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (8659, 5, 'monday', 85242, 2453, 734);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5385, 6, 'tuesday', 84348, 3839, 792);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (3874, 5, 'friday', 82716, 3839, 635);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (8834, 8, 'wednesday', 82661, 7783, 127);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (2866, 3, 'thursday', 89298, 7619, 734);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (2203, 1, 'sunday', 62174, 5239, 865);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (1332, 3, 'wednesday', 24991, 6231, 696);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5711, 4, 'tuesday', 85935, 1722, 477);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (3937, 4, 'monday', 15897, 3253, 685);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5761, 4, 'sunday', 72718, 2643, 133);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (9665, 3, 'sunday', 38821, 2376, 199);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (8218, 6, 'monday', 74963, 1115, 626);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (3132, 8, 'monday', 97387, 3422, 644);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (7814, 6, 'tuesday', 28421, 5285, 856);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (7968, 7, 'thursday', 23523, 1115, 161);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5273, 3, 'sunday', 64181, 9959, 447);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (2703, 3, 'sunday', 24378, 7698, 881);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (9632, 3, 'monday', 31398, 8366, 833);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (6748, 7, 'wednesday', 68696, 8329, 343);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (6354, 1, 'wednesday', 25654, 2666, 765);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (6758, 7, 'sunday', 97269, 2773, 517);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (3672, 3, 'friday', 24549, 6267, 483);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (6546, 3, 'tuesday', 78323, 6374, 869);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (2436, 5, 'tuesday', 54572, 1722, 897);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (1936, 5, 'sunday', 51818, 9796, 753);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (3351, 1, 'thursday', 17975, 5825, 126);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (7746, 6, 'thursday', 83613, 9687, 616);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (4862, 1, 'thursday', 81893, 1447, 984);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (2856, 1, 'friday', 66243, 5628, 471);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5729, 5, 'friday', 81659, 1696, 533);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (3194, 8, 'friday', 45734, 2889, 389);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (1163, 4, 'wednesday', 54245, 1711, 469);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (7129, 7, 'wednesday', 13117, 6344, 664);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (6653, 1, 'tuesday', 54838, 8637, 217);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (8482, 8, 'sunday', 16389, 3323, 833);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5169, 1, 'thursday', 71143, 8473, 365);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (3262, 1, 'monday', 93224, 8637, 286);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (6924, 2, 'friday', 28447, 7716, 684);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (1565, 4, 'friday', 25451, 2334, 786);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5277, 4, 'sunday', 43958, 2756, 331);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5787, 3, 'sunday', 47196, 1132, 936);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (3775, 3, 'wednesday', 15166, 7652, 599);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5574, 6, 'tuesday', 58883, 7549, 382);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (1517, 3, 'sunday', 78829, 4282, 522);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (3281, 3, 'friday', 57272, 1973, 176);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (3414, 1, 'tuesday', 59827, 3856, 217);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (1634, 2, 'monday', 86288, 3526, 423);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (1391, 1, 'friday', 38765, 8413, 191);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (1878, 3, 'thursday', 47861, 3323, 331);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (2433, 8, 'sunday', 47858, 7432, 123);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (3451, 3, 'sunday', 31492, 8424, 317);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5775, 6, 'wednesday', 41896, 3591, 714);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5568, 1, 'tuesday', 69137, 9569, 444);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (2589, 4, 'thursday', 21726, 4899, 733);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (8201, 2, 'tuesday', 12639, 3638, 398);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (8511, 7, 'tuesday', 13284, 9569, 511);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (3982, 4, 'wednesday', 34513, 3538, 975);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (8151, 8, 'friday', 43795, 7222, 198);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (9485, 6, 'sunday', 84348, 5247, 552);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (6133, 7, 'monday', 12879, 7453, 879);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (4909, 8, 'friday', 78496, 1359, 594);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5151, 4, 'friday', 78323, 5221, 583);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (1688, 1, 'thursday', 36687, 5285, 687);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (6484, 4, 'monday', 64619, 2231, 632);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5693, 7, 'monday', 31677, 6675, 831);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5883, 4, 'thursday', 17975, 5519, 585);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (7628, 1, 'thursday', 14444, 6997, 188);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (4461, 4, 'tuesday', 75176, 8928, 266);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (3488, 7, 'thursday', 86657, 6267, 838);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (9388, 8, 'wednesday', 49295, 3658, 846);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5195, 6, 'friday', 24323, 7875, 222);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (3619, 2, 'sunday', 46495, 1696, 382);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (3398, 8, 'monday', 11898, 8519, 573);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (3907, 3, 'friday', 47431, 5374, 345);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (7805, 8, 'wednesday', 29732, 5358, 996);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (1883, 3, 'friday', 56484, 8522, 472);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (3655, 4, 'thursday', 46932, 5287, 348);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (3402, 2, 'thursday', 33351, 6825, 975);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (8585, 8, 'wednesday', 21436, 4589, 646);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (2972, 6, 'friday', 64181, 3253, 812);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (2302, 4, 'wednesday', 12534, 9687, 132);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (1678, 1, 'wednesday', 42699, 7717, 691);
commit;
prompt 300 records committed...
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (3271, 5, 'tuesday', 64543, 9926, 185);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (2987, 4, 'sunday', 46632, 8612, 822);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (3884, 5, 'friday', 67446, 8329, 641);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (4342, 7, 'monday', 62849, 6162, 255);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (3485, 7, 'friday', 72542, 5299, 425);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (6784, 5, 'wednesday', 56112, 9376, 695);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (4528, 8, 'monday', 75267, 6357, 179);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (3177, 8, 'monday', 71868, 1115, 411);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (1943, 7, 'sunday', 35834, 8551, 382);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (8734, 1, 'friday', 81444, 1711, 958);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (2439, 5, 'thursday', 48884, 8954, 345);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (2706, 5, 'tuesday', 15213, 8967, 145);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5392, 5, 'monday', 65917, 2629, 345);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (2642, 2, 'tuesday', 86768, 8413, 611);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5397, 7, 'tuesday', 25513, 1732, 667);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (2496, 8, 'monday', 18738, 7875, 931);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5903, 7, 'tuesday', 49125, 1998, 697);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (4585, 7, 'wednesday', 81148, 2581, 342);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (4887, 5, 'sunday', 88721, 2794, 468);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (8397, 7, 'wednesday', 33144, 2342, 997);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (1376, 3, 'sunday', 89454, 4773, 377);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (8429, 7, 'sunday', 66289, 3699, 755);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (3291, 3, 'thursday', 45113, 1942, 641);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (8499, 7, 'monday', 66243, 4761, 561);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5934, 5, 'sunday', 54647, 2499, 534);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (8318, 2, 'friday', 47681, 2231, 632);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (4702, 2, 'wednesday', 31398, 1173, 224);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (6614, 4, 'wednesday', 25392, 8988, 412);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (9146, 2, 'tuesday', 25785, 1496, 956);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (1959, 8, 'friday', 13177, 2666, 324);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (1128, 7, 'monday', 24991, 6391, 368);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (8785, 4, 'sunday', 34713, 5287, 169);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (6852, 1, 'wednesday', 52347, 3638, 571);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (7341, 3, 'thursday', 66232, 9959, 264);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (7929, 1, 'monday', 56727, 1787, 522);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5727, 4, 'friday', 73918, 7984, 444);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (8724, 8, 'wednesday', 99553, 9687, 325);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (1276, 1, 'monday', 45113, 8637, 473);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (1291, 1, 'monday', 11852, 8424, 592);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (6365, 4, 'wednesday', 27754, 2629, 473);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (6407, 4, 'friday', 87529, 7377, 956);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (8997, 4, 'thursday', 94649, 8298, 933);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (6265, 3, 'monday', 72718, 1893, 192);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (8675, 6, 'tuesday', 68418, 8424, 771);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (8789, 7, 'wednesday', 18171, 1998, 584);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (4214, 2, 'tuesday', 25878, 3553, 855);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (4584, 8, 'tuesday', 88282, 2872, 941);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (1491, 7, 'sunday', 86751, 1565, 243);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (8959, 7, 'monday', 26859, 6393, 526);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (1744, 7, 'sunday', 92577, 5339, 993);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5217, 6, 'monday', 92723, 4484, 311);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (4809, 6, 'monday', 98336, 6329, 581);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (4992, 6, 'tuesday', 44858, 5712, 472);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5971, 8, 'wednesday', 93293, 7497, 315);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (3159, 7, 'monday', 22658, 7222, 294);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (3869, 7, 'friday', 22186, 6499, 873);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (7337, 8, 'sunday', 42755, 9799, 279);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (6861, 4, 'friday', 75927, 7783, 913);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5922, 7, 'wednesday', 19756, 4928, 698);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (3434, 2, 'sunday', 62216, 3538, 585);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (4718, 2, 'tuesday', 16164, 8483, 361);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (7244, 3, 'wednesday', 28213, 2483, 167);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (4747, 2, 'sunday', 45113, 1226, 587);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (3395, 7, 'sunday', 15947, 5533, 295);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5497, 3, 'sunday', 82383, 8967, 249);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (7682, 4, 'sunday', 61932, 2376, 384);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (2254, 7, 'monday', 43299, 4899, 987);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (6477, 1, 'tuesday', 93813, 3987, 598);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (7877, 8, 'friday', 66289, 9513, 567);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (1598, 7, 'monday', 13342, 7928, 933);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (8625, 4, 'wednesday', 47574, 2449, 271);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (6165, 3, 'monday', 26384, 8248, 446);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (6226, 3, 'friday', 54251, 1173, 477);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (1519, 5, 'friday', 82144, 6162, 831);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (6582, 2, 'friday', 11834, 9495, 838);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (3335, 6, 'friday', 73156, 9961, 544);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5723, 2, 'monday', 88146, 6532, 323);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (1783, 3, 'monday', 31293, 8967, 247);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (4627, 8, 'friday', 97647, 2773, 966);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (1306, 8, 'thursday', 42833, 6473, 825);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (4149, 1, 'thursday', 46762, 6453, 744);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (8339, 6, 'sunday', 92229, 2794, 865);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (2592, 3, 'friday', 45636, 1115, 143);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (4339, 2, 'monday', 31141, 1711, 269);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (8596, 3, 'wednesday', 85878, 3613, 889);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (2431, 2, 'sunday', 18351, 1881, 366);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (9667, 8, 'thursday', 38167, 9959, 388);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (7418, 4, 'tuesday', 29377, 6162, 716);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5183, 6, 'thursday', 16497, 1781, 366);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (3968, 4, 'wednesday', 71721, 2872, 693);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (8909, 7, 'friday', 83193, 1926, 384);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (3917, 5, 'thursday', 54224, 2231, 451);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (2958, 3, 'thursday', 35647, 6672, 618);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (8964, 8, 'wednesday', 61634, 2733, 161);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (7144, 6, 'monday', 18597, 2629, 298);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (8617, 2, 'thursday', 15947, 9932, 755);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (8915, 4, 'thursday', 22658, 1634, 659);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (8806, 1, 'wednesday', 77497, 6727, 264);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (4661, 7, 'tuesday', 91385, 9495, 343);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (4723, 5, 'monday', 36815, 1926, 344);
commit;
prompt 400 records committed...
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5634, 3, 'friday', 95257, 4743, 667);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (1123, 4, 'tuesday', 39869, 6997, 857);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (6138, 6, 'friday', 42281, 8483, 958);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (5691, 1, 'wednesday', 92613, 9734, 169);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (2656, 7, 'sunday', 21696, 3613, 868);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (1318, 5, 'friday', 62614, 7716, 672);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (7263, 3, 'monday', 46795, 1315, 423);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (2447, 7, 'wednesday', 35249, 9796, 326);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (2791, 5, 'friday', 75171, 7783, 795);
insert into SCHEDULE (scheduleid, shour, sday, roomid, gradeid, teacherid)
values (7271, 2, 'friday', 74921, 6267, 328);
commit;
prompt 410 records loaded
prompt Loading STUDENT...
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('LilyGreene', 133, 777243, '62 Carlton Road', to_date('25-12-2015', 'dd-mm-yyyy'), 1998);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('WinonaBurmester', 511, 987594, '5 Samrand Road', to_date('08-07-2014', 'dd-mm-yyyy'), 7717);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('AlbertPlimpton', 449, 459968, '30 Borger Street', to_date('13-06-2012', 'dd-mm-yyyy'), 2178);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('TimGeldof', 465, 346858, '33 Stevens Drive', to_date('02-11-2015', 'dd-mm-yyyy'), 6499);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('SolomonNicholas', 144, 755218, '39 Isaac', to_date('10-10-2010', 'dd-mm-yyyy'), 3553);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('RosanneAndrews', 888, 827755, '53 Berenger Road', to_date('06-10-2015', 'dd-mm-yyyy'), 1535);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('MacWilson', 434, 914227, '4 Fambach Road', to_date('16-09-2014', 'dd-mm-yyyy'), 9495);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('JackBalin', 128, 161462, '88 Balin Road', to_date('10-08-2012', 'dd-mm-yyyy'), 7797);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('SandraMcCoy', 519, 943211, '927 Glen', to_date('14-07-2016', 'dd-mm-yyyy'), 9959);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('BonnieStanton', 568, 786587, '31 Affleck Drive', to_date('07-07-2015', 'dd-mm-yyyy'), 2735);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('EllenOldman', 883, 198546, '8 Neuch?tel Ave', to_date('03-12-2010', 'dd-mm-yyyy'), 3875);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('StevieEckhart', 183, 129428, '47 Tooele Drive', to_date('18-02-2011', 'dd-mm-yyyy'), 4373);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('NeilO''Donnell', 781, 978318, '407 Patrick Street', to_date('25-07-2016', 'dd-mm-yyyy'), 8298);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('DeniseOates', 545, 164813, '99 Shannon Street', to_date('13-05-2016', 'dd-mm-yyyy'), 8483);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('BradleyShandling', 971, 838647, '95 Rhymes Street', to_date('31-12-2017', 'dd-mm-yyyy'), 9139);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('GaryPurefoy', 956, 166684, '23rd Street', to_date('20-03-2016', 'dd-mm-yyyy'), 2351);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('DionneChung', 645, 698147, '39 Sylvian', to_date('28-04-2014', 'dd-mm-yyyy'), 4589);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('GabrielLi', 884, 145137, '95 Spacek Road', to_date('26-11-2010', 'dd-mm-yyyy'), 5888);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('AidanSingletary', 665, 733597, '32 Lauper Drive', to_date('21-11-2016', 'dd-mm-yyyy'), 1173);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('JaneMerchant', 451, 815217, '761 McCoy Drive', to_date('28-12-2011', 'dd-mm-yyyy'), 2581);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('JodieRyan', 459, 694948, '11 Everett Ave', to_date('27-09-2014', 'dd-mm-yyyy'), 4496);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('AustinFrancis', 225, 213291, '74 Princeton Drive', to_date('01-11-2011', 'dd-mm-yyyy'), 7767);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('AidanNegbaur', 517, 664252, '100 Brando', to_date('27-06-2017', 'dd-mm-yyyy'), 8248);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('ChetPhillips', 732, 863547, '32 Lang Drive', to_date('11-05-2012', 'dd-mm-yyyy'), 5777);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('WoodyGertner', 536, 117996, '972 Horizon', to_date('06-12-2012', 'dd-mm-yyyy'), 7838);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('EdHector', 224, 777184, '808 Molina Road', to_date('19-07-2012', 'dd-mm-yyyy'), 2643);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('DeborahStills', 137, 113689, '54 Van Der Beek Driv', to_date('16-11-2014', 'dd-mm-yyyy'), 7549);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('RascalMollard', 554, 124496, '90 Hamilton Ave', to_date('07-06-2013', 'dd-mm-yyyy'), 9653);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('RickCotton', 343, 562859, '76 Milpitas Drive', to_date('29-05-2016', 'dd-mm-yyyy'), 5238);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('SophieTyson', 516, 494845, '76 Buffalo Road', to_date('27-10-2012', 'dd-mm-yyyy'), 8386);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('LeeEstevez', 698, 241298, '23 Nick Ave', to_date('18-11-2016', 'dd-mm-yyyy'), 8928);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('AnnetteWarwick', 518, 234231, '81 Lewis Street', to_date('21-04-2014', 'dd-mm-yyyy'), 9668);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('EugeneDiFranco', 621, 933649, '16 Tampa Blvd', to_date('03-04-2011', 'dd-mm-yyyy'), 5646);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('DustinLowe', 551, 727714, '59 Bret Street', to_date('11-12-2013', 'dd-mm-yyyy'), 8637);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('CandiceCetera', 829, 531958, '79 Rose Ave', to_date('18-10-2011', 'dd-mm-yyyy'), 1969);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('EmmylouTeng', 954, 786971, '14 Itu Street', to_date('07-02-2014', 'dd-mm-yyyy'), 5543);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('RandallBriscoe', 553, 551815, '16 Danger Drive', to_date('24-06-2013', 'dd-mm-yyyy'), 7224);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('HazelDownie', 419, 565899, '20 Chapel hill Stree', to_date('05-02-2011', 'dd-mm-yyyy'), 1163);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('ElijahDel Toro', 456, 564162, '31 Sarandon', to_date('06-03-2017', 'dd-mm-yyyy'), 8988);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('GlenMcGregor', 935, 655173, '849 Merle Drive', to_date('08-12-2013', 'dd-mm-yyyy'), 6954);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('MarlonProwse', 417, 944471, '59 Max Street', to_date('13-03-2013', 'dd-mm-yyyy'), 5533);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('SelmaMcKennitt', 533, 352162, '23 Martha Street', to_date('24-02-2010', 'dd-mm-yyyy'), 6391);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('PeterVincent', 845, 296674, '75 Dom Street', to_date('17-02-2017', 'dd-mm-yyyy'), 2115);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('GoldieBello', 468, 557776, '196 Rebeka Street', to_date('07-04-2016', 'dd-mm-yyyy'), 6411);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('SalmaVoight', 889, 463443, '77 Hatchet', to_date('18-07-2015', 'dd-mm-yyyy'), 7717);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('RickieChan', 324, 948259, '44 Hoffman Blvd', to_date('06-10-2010', 'dd-mm-yyyy'), 3526);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('BrothersMcNeice', 561, 988519, '52 Crispin Street', to_date('15-04-2016', 'dd-mm-yyyy'), 7266);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('BoMcDonald', 663, 856589, '19 Solomon Street', to_date('21-03-2011', 'dd-mm-yyyy'), 8393);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('AidaMacht', 659, 685944, '97 Peebles Drive', to_date('28-01-2010', 'dd-mm-yyyy'), 3224);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('GinHead', 349, 748763, '89 Ratzenberger Stre', to_date('16-10-2011', 'dd-mm-yyyy'), 2629);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('LupeWarden', 755, 427288, '38 Snow Street', to_date('11-05-2010', 'dd-mm-yyyy'), 7618);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('ShirleyCrouse', 136, 379552, '67 Lila Drive', to_date('07-05-2016', 'dd-mm-yyyy'), 9653);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('PragaSpeaks', 496, 295942, '78 Ward Drive', to_date('25-01-2012', 'dd-mm-yyyy'), 4234);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('GinoKristofferson', 263, 623362, '12 Ward Street', to_date('10-04-2015', 'dd-mm-yyyy'), 6168);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('WinonaTomlin', 633, 297315, '77 Clayton Ave', to_date('08-03-2012', 'dd-mm-yyyy'), 9799);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('JohnGary', 762, 634629, '459 Brando Street', to_date('29-05-2011', 'dd-mm-yyyy'), 8669);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('JonAskew', 455, 117181, '53 Patrick Ave', to_date('16-01-2013', 'dd-mm-yyyy'), 3875);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('AdamLynn', 357, 868385, '92nd Street', to_date('21-02-2012', 'dd-mm-yyyy'), 8366);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('AliMyers', 178, 974263, '803 Woods Street', to_date('15-03-2015', 'dd-mm-yyyy'), 7984);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('JeffWeaver', 325, 657138, '72nd Street', to_date('26-03-2011', 'dd-mm-yyyy'), 9567);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('GeoffStrathairn', 973, 284544, '37 Cromwell Road', to_date('15-09-2011', 'dd-mm-yyyy'), 5339);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('JesusClarkson', 785, 256319, '633 Ricci Road', to_date('14-01-2011', 'dd-mm-yyyy'), 8526);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('RosarioNicholson', 152, 453186, '819 Orange Street', to_date('06-11-2010', 'dd-mm-yyyy'), 9112);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('JudyStigers', 372, 798648, '91 Unger Drive', to_date('06-02-2016', 'dd-mm-yyyy'), 3881);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('LeaBenet', 985, 587644, '32 Krieger Street', to_date('11-04-2013', 'dd-mm-yyyy'), 2581);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('WarrenKidman', 864, 578846, '98 Echirolles Street', to_date('11-03-2011', 'dd-mm-yyyy'), 9734);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('IvanReid', 661, 837824, '96 Emm Blvd', to_date('07-07-2011', 'dd-mm-yyyy'), 7222);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('CliffPlowright', 354, 539435, '386 Ronny Blvd', to_date('24-06-2017', 'dd-mm-yyyy'), 8329);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('LariHarmon', 116, 113661, '1 Cummings', to_date('04-03-2014', 'dd-mm-yyyy'), 1132);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('AntonioMac', 381, 598343, '61 Stuart Street', to_date('22-04-2016', 'dd-mm-yyyy'), 5646);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('FredNicholson', 867, 848385, '35 Burwood East Stre', to_date('08-06-2017', 'dd-mm-yyyy'), 6393);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('LeonDunn', 362, 683894, '43 Gilliam Drive', to_date('03-04-2013', 'dd-mm-yyyy'), 3538);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('LorettaClarkson', 598, 854189, '49 Durban Road', to_date('17-01-2011', 'dd-mm-yyyy'), 5712);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('JudeAtlas', 716, 269625, '97 Niven Blvd', to_date('30-06-2012', 'dd-mm-yyyy'), 3224);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('Ming-NaTambor', 179, 488995, '52nd Street', to_date('17-12-2016', 'dd-mm-yyyy'), 7875);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('MauraCalle', 239, 157499, '109 Uma Street', to_date('24-12-2017', 'dd-mm-yyyy'), 6162);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('OroGellar', 344, 468595, '66 Forrest', to_date('14-10-2014', 'dd-mm-yyyy'), 7224);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('MikoValentin', 524, 782571, '26 Suberg Street', to_date('15-12-2011', 'dd-mm-yyyy'), 5698);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('DonalElwes', 727, 241564, '127 Szazhalombatta B', to_date('23-01-2012', 'dd-mm-yyyy'), 7491);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('KevinDonelly', 879, 658961, '48 Whitmore Blvd', to_date('10-08-2014', 'dd-mm-yyyy'), 5165);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('StevenSevigny', 177, 495118, '28 Arquette Blvd', to_date('20-04-2010', 'dd-mm-yyyy'), 8522);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('BrendanKahn', 359, 285316, '28 Langella Road', to_date('25-08-2012', 'dd-mm-yyyy'), 4928);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('AdinaMcCready', 915, 581337, '156 Maryville Street', to_date('03-11-2014', 'dd-mm-yyyy'), 9668);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('TaylorStreep', 876, 415673, '44 Dardilly Ave', to_date('04-12-2015', 'dd-mm-yyyy'), 4496);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('DonalGriffiths', 831, 458851, '7 Busta', to_date('17-10-2011', 'dd-mm-yyyy'), 5238);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('TimothyDay', 193, 968167, '921 Sorvino Road', to_date('12-06-2013', 'dd-mm-yyyy'), 9513);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('TalvinGordon', 951, 951864, '94 Curry', to_date('13-12-2014', 'dd-mm-yyyy'), 8329);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('MadeleineCarlton', 693, 187596, '11 Byrd', to_date('31-07-2012', 'dd-mm-yyyy'), 9482);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('KaronMandrell', 717, 163178, '7 Breckin Street', to_date('27-01-2012', 'dd-mm-yyyy'), 2629);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('RichDiesel', 827, 676176, '37 Red Street', to_date('24-01-2012', 'dd-mm-yyyy'), 7652);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('RoddyNelligan', 662, 299461, '55 Allan Drive', to_date('22-02-2012', 'dd-mm-yyyy'), 1711);
insert into STUDENT (sname, studentid, contact, address, birthdate, gradeid)
values ('DylanBarry', 944, 661557, '5 Roberts Road', to_date('24-06-2013', 'dd-mm-yyyy'), 8967);
commit;
prompt 92 records loaded
prompt Loading STUDENTINCIRCLE...
prompt Table is empty
prompt Enabling foreign key constraints for CIRCLE...
alter table CIRCLE enable constraint SYS_C00710846;
prompt Enabling foreign key constraints for SCHEDULE...
alter table SCHEDULE enable constraint SYS_C00712320;
alter table SCHEDULE enable constraint SYS_C00712321;
alter table SCHEDULE enable constraint SYS_C00712322;
prompt Enabling foreign key constraints for STUDENT...
alter table STUDENT enable constraint SYS_C00710854;
prompt Enabling foreign key constraints for STUDENTINCIRCLE...
alter table STUDENTINCIRCLE enable constraint SYS_C00710858;
alter table STUDENTINCIRCLE enable constraint SYS_C00710859;
prompt Enabling triggers for ROOM...
alter table ROOM enable all triggers;
prompt Enabling triggers for CIRCLE...
alter table CIRCLE enable all triggers;
prompt Enabling triggers for GRADE...
alter table GRADE enable all triggers;
prompt Enabling triggers for TEACHER...
alter table TEACHER enable all triggers;
prompt Enabling triggers for SCHEDULE...
alter table SCHEDULE enable all triggers;
prompt Enabling triggers for STUDENT...
alter table STUDENT enable all triggers;
prompt Enabling triggers for STUDENTINCIRCLE...
alter table STUDENTINCIRCLE enable all triggers;

set feedback on
set define on
prompt Done
