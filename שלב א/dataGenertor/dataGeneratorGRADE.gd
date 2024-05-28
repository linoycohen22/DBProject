
[General]
Version=1

[Preferences]
Username=
Password=2340
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=RIVKASHI
Name=GRADE
Count=1..400

[Record]
Name=GRADEID
Type=NUMBER
Size=
Data=[1111]
Master=

[Record]
Name=GRADENAME
Type=VARCHAR2
Size=20
Data=List('A', 'B','C','D','E','F','G','H') +  + Random(1, 8)
Master=

[Record]
Name=STUDENTSNUM
Type=NUMBER
Size=
Data=Random(10, 40)
Master=

