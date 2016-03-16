@ECHO off

::============================================
:: \\\\\\\\\\\\\\   Variables   //////////////
::============================================
SET drive=c:\nettest
SET OutputFile=result.txt
SET tt=%time:~0,2%_%time:~3,2%_result.txt
SET folder=%date:/=-% %tt%
SET site1=10.5.13.15
SET site2=10.5.13.16
SET site3=10.5.13.18
SET site4=10.5.13.17
SET site5=10.5.13.14

::============================================
:: \\\\\\\\\\\\\\   Message   ////////////////
::============================================

COLOR 1F


ECHO ================================================
ECHO \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
ECHO ------------------------------------------------
ECHO. 
ECHO. 
ECHO. 
ECHO ------------------------------------------------
ECHO ////////////////////////////////////////////////
ECHO ================================================
ECHO. Ping all FactoryTalk Servers
ECHO.
PAUSE

GOTO FTView

::==================================================
:: \\\\\\\\\\\\\\   Pinging FTView  ////////////////
::==================================================
:FTView
ECHO ================================================
ECHO Ping FTView Server
ECHO.
PING -n 2 %site1% | find "Reply from"

::Check to see if ping was successful or unsuccesful
::successful = :found1
::unsuccessful = :nfound1
IF NOT ERRORLEVEL 1 GOTO found1
IF ERRORLEVEL 1 GOTO nfound1


::Check to see if folder exists
:found1
ECHO.
ECHO FTView found!
ECHO ================================================
ECHO.
GOTO FTBatch

:nfound1
ECHO.
ECHO ###FTView NOT FOUND!
ECHO ================================================
ECHO.
GOTO FTBatch


::========================================================
:: \\\\\\\\\\\\\\   Pinging FTBatch!  ////////////////
::========================================================
:FTBatch
ECHO ================================================
ECHO Ping FTBatch Server
ECHO.
PING -n 2 %site2% | find "Reply from"
IF NOT ERRORLEVEL 1 GOTO found2
IF ERRORLEVEL 1 GOTO nfound2

:found2
ECHO.
ECHO FTBatch found!
ECHO ================================================
ECHO.
GOTO FTHist

:nfound2
ECHO.
ECHO ###FTBatch NOT FOUND!
ECHO ================================================
ECHO.
GOTO FTHist


::========================================================
:: \\\\\\\\\\\\\\   Pinging FTHistorian!  ////////////////
::========================================================
:FTHist
ECHO ================================================
ECHO Ping FTHistorian Server
ECHO.
PING -n 2 %site3% | find "Reply from"
IF NOT ERRORLEVEL 1 GOTO found3
IF ERRORLEVEL 1 GOTO nfound3

:found3
ECHO.
ECHO FTHistorian found!
ECHO ================================================
ECHO.
GOTO FTViewTS

:nfound3
ECHO.
ECHO ###FTHistorian NOT FOUND!
ECHO ================================================
ECHO.
GOTO FTViewTS

::========================================================
:: \\\\\\\\\\\\\\   Pinging FTViewTS!  ////////////////
::========================================================
:FTViewTS
ECHO ================================================
ECHO Ping FTView Terminal Server
ECHO.
PING -n 2 %site4% | find "Reply from"
IF NOT ERRORLEVEL 1 GOTO found4
IF ERRORLEVEL 1 GOTO nfound4

:found4
ECHO.
ECHO FTView Terminal Server found!
ECHO ================================================
ECHO.
GOTO FTViewLic

:nfound4
ECHO.
ECHO ###FTView Terminal Server NOT FOUND!
ECHO ================================================
ECHO.
GOTO FTViewLic

::========================================================
:: \\\\\\\\\\\\\\   Pinging FTLicense!  ////////////////
::========================================================
:FTViewLic
ECHO ================================================
ECHO Ping FT License Server
ECHO.
PING -n 2 %site5% | find "Reply from"
IF NOT ERRORLEVEL 1 GOTO found5
IF ERRORLEVEL 1 GOTO nfound5

:found5
ECHO.
ECHO FT License Server found!
ECHO ================================================
ECHO.
GOTO Finished

:nfound5
ECHO.
ECHO ###FT License Server NOT FOUND!
ECHO ================================================
ECHO.
GOTO Finished


::=============================================================
:: \\\\\\\\\\\\\\   Server comm test finished  ////////////////
::=============================================================
:Finished
ECHO.
ECHO sever comm test completed!
ECHO.

@PAUSE

::========================================================================
:: \\\\\\\\\\\\\\   Created by Mindweaver @ Techpowerup!  ////////////////
::========================================================================