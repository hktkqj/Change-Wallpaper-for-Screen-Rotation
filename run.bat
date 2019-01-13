@echo off
:start
test.ps1
timeout /t 1 /nobreak >nul
goto start