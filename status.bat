@echo off
echo ===========Checking Mobius Docker containers status============
echo.

REM Check Docker containers status
docker-compose ps
if %ERRORLEVEL% NEQ 0 (
    echo Failed to check Docker containers status
    exit /b 1
)

echo.
echo ========================================================