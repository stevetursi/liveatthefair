@echo off
setlocal enabledelayedexpansion

set "FILE_PATH=C:\Documents on PC\Ricks Documents\NJTS\3 Days\2025\results.xml"
set "S3_URL=s3://com.njtrailseries.upload/results.xml"

:loop
echo [%date% %time%] Checking for %FILE_PATH%

if exist "%FILE_PATH%" (
    echo Uploading %FILE_PATH% to %S3_URL%...
    aws s3 cp "%FILE_PATH%" "%S3_URL%"
) else (
    echo File not found.
)

echo Waiting 45 seconds...
timeout /t 45 /nobreak >nul
goto loop

