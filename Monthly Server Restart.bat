##NV-18092020## Monthly restart runs on the LAST Thursday of month at 12:01AM (midnight)

@echo off
 REM The Monthly_Restart script carries out the following operations
 REM ======================================================================================
 REM 1 Reboot O/S
 REM 2. All of the operations are logged in C:\Maintenance\log.txt
 REM =======================================================================================
 REM
 echo.
 echo.
 echo *** Scheduled System Maintenance In Progress ***
 echo.
 date /t >> C:\Maintenance\log.txt
 time /t >> C:\Maintenance\log.txt
 echo >> C:\Maintenance\log.txt
 @echo off
 echo.
 echo Maintenance Complete
 echo.
 choice /t:3 /d y > nul
 shutdown /r /d p:4:2 /t 30 /c "Scheduled Systems Restart"