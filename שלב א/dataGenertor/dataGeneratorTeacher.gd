
[General]
Version=1

[Preferences]
Username=
Password=2715
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=RIVKASHI
Name=TEACHER
Count=1..400

[Record]
Name=TEACHERID
Type=NUMBER
Size=
Data=[111]
Master=

[Record]
Name=TNAME
Type=VARCHAR2
Size=20
Data=FirstName + LastName
Master=

[Record]
Name=SUBJECT
Type=VARCHAR2
Size=20
Data=List('math', 'torah', 'english','sport' ,'graamer', 'literature','history')
Master=

[Record]
Name=TBIRTHDATE
Type=DATE
Size=
Data=Random(01/01/1970, 01/01/2004)
Master=

