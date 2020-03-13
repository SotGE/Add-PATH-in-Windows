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
SET _BACKUP=UserBackup.txt
SET _FILE=Path.txt
SET _KEY="HKCU\Environment"

FOR /F "usebackq tokens=2*" %%A IN (`REG QUERY %_KEY% /v PATH`) DO (
	SET CurrPath=%%B
)

(
	FOR %%A IN ("%CurrPath:;=" "%") DO (
		ECHO(%%~A
	)
) > "%_PATH%%_BACKUP%"

ECHO %Cyan%Файл: %Green%%_PATH%%_FILE%%Cyan%
ECHO.

FOR /F "eol=# tokens=*" %%A IN (%_PATH%%_FILE%) DO (
	SET _MASS=!_MASS!%%A;
	@ECHO %Cyan%Переменная: %Green%%%A%Cyan%
)

SETX PATH "%CurrPath%";%_MASS%
ECHO.

echo %Cyan%Переменные среды: %Green%Установлено%Cyan%
echo.
echo Для выхода нажмите любую клавишу.
pause >nul & cls & exit