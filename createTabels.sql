CREATE TABLE Grade
(
  GradeId INT NOT NULL,
  GradeName varchar2(20) NOT NULL,
  StudentsNum INT NOT NULL,
  PRIMARY KEY (GradeId)
);

CREATE TABLE Room
(
  RoomId INT NOT NULL,
  Capacity INT NOT NULL,
  RoomName varchar2(20) NOT NULL,
  PRIMARY KEY (RoomId)
);

CREATE TABLE Teacher
(
  TeacherId INT NOT NULL,
  TName varchar2(20) NOT NULL,
  Subject varchar2(20) NOT NULL,
  TbirthDate DATE NOT NULL,
  PRIMARY KEY (TeacherId)
);

CREATE TABLE Schedule
(
  ScheduleId INT NOT NULL,
  Shour INT NOT NULL,
  Sday varchar2(20) NOT NULL,
  RoomId INT NOT NULL,
  GradeId INT NOT NULL,
  TeacherId INT NOT NULL,
  PRIMARY KEY (ScheduleId),
  FOREIGN KEY (RoomId) REFERENCES Room(RoomId),
  FOREIGN KEY (GradeId) REFERENCES Grade(GradeId),
  FOREIGN KEY (TeacherId) REFERENCES Teacher(TeacherId)
);

CREATE TABLE Circle
(
  CircleId INT NOT NULL,
  StudentNum INT NOT NULL,
  Guide varchar2(20) NOT NULL,
  RoomId INT NOT NULL,
  PRIMARY KEY (CircleId),
  FOREIGN KEY (RoomId) REFERENCES Room(RoomId)
);

CREATE TABLE Student
(
  Sname varchar2(20) NOT NULL,
  StudentId INT NOT NULL,
  Contact INT NOT NULL,
  Address varchar2(20) NOT NULL,
  BirthDate DATE NOT NULL,
  GradeId INT NOT NULL,
  PRIMARY KEY (StudentId),
  FOREIGN KEY (GradeId) REFERENCES Grade(GradeId)
);

CREATE TABLE StudentInCircle
(
  StudentId INT NOT NULL,
  CircleId INT NOT NULL,
  PRIMARY KEY (StudentId, CircleId),
  FOREIGN KEY (StudentId) REFERENCES Student(StudentId),
  FOREIGN KEY (CircleId) REFERENCES Circle(CircleId)
);
