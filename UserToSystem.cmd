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

setx /M path "%path%"

echo %Cyan%Переменные среды: %Green%Установлено%Cyan%
echo.
echo Для выхода нажмите любую клавишу.
pause >nul & cls & exit