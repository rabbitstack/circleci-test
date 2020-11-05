@echo off
SetLocal EnableDelayedExpansion

if "%~1"=="build" goto build
if "%~1"=="test" goto test
if "%~1"=="lint" goto lint
if "%~1"=="fmt" goto fmt
if "%~1"=="clean" goto clean

:build
go build -o main.exe main.go
goto :EOF
