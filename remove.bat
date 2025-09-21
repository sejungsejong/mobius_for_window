@echo off
echo ===========Removing Mobius Docker containers============
echo.

REM Remove Docker containers
docker-compose rm -f
if %ERRORLEVEL% NEQ 0 (
    echo Failed to remove Docker containers
    exit /b 1
)

echo.
echo ===========Result of Mobius docker remove==============
docker-compose ps
echo ========================================================
echo.
echo Mobius Docker containers removed successfully!