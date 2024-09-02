@echo off
:prompt
set /p input=Please type "confirm" to proceed with STOP_ALL: 

if /i "%input%"=="confirm" (
    echo Confirmation received. Proceeding with STOP_ALL...
) else (
    echo Invalid input. Please type "confirm" to proceed with STOP_ALL.
    goto prompt
)

taskkill /F /IM sm64coopdx.exe
