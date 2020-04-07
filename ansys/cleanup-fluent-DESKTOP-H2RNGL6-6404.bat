echo off
set LOCALHOST=%COMPUTERNAME%
set KILL_CMD="C:\PROGRA~1\ANSYSI~1\v201\fluent/ntbin/win64/winkill.exe"

"C:\PROGRA~1\ANSYSI~1\v201\fluent\ntbin\win64\tell.exe" DESKTOP-H2RNGL6 50648 CLEANUP_EXITING
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (%KILL_CMD% 736) 
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (%KILL_CMD% 6404) 
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (%KILL_CMD% 1940)
del "C:\Users\Akash Levy\Documents\NEM-Relay-CAD\ansys\cleanup-fluent-DESKTOP-H2RNGL6-6404.bat"
