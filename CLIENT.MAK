# IBM Developer's Workframe/2 Make File Creation run at 15:38:51 on 04/09/93

# Make File Creation run in directory:
#   C:\WORK\DDE;

.SUFFIXES:

.SUFFIXES: .c .rc

ALL: CLIENT.EXE \
     CLIENT.RES

client.exe:  \
  CLIENT.OBJ \
  CLIENT.RES \
  CLIENT.MAK
   @REM @<<CLIENT.@0
     /CO /PM:PM +
     CLIENT.OBJ
     client.exe
     
     
     ;
<<
   LINK386.EXE @CLIENT.@0
   RC CLIENT.RES client.exe

{.}.rc.res:
   RC -r .\$*.RC

{.}.c.obj:
   ICC.EXE /Ss /Kbapxi /Ti /C .\$*.c

!include CLIENT.DEP
