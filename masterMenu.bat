ECHO OFF
CLS
:MENU
ECHO.
ECHO ...............................................
ECHO PRESS 1, 2 OR 3 to select your task, or 4 to EXIT.
ECHO ...............................................
ECHO.
ECHO 1 - Open Ping by IP
ECHO 2 - Open Last Login
ECHO 3 - Open Disconnect Sessions
ECHO 4 - EXIT
ECHO.
SET /P M=Type 1, 2, 3, or 4 then press ENTER:
IF %M%==1 GOTO PING
IF %M%==2 GOTO LASTLOGIN
IF %M%==3 GOTO DISCONNECT
IF %M%==4 GOTO EOF

:PING
start %~dp0promptPing.bat

:LASTLOGIN
%~dp0promptPing.bat
GOTO MENU

:DISCONNECT
%~dp0promptPing.bat
GOTO MENU

:NOTE
cd %windir%\system32\notepad.exe
start notepad.exe
GOTO MENU
:CALC
cd %windir%\system32\calc.exe
start calc.exe
GOTO MENU
:BOTH
cd %windir%\system32\notepad.exe
start notepad.exe
cd %windir%\system32\calc.exe
start calc.exe
GOTO MENU