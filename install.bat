@echo off
echo ===========Installing Mobius Docker for Windows============
echo.

REM Check if Docker is installed
where docker >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo Docker is not installed. Please install Docker Desktop for Windows first.
    echo You can download it from: https://www.docker.com/products/docker-desktop
    exit /b 1
)

REM Check if Git is installed
where git >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo Git is not installed. Please install Git for Windows first.
    echo You can download it from: https://git-scm.com/download/win
    exit /b 1
)

REM Check if Node.js is installed
where node >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo Node.js is not installed. Please install Node.js first.
    echo You can download it from: https://nodejs.org/
    exit /b 1
)

REM Clone Mobius repository if not exists
if not exist Mobius (
    echo Cloning Mobius repository...
    git clone https://github.com/IoTKETI/Mobius.git
    if %ERRORLEVEL% NEQ 0 (
        echo Failed to clone Mobius repository
        exit /b 1
    )
)

REM Install npm dependencies
echo Installing npm dependencies...
cd Mobius
call npm install
if %ERRORLEVEL% NEQ 0 (
    echo Failed to install npm dependencies
    cd ..
    exit /b 1
)
cd ..

REM Build Docker images without starting
echo Building Docker images...
docker-compose up --no-start
if %ERRORLEVEL% NEQ 0 (
    echo Failed to build Docker images
    exit /b 1
)

echo.
echo ===========Result of Mobius docker install==============
docker-compose ps
echo ========================================================
echo.
echo Installation completed successfully!
echo Run "run.bat" to start the Mobius Docker containers.