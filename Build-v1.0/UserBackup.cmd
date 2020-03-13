
rem Product: Add path in Windows
rem Version: 1.0

rem Developer: SotGE
rem Author: Maksim E. Sorokin
rem Site: https://sotge.ru

rem GitHub: https://github.com/SotGE/Add-path-in-Windows

@echo off

SetLocal EnableExtensions EnableDelayedExpansion

chcp 65001 > nul
title User variables Backup
setlocal
cls

set _TITLE=User variables Backup

set _COLOR_CYAN=[36m
set _COLOR_RED=[31m
set _COLOR_GREEN=[32m

set _PATH=%~dp0
set _BACKUP=UserBackup.txt
set _KEY="HKCU\Environment"

echo. %_COLOR_CYAN%
echo.
echo %_TITLE%
echo.

echo.
echo ---------------------------------
echo.

echo.
echo COMMAND: Path folder
echo STATUS: %_COLOR_GREEN%%_PATH%%_COLOR_CYAN%
echo.

for /f "usebackq eol=# tokens=2,*" %%A in (`REG QUERY %_KEY% /v PATH`) do (
	set _CURRENT_PATH=%%B
)

echo.
echo COMMAND: PATH Current
echo STATUS: %_COLOR_GREEN%%_CURRENT_PATH%%_COLOR_CYAN%
echo.

if exist "%_PATH%Backup" goto BACKUP_DIR
	mkdir "%_PATH%Backup"
:BACKUP_DIR

(
	for %%A in ("%_CURRENT_PATH:;=" "%") do (
		echo(%%~A
	)
) > "%_PATH%Backup\%_BACKUP%"

echo.
echo COMMAND: Backup file (%_BACKUP%)
echo STATUS: %_COLOR_GREEN%%_PATH%Backup\%_BACKUP%%_COLOR_CYAN%
echo.

echo.
echo COMMAND: %_TITLE%
echo STATUS: %_COLOR_GREEN%Installed%_COLOR_CYAN%
echo.

echo.
echo ---------------------------------
echo.

echo.
echo Press any key to exit.
echo.

pause >nul & cls & exit
