@echo off
Title "RDP Session Terminator"
cls
echo.
echo.
set /p IP= Server IP :
cls
echo.
echo.
set /p username= User Name [administrator] :
cls
echo.
echo.
set /p password= Password for %username% :
cls
echo.
echo.
net use \\%IP% /user:%username% %password%
qwinsta /server:%IP%
echo.
set /p sessionid= Type ID which you want to kill              :
rwinsta /server:%IP% %sessionid%
mstsc /v %IP%
pause