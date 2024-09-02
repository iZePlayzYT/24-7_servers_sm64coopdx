@echo off
:prompt
set /p input=Please type "confirm" to proceed with START_ALL: 

if /i "%input%"=="confirm" (
    echo Confirmation received. Proceeding with START_ALL...
) else (
    echo Invalid input. Please type "confirm" to proceed with START_ALL.
    goto prompt
)

cd 1_vanilla_A
start "" .\sm64coopdx.exe --savepath .
cd..

cd 2_star-road_A
start "" .\sm64coopdx.exe --savepath .
cd..

cd 3_sm74
start "" .\sm64coopdx.exe --savepath .
cd..

cd 4_sr7.5-coop-port
start "" .\sm64coopdx.exe --savepath .
cd..

cd 5_dreamscape
start "" .\sm64coopdx.exe --savepath .
cd..

cd 6_shining_stars
start "" .\sm64coopdx.exe --savepath .
cd..

cd 7_sm74tya_sd
start "" .\sm64coopdx.exe --savepath .
cd..

cd 8_star_revenge_1.5
start "" .\sm64coopdx.exe --savepath .
cd..

cd 9_treasure_world
start "" .\sm64coopdx.exe --savepath .
cd..

cd 10_mushroom_cup
start "" .\sm64coopdx.exe --savepath .
cd..

cd 11_eureka
start "" .\sm64coopdx.exe --savepath .
cd..

cd 12_galactic_journey
start "" .\sm64coopdx.exe --savepath .
cd..

cd 13_vanilla_B
start "" .\sm64coopdx.exe --savepath .
cd..

cd 14_vanilla_C
start "" .\sm64coopdx.exe --savepath .
cd..

cd 15_vanilla_D
start "" .\sm64coopdx.exe --savepath .
cd..

cd 16_star-road_B
start "" .\sm64coopdx.exe --savepath .
cd..
