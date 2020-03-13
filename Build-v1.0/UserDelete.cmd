
rem Product: Add path in Windows
rem Version: 1.0

rem Developer: SotGE
rem Author: Maksim E. Sorokin
rem Site: https://sotge.ru

rem GitHub: https://github.com/SotGE/Add-path-in-Windows

@echo off

SetLocal EnableExtensions EnableDelayedExpansion

chcp 65001 > nul
title User variables Delete
setlocal
cls

set _TITLE=User variables Delete

set _COLOR_CYAN=[36m
set _COLOR_RED=[31m
set _COLOR_GREEN=[32m

set _PATH=%~dp0
set _BACKUP=UserDelete.txt
set _FILE=Path.txt
set _KEY="HKCU\Environment"

echo. %_COLOR_CYAN%
echo.
echo %_TITLE%
echo.

echo.
echo ---------------------------------
echo.

echo.
echo COMMAND: Path Folder
echo STATUS: %_COLOR_GREEN%%_PATH%%_COLOR_CYAN%
echo.

echo.
echo COMMAND: Path File (%_FILE%)
echo STATUS: %_COLOR_GREEN%%_PATH%%_FILE%%_COLOR_CYAN%
echo.

for /f "usebackq eol=# tokens=2,*" %%A in (`REG QUERY %_KEY% /v PATH`) do (
	set _CURRENT_PATH=%%B
)

echo.
echo COMMAND: User PATH Current
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
echo COMMAND: User Backup File (%_BACKUP%)
echo STATUS: %_COLOR_GREEN%%_PATH%Backup\%_BACKUP%%_COLOR_CYAN%
echo.

for /f "usebackq eol=# tokens=*" %%A in ("%_PATH%%_FILE%") do (
	set _MASS=!_MASS!%%A;
	
	echo.
	echo COMMAND: Variable PATH
	echo STATUS: %_COLOR_GREEN%%%A%_COLOR_CYAN%
	echo.
)

call setx path "%%_CURRENT_PATH:%_MASS%=%%"
echo.

for /f "usebackq eol=# tokens=2,*" %%A in (`REG QUERY %_KEY% /v PATH`) do (
	set _CURRENT_PATH_NEW=%%B
)

echo.
echo COMMAND: User PATH Update
echo STATUS: %_COLOR_GREEN%%_CURRENT_PATH_NEW%%_COLOR_CYAN%
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
