@echo off
:prompt
set /p input=Please type "confirm" to proceed with START_ALL: 

if /i "%input%"=="confirm" (
    echo Confirmation received. Proceeding with START_ALL...
) else (
    echo Invalid input. Please type "confirm" to proceed with START_ALL.
    goto prompt
)

for /d %%d in (*) do (
    cd "%%d"
    start "" .\sm64coopdx.exe --savepath .
    cd..
)
