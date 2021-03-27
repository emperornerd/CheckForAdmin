@echo off
REM cd /D "%~dp0"
goto check_Permissions

:check_Permissions
 echo Administrative permissions required. Detecting permissions...

 net session >nul 2>&1
 if %errorLevel% == 0 (
 echo Success: Administrative permissions confirmed.
 pause
 ) else (
 echo Failure: Current permissions inadequate.
 echo Please restart with administrative permissions
 pause
 exit
 )