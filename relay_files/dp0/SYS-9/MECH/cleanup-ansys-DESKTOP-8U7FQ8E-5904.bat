@echo off
set LOCALHOST=%COMPUTERNAME%
if /i "%LOCALHOST%"=="DESKTOP-8U7FQ8E" (taskkill /f /pid 12392)
if /i "%LOCALHOST%"=="DESKTOP-8U7FQ8E" (taskkill /f /pid 5904)

del /F cleanup-ansys-DESKTOP-8U7FQ8E-5904.bat
