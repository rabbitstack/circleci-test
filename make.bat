@echo off
SetLocal EnableDelayedExpansion

if "%~1"=="build" goto build
if "%~1"=="test" goto test
if "%~1"=="lint" goto lint
if "%~1"=="fmt" goto fmt
if "%~1"=="pkg" goto pkg
if "%~1"=="clean" goto clean

:build
go build -ldflags "-s -w -X main.version=%VERSION% -X main.commit=%CIRCLE_SHA1%" -o main.exe main.go
goto :EOF

:pkg
echo Downloading python...
powershell -Command "$progressPreference = 'silentlyContinue'; Invoke-WebRequest https://www.python.org/ftp/python/3.9.0/python-3.9.0-embed-amd64.zip -OutFile c:\python.zip"
goto :EOF
