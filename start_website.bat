@echo off
title Dental Hub Local Server
echo Starting Dental Hub Website on localhost:8080...
echo.
start http://localhost:8080/
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0server.ps1" -Port 8080
pause
