@echo off
set LOCALHOST=%COMPUTERNAME%
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (taskkill /f /pid 5488)
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (taskkill /f /pid 9564)

del /F cleanup-ansys-DESKTOP-H2RNGL6-9564.bat
