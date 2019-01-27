@ECHO OFF
title s3 Server
color 0a
  rem  Options list
echo ===================
echo Press "1"(ONE) to skip IP Configuration.
echo Press "3"(THREE) To check IP Configuration.
echo.
echo =============================================
echo.
echo  - 1 Skip to START
echo  - 3 Check IP, then START\
echo  - Exit
echo.
echo =============================================
set /p start= 1/3:
  rem set list options
if '%start%'=='1' goto load
if '%start%'=='start' goto load
if '%start%'=='3' goto loadip
if '%start%'=='Check' goto loadip
if '%start%'=='exit' goto exit
  rem execute listed options

:loadip
echo Use the current IP to connect to the Server:
echo The current IP will be under ipv4.
echo Current IP:
pause
ipconfig
echo Saved!
echo Exit Now.
pause >nul

:load
java -Xms2000M -Xmx2000M -jar server-start.jar nogui
echo Saved!
echo Exit Now.
pause >nul

:exit
exit
