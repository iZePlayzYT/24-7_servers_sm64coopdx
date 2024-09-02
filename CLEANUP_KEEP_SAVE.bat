@echo off
:prompt
set /p input=Please type "confirm" to proceed with CLEANUP_KEEP_SAVE: 

if /i "%input%"=="confirm" (
    echo Confirmation received. Proceeding with CLEANUP_KEEP_SAVE...
) else (
    echo Invalid input. Please type "confirm" to proceed with CLEANUP_KEEP_SAVE.
    goto prompt
)

:: Loop through each folder in the current directory
for /d %%D in (*) do (
    cd "%%D"
    
    if exist "mod.cache" del "mod.cache"
    if exist "lang" rmdir /s /q "lang"
    if exist "palettes" rmdir /s /q "palettes"
    if exist "baserom.us.z64" del "baserom.us.z64"
    if exist "coop.map" del "coop.map"
    if exist "discord_game_sdk.dll" del "discord_game_sdk.dll"
    if exist "sm64coopdx.exe" del "sm64coopdx.exe"
    
    cd..
)
