@echo off
echo ===========Showing Mobius Docker containers logs============
echo.

REM Show Docker containers logs
docker-compose logs
if %ERRORLEVEL% NEQ 0 (
    echo Failed to show Docker containers logs
    exit /b 1
)

echo.
echo ========================================================