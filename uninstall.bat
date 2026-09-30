@echo off
setlocal enabledelayedexpansion
title Chill with You : Lo-Fi Story - Russian voice mod uninstaller

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
  echo   Drag the game folder onto this file, or run:
  echo     uninstall.bat "C:\...\Steam\steamapps\common\Chill with You Lo-Fi Story"
  echo.
  pause
  exit /b 1
)

set "AA=!GAME!\Chill With You_Data\StreamingAssets\aa"

if exist "!AA!\catalog.json.modbak" (
  copy /y "!AA!\catalog.json.modbak" "!AA!\catalog.json" >nul
  echo   catalog.json restored
) else (
  echo   no catalog.json.modbak, leaving it as is
)

if exist "!AA!\StandaloneWindows64\!BUNDLE!.modbak" (
  copy /y "!AA!\StandaloneWindows64\!BUNDLE!.modbak" "!AA!\StandaloneWindows64\!BUNDLE!" >nul
  echo   original bundle restored
) else (
  echo   no bundle backup - use Steam ^> Verify integrity to restore it
)

echo.
echo   Done. The Japanese voice is back.
echo.
pause
exit /b 0