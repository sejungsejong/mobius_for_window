@echo off
echo ===========Stopping Mobius Docker containers============
echo.

REM Stop Docker containers
docker-compose stop
if %ERRORLEVEL% NEQ 0 (
    echo Failed to stop Docker containers
    exit /b 1
)

echo.
echo ===========Result of Mobius docker stop==============
docker-compose ps
echo ========================================================
echo.
echo Mobius Docker containers stopped successfully!