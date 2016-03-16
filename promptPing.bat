@echo off
set /p a="Enter IP Address or Name: "
ping %a% -n 2 > nul
IF %ERRORLEVEL% EQU 0 echo Ping to %a% successful
IF ERRORLEVEL 1 echo Ping to %a% failed
pause