rem Разработчик: SotGE
rem Сайт: sotge.ru

@echo off
chcp 65001 > nul
title Переменные среды
setlocal
cls
set Cyan=[36m
set Red=[31m
set Green=[32m

SetLocal EnableExtensions EnableDelayedExpansion

SET _PATH=%~dp0
SET _BACKUP=SystemToUser.txt
SET _KEY="HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment"

FOR /F "usebackq tokens=2*" %%A IN (`REG QUERY %_KEY% /v PATH`) DO (
	SET _CURRENT_PATH=%%B
)

IF EXIST %_PATH%Backup GOTO BACKUP_DIR
	mkdir %_PATH%Backup
:BACKUP_DIR

(
	FOR %%A IN ("%_CURRENT_PATH:;=" "%") DO (
		ECHO(%%~A
	)
) > "%_PATH%Backup\%_BACKUP%"

SETX PATH "%_CURRENT_PATH%"
ECHO.

echo %Cyan%Переменные среды: %Green%Установлено%Cyan%
echo.
echo Для выхода нажмите любую клавишу.
pause >nul & cls & exit