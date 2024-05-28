
[General]
Version=1

[Preferences]
Username=
Password=2417
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=RIVKASHI
Name=STUDENT
Count=1..400

[Record]
Name=SNAME
Type=VARCHAR2
Size=20
Data=FirstName + LastName
Master=

[Record]
Name=STUDENTID
Type=NUMBER
Size=
Data=[111]
Master=

[Record]
Name=CONTACT
Type=NUMBER
Size=
Data=[111111]
Master=

[Record]
Name=ADDRESS
Type=VARCHAR2
Size=20
Data=Address1
Master=

[Record]
Name=BIRTHDATE
Type=DATE
Size=
Data=Random(01/01/2010, 01/01/2018)
Master=

[Record]
Name=GRADEID
Type=NUMBER
Size=
Data=List(select GRADEID from GRAGE)
Master=

