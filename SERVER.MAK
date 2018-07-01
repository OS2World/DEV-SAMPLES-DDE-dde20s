# IBM Developer's Workframe/2 Make File Creation run at 15:39:39 on 04/09/93

# Make File Creation run in directory:
#   C:\WORK\DDE;

.SUFFIXES:

.SUFFIXES: .c

server.exe:  \
  SERVER.OBJ \
  SERVER.MAK
   @REM @<<SERVER.@0
     /CO /PM:PM +
     SERVER.OBJ
     server.exe
     
     
     ;
<<
   LINK386.EXE @SERVER.@0

{.}.c.obj:
   ICC.EXE /Ss /Ti /W2 /C .\$*.c

!include SERVER.DEP
