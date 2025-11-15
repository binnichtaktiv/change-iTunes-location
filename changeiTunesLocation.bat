@echo off
set target=%1

if "%target%"=="" (
    set /p target=enter new iTunes backup path:
)

set itunes="%appdata%\apple computer\mobilesync\backup"

rmdir %itunes% /s /q 2>nul
mkdir "%target%" 2>nul
mklink /j %itunes% "%target%"

echo done
pause
