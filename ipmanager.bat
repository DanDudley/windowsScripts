@ECHO OFF
color A
cls
title IPv4 Address Config Tool [Your Equipment Name Here]
@echo ********************************************
@echo ********************************************
@echo IPv4 Address Config Tool [Your Equipment Name Here]
@echo ********************************************
@echo ********************************************
@echo.
@echo 
@echo.
:home
@echo.
@echo.
@echo.
@echo.
@echo SELECT AN OPTION
@echo ==================
@echo.
@echo 1) Wifi (BGI16F) to 192.168.160.225
@echo 2) Ping STATION PLC @ 192.168.1.229
@echo 3) Ping STATION HMI @ 192.168.1.230
@echo 4) Ping STATION Cam 1 @ 192.168.1.231
@echo 5) Ping BOOTH PLC @ 192.168.1.232
@echo 6) Ping BOOTH HMI @ 192.168.1.233
@echo 7) Wireless to DHCP
@echo 8) Exit
@echo.
set /p web=Type option and hit enter:
if "%web%"=="1" goto :BGI16F
if "%web%"=="2" goto :PLCSTATION
if "%web%"=="3" goto :HMISTATION
if "%web%"=="4" goto :CAM1STATION
if "%web%"=="5" goto :PLCBOOTH
if "%web%"=="6" goto :HMIBOOTH
if "%web%"=="7" goto :WirelessDHCP
if "%web%"=="8" goto :EOF
:BGI16F
@echo Network Adapter: Wireless Network Connection
@echo.
@echo IPv4 will be changed to 192.168.160.225
@echo.
@echo Default Gateway will be changed to 255.255.255.0
@echo.
@pause
cls
netsh interface ip set address "Wireless Network Connection" static 192.168.160.225 255.255.255.0
@echo IPv4 and Defualt gateway changed Successfully!
@echo.
@echo.
@echo.
@echo.
@echo.
@pause
cls
goto :home
:PLCSTATION
cls
@echo.
@echo.
@echo PINGING PLC @ STATION
@echo.
ping 192.168.1.229
@echo.
@pause
cls
goto :home
:HMISTATION
cls
@echo.
@echo.
@echo PINGING HMI @ STATION
@echo.
ping 192.168.1.230
@echo.
@pause
cls
goto :home
:CAM1STATION
cls
@echo.
@echo PINGING CAM 1 @ STATION
@echo.
ping 192.168.1.231
@echo.
@pause
cls
goto :home
:PLCBOOTH
cls
@echo.
@echo.
@echo PINGING PLC @ STATION
@echo.
ping 192.168.1.232
@echo.
@pause
cls
goto :home
:HMIBOOTH
cls
@echo.
@echo.
@echo PINGING HMI @ BOOTH
@echo.
ping 192.168.1.233
@echo.
@pause
cls
goto :home
:WirelessDHCP
@echo Network Adapter: Wireless Network Connection
@echo.
@echo IPv4 will be changed to DHCP
@echo.
@pause
cls
netsh interface ip set address "Wireless Network Connection" dhcp
@echo IPv4 and Defualt gateway changed Successfully!
@echo.
@echo.
@echo.
@echo.
@echo.
@pause
cls