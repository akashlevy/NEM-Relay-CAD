echo off
set LOCALHOST=%COMPUTERNAME%
set KILL_CMD="C:\PROGRA~1\ANSYSI~1\v201\fluent/ntbin/win64/winkill.exe"

"C:\PROGRA~1\ANSYSI~1\v201\fluent\ntbin\win64\tell.exe" DESKTOP-H2RNGL6 54215 CLEANUP_EXITING
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (%KILL_CMD% 4512) 
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (%KILL_CMD% 2792) 
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (%KILL_CMD% 10024)
del "C:\Users\Akash Levy\Documents\NEM-Relay-CAD\ansys\cleanup-fluent-DESKTOP-H2RNGL6-2792.bat"
