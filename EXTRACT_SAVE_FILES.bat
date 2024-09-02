@echo off
setlocal enabledelayedexpansion

:prompt
set /p input=Please type "confirm" to proceed with EXTRACT_SAVE_FILES: 

if /i "%input%"=="confirm" (
    echo Confirmation received. Proceeding with EXTRACT_SAVE_FILES...
) else (
    echo Invalid input. Please type "confirm" to proceed with EXTRACT_SAVE_FILES.
    goto prompt
)

:: Initialize the counter
set folder_counter=1

:check_folder
set save_folder=SAVE_FILES_%folder_counter%

if exist "%save_folder%" (
    set /a folder_counter+=1
    goto check_folder
)

mkdir "%save_folder%"

:: Loop through each folder in the current directory
for /d %%D in (*) do (
    if not "%%~nxD"=="%save_folder%" (
        if exist "%%D\sav" (
            mkdir "%save_folder%\%%D\sav"
            xcopy /e /i "%%D\sav" "%save_folder%\%%D\sav"
        )
        if exist "%%D\sm64_save_file.bin" (
            if not exist "%save_folder%\%%D\" mkdir "%save_folder%\%%D"
            copy "%%D\sm64_save_file.bin" "%save_folder%\%%D\sm64_save_file.bin"
        )
    )
)

echo All save files and folders have been successfully extracted to %save_folder%.
endlocal
