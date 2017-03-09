@Echo Off
ECHO -
ECHO ::Input username to find last logon::
ECHO ::
ECHO ::Follow username with "/domain" for domain users
ECHO -
Set /P UName= Username:

net user %UName% | findstr /B /C:"Last logon"
pause
