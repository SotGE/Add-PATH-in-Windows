
rem Product: Add path in Windows
rem Version: 1.0

rem Developer: SotGE
rem Author: Maksim E. Sorokin
rem Site: https://sotge.ru

rem GitHub: https://github.com/SotGE/Add-path-in-Windows
rem LICENSE: https://github.com/SotGE/Add-PATH-in-Windows/blob/master/LICENSE

@echo off

SetLocal EnableExtensions EnableDelayedExpansion

chcp 65001 > nul
title Delete System variables And User variables
setlocal
cls

set _TITLE=Delete System variables And User variables

set _COLOR_CYAN=[36m
set _COLOR_RED=[31m
set _COLOR_GREEN=[32m

set _PATH=%~dp0
set _BACKUP_SYSTEM=DeleteSystem.txt
set _BACKUP_USER=DeleteUser.txt
set _FILE=Path.txt
set _KEY_SYSTEM="HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment"
set _KEY_USER="HKCU\Environment"

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

for /f "usebackq eol=# tokens=2,*" %%A in (`REG QUERY %_KEY_SYSTEM% /v PATH`) do (
	set _CURRENT_PATH_SYSTEM=%%B
)

echo.
echo COMMAND: System PATH Current
echo STATUS: %_COLOR_GREEN%%_CURRENT_PATH_SYSTEM%%_COLOR_CYAN%
echo.

for /f "usebackq eol=# tokens=2,*" %%A in (`REG QUERY %_KEY_USER% /v PATH`) do (
	set _CURRENT_PATH_USER=%%B
)

echo.
echo COMMAND: User PATH Current
echo STATUS: %_COLOR_GREEN%%_CURRENT_PATH_USER%%_COLOR_CYAN%
echo.

if exist "%_PATH%Backup" goto BACKUP_DIR
	mkdir "%_PATH%Backup"
:BACKUP_DIR

(
	for %%A in ("%_CURRENT_PATH_SYSTEM:;=" "%") do (
		echo(%%~A
	)
) > "%_PATH%Backup\%_BACKUP_SYSTEM%"

echo.
echo COMMAND: System Backup File (%_BACKUP_SYSTEM%)
echo STATUS: %_COLOR_GREEN%%_PATH%Backup\%_BACKUP_SYSTEM%%_COLOR_CYAN%
echo.

(
	for %%A in ("%_CURRENT_PATH_USER:;=" "%") do (
		echo(%%~A
	)
) > "%_PATH%Backup\%_BACKUP_USER%"

echo.
echo COMMAND: User Backup File (%_BACKUP_USER%)
echo STATUS: %_COLOR_GREEN%%_PATH%Backup\%_BACKUP_USER%%_COLOR_CYAN%
echo.

echo.
if exist "%_PATH%%_FILE%" goto FILE
	copy nul "%_PATH%%_FILE%"
:FILE

for /f "usebackq eol=# tokens=*" %%A in ("%_PATH%%_FILE%") do (
	set _MASS_SYSTEM=!_MASS_SYSTEM!%%A;
	
	echo.
	echo COMMAND: Variable PATH
	echo STATUS: %_COLOR_GREEN%%%A%_COLOR_CYAN%
	echo.
)

call setx /m path "%%_CURRENT_PATH_SYSTEM:%_MASS_SYSTEM%=%%"
echo.

for /f "usebackq eol=# tokens=2,*" %%A in (`REG QUERY %_KEY_SYSTEM% /v PATH`) do (
	set _CURRENT_PATH_SYSTEM_NEW=%%B
)

echo.
echo COMMAND: System PATH Update
echo STATUS: %_COLOR_GREEN%%_CURRENT_PATH_SYSTEM_NEW%%_COLOR_CYAN%
echo.

for /f "usebackq eol=# tokens=*" %%A in ("%_PATH%%_FILE%") do (
	set _MASS_USER=!_MASS_USER!%%A;
	
	echo.
	echo COMMAND: Variable PATH
	echo STATUS: %_COLOR_GREEN%%%A%_COLOR_CYAN%
	echo.
)

call setx path "%%_CURRENT_PATH_USER:%_MASS_USER%=%%"
echo.

for /f "usebackq eol=# tokens=2,*" %%A in (`REG QUERY %_KEY_USER% /v PATH`) do (
	set _CURRENT_PATH_USER_NEW=%%B
)

echo.
echo COMMAND: User PATH Update
echo STATUS: %_COLOR_GREEN%%_CURRENT_PATH_USER_NEW%%_COLOR_CYAN%
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
