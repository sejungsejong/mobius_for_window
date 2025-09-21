@echo off
echo ===========Starting Mobius Docker containers============
echo.

REM Check if Docker is running
docker version >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo Docker is not running. Please start Docker Desktop first.
    exit /b 1
)

REM Start Docker containers (create if not exists)
docker-compose up -d
if %ERRORLEVEL% NEQ 0 (
    echo Failed to start Docker containers
    exit /b 1
)

echo.
echo ===========Result of Mobius docker start==============
docker-compose ps
echo ========================================================
echo.
echo Mobius Docker containers started successfully!
echo Mobius API is available at: http://localhost:7579
echo MQTT broker is available at: localhost:1883
echo MySQL database is available at: localhost:3306