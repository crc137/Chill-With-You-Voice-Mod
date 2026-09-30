@echo off
setlocal enabledelayedexpansion
title Chill with You : Lo-Fi Story - Russian voice mod installer

set "BUNDLE=voice_assets_all_32450596a5b4118c119776add9782a1f.bundle"
set "HERE=%~dp0"

if "%~1"=="" (
  set "GAME="
) else (
  set "GAME=%~1"
)

if not defined GAME (
  if exist "C:\Program Files (x86)\Steam\steamapps\common\Chill with You Lo-Fi Story" (
    set "GAME=C:\Program Files (x86)\Steam\steamapps\common\Chill with You Lo-Fi Story"
  ) else if exist "C:\Program Files\Steam\steamapps\common\Chill with You Lo-Fi Story" (
    set "GAME=C:\Program Files\Steam\steamapps\common\Chill with You Lo-Fi Story"
  ) else if defined STEAMPATH (
    if exist "!STEAMPATH!\steamapps\common\Chill with You Lo-Fi Story" (
      set "GAME=!STEAMPATH!\steamapps\common\Chill with You Lo-Fi Story"
    )
  )
)

if not defined GAME (
  echo.
  echo   Could not find the game folder.
  echo   Drag this folder onto install.bat, or run:
  echo     install.bat "C:\...\Steam\steamapps\common\Chill with You Lo-Fi Story"
  echo.
  pause
  exit /b 1
)

set "AA=!GAME!\Chill With You_Data\StreamingAssets\aa"

if not exist "!AA!" (
  echo   ERROR: !AA! not found
  pause
  exit /b 1
)

if not exist "!HERE!%BUNDLE%" (
  echo   ERROR: %BUNDLE% missing next to this script
  pause
  exit /b 1
)

if not exist "!HERE!catalog.json" (
  echo   ERROR: catalog.json missing next to this script
  pause
  exit /b 1
)

if not exist "!AA!\StandaloneWindows64\!BUNDLE!.modbak" (
  copy /y "!AA!\StandaloneWindows64\!BUNDLE!" "!AA!\StandaloneWindows64\!BUNDLE!.modbak" >nul
)
if not exist "!AA!\catalog.json.modbak" (
  copy /y "!AA!\catalog.json" "!AA!\catalog.json.modbak" >nul
)

copy /y "!HERE!%BUNDLE%" "!AA!\StandaloneWindows64\!BUNDLE!" >nul || goto :fail
copy /y "!HERE!catalog.json" "!AA!\catalog.json" >nul || goto :fail

echo.
echo   Installed into !GAME!
echo.
echo   Uninstall: drag the game folder onto uninstall.bat
echo.
pause
exit /b 0

:fail
echo.
echo   ERROR: copy failed, check permissions
echo.
pause
exit /b 1