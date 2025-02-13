@echo off
:: Save current resolution
for /f "tokens=2 delims==" %%a in ('wmic desktopmonitor get screenwidth /value ^| find "="') do set ORIGINAL_WIDTH=%%a
for /f "tokens=2 delims==" %%a in ('wmic desktopmonitor get screenheight /value ^| find "="') do set ORIGINAL_HEIGHT=%%a

:: Change resolution to your choice
QRes.exe /x 1600 /y 900

:: Path to your wuthering waves application , default path is "C:\Wuthering Waves\Wuthering Waves Game\Wuthering Waves.exe"
start "" "D:\GAMES\Wuthering Waves\Wuthering Waves Game\Wuthering Waves.exe"

:: Wait for the application to close
:WAIT
tasklist | find /i "Client-Win64-Shipping.exe" >nul
if errorlevel 1 (
    goto REVERT
) else (
    timeout /t 1 >nul
    goto WAIT
)

:: Revert to original resolution
:REVERT
QRes.exe /x %ORIGINAL_WIDTH% /y %ORIGINAL_HEIGHT%
exit
