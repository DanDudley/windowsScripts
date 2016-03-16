@Echo Off
Set /P UName= Username:

net user %UName% | findstr /B /C:"Last logon"
pause