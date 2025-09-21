@echo off
echo.
echo ===========Retrieve CSE resource from Mobius docker============
echo.

REM Test Mobius API using curl
curl -X GET "http://localhost:7579/Mobius?rcn=1" -H "Accept: application/json" -H "X-M2M-Origin: SOrigin" -H "X-M2M-RI: 12345"

if %ERRORLEVEL% NEQ 0 (
    echo.
    echo Failed to retrieve CSE resource. Make sure:
    echo 1. Mobius Docker containers are running (run status.bat)
    echo 2. The API is accessible at http://localhost:7579
    exit /b 1
)

echo.
echo ========================================================
echo.