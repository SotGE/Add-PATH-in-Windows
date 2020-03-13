
rem Product: Add path in Windows
rem Version: 1.0

rem Developer: SotGE
rem Author: Maksim E. Sorokin
rem Site: https://sotge.ru

rem GitHub: https://github.com/SotGE/Add-path-in-Windows

@echo off
chcp 65001 > nul
title Переменные среды
setlocal
cls
set Cyan=[36m
set Red=[31m
set Green=[32m

SetLocal EnableExtensions EnableDelayedExpansion

set _PATH=%~dp0
set _BACKUP=System.txt
set _FILE=Path.txt
set _KEY="HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment"

for /F "usebackq tokens=2*" %%A in (`REG QUERY %_KEY% /v path`) do (
	set _CURRENT_PATH=%%B
)

if exist %_PATH%Backup goto BACKUP_DIR
	mkdir %_PATH%Backup
:BACKUP_DIR

(
	for %%A in ("%_CURRENT_PATH:;=" "%") do (
		echo(%%~A
	)
) > "%_PATH%Backup\%_BACKUP%"

echo %Cyan%Файл: %Green%%_PATH%%_FILE%%Cyan%
echo.

for /F "eol=# tokens=*" %%A in (%_PATH%%_FILE%) do (
	set _MASS=!_MASS!%%A;
	@echo %Cyan%Переменная: %Green%%%A%Cyan%
)

setx path "%_CURRENT_PATH%";%_MASS% /M
echo.

echo %Cyan%Переменные среды: %Green%Установлено%Cyan%
echo.
echo Для выхода нажмите любую клавишу.
pause >nul & cls & exit
