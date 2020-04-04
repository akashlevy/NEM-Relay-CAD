@echo off
set LOCALHOST=%COMPUTERNAME%
if /i "%LOCALHOST%"=="DESKTOP-8U7FQ8E" (taskkill /f /pid 8564)
if /i "%LOCALHOST%"=="DESKTOP-8U7FQ8E" (taskkill /f /pid 4872)

del /F cleanup-ansys-DESKTOP-8U7FQ8E-4872.bat
