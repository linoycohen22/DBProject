
[General]
Version=1

[Preferences]
Username=
Password=2862
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=RIVKASHI
Name=ROOM
Count=1..400

[Record]
Name=ROOMID
Type=NUMBER
Size=
Data=[11111]
Master=

[Record]
Name=CAPACITY
Type=NUMBER
Size=
Data=Random(20, 50)
Master=

[Record]
Name=ROOMNAME
Type=VARCHAR2
Size=20
Data=City
Master=

