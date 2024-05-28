
[General]
Version=1

[Preferences]
Username=
Password=2618
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=RIVKASHI
Name=CIRCLE
Count=1..400

[Record]
Name=CIRCLEID
Type=NUMBER
Size=
Data=[11111]
Master=

[Record]
Name=STUDENTNUM
Type=NUMBER
Size=
Data=Random(20, 70)
Master=

[Record]
Name=GUIDE
Type=VARCHAR2
Size=20
Data=FirstName + LastName
Master=

[Record]
Name=ROOMID
Type=NUMBER
Size=
Data=List(select roomId from room)
Master=

