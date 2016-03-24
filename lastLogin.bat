@Echo Off
ECHO -
ECHO Input Username to find last logon
ECHO -
Set /P UName= Username:

net user %UName% | findstr /B /C:"Last logon"
pause
