@echo off
set LOCALHOST=%COMPUTERNAME%
if /i "%LOCALHOST%"=="DESKTOP-8U7FQ8E" (taskkill /f /pid 12228)
if /i "%LOCALHOST%"=="DESKTOP-8U7FQ8E" (taskkill /f /pid 7596)

del /F cleanup-ansys-DESKTOP-8U7FQ8E-7596.bat
