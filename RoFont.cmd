:: !! THE SOURCE IS ALSO IN THE .ZIP, IF YOU'RE GONNA USE THIS PLEASE REFER TO THE .ZIP OR IT WON'T WORK !!

@echo off
cls
title Kiwi's Roblox Font Changer (RoFont)
color 3
echo Locating Roblox...
:: Bloxstrap
for /d %%i in ("%localappdata%\Bloxstrap\*") do (
if exist "%%i\ClientSettings" (
    set rbxfolder=%%i\content
    goto Main
) else (
    echo Roblox not found in Bloxstrap.
)
)


:: Local AppData
for /d %%i in ("%localappdata%\Roblox\Versions\*") do (
if exist "%%i\RobloxPlayerBeta.exe" (
    set rbxfolder=%%i\content
    goto Main
) else (
    echo Roblox not found in AppData.
)
)

:: Program Files
for /d %%i in ("C:\Program Files\Roblox\Versions\*") do (
if exist "%%i\RobloxPlayerBeta.exe" (
    set rbxfolder=%%i\content
    goto Main
) else (
    echo Roblox not found in Program Files.
)
)

:: Program Files (x86)
for /d %%i in ("C:\Program Files (x86)\Roblox\Versions\*") do (
if exist "%%i\RobloxPlayerBeta.exe" (
    set rbxfolder=%%i\content
    goto Main
) else (
    echo Roblox not found in Program Files (x86).
)
) else (
    cls
    echo Roblox was not found installed. Make sure you have Roblox installed before using RCO. (roblox.com/download)
    pause
    goto exit
)

:Main
cls
echo.
echo ^| ------------------------------------------------------ ^|
echo ^|                 / discord.gg/CZUfHYHtZr \              ^|
echo ^|--------------------------------------------------------^|
echo.^|                                                        ^|
echo ^|  888888ba            88888888b                     dP  ^|
echo ^|  88    `8b           88                            88  ^|
echo ^| a88aaaa8P' .d8888b. a88aaaa    .d8888b. 88d888b. d8888P^|
echo ^|  88   `8b. 88'  `88  88        88'  `88 88'  `88   88  ^|
echo ^|  88     88 88.  .88  88        88.  .88 88    88   88  ^|
echo ^|  dP     dP `88888P'  dP        `88888P' dP    dP   dP  ^|
echo ^| ooooooooooooooooooooooooooooooooooooooooooooooooooooooo^|
echo.^|                                                        ^|
echo ^|               [1] ^Change to Custom Font                ^|
echo.^|                                                        ^|
echo.^|                                                        ^|
echo ^|              [2] Revert to Default Fonts               ^|
echo.^|                                                        ^|
echo ^| ------------------------------------------------------ ^|
echo.^|                                                        ^|
echo ^|       Copyright 2020 ilyKiwi. All rights reserved.     ^|
echo.^|                                                        ^|
echo ^| ------------------------------------------------------ ^|
echo.
echo.

set /p ans="Enter Option: "
if "%ans%" == "1" (
    goto Change
)
if "%ans%" == "2" (
    goto Revert
)
echo Enter a valid option.
pause
goto rendergraphics

:Change
cls
echo Looking for Custom Font...
if not exist "%~dp0\MyFont" (
    cls
    echo Couldn't find custom font. Make sure you put your ONE font in the "MyFont" folder.
    echo.
    pause
    goto Main
)
if not exist "%~dp0\MyFont\*.ttf" (
    if exist "%~dp0\MyFont\*.otf" (
        rename *.otf *.ttf
    ) else (
        cls
        echo .ttf Font Type not found. Perhaps you don't have a font in the "MyFont" folder yet?
        echo.
        pause
        goto Main
    )
)
echo Making duplicates...
mkdir "Custom Font"
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\AccanthisADFStd-Regular.otf*" /A /Y 
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\AmaticSC-Bold.ttf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\AmaticSC-Regular.ttf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\arial.ttf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\arialbd.ttf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\Balthazar-Regular.ttf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\Bangers-Regular.ttf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\ComicNeue-Angular-Bold.ttf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\Creepster-Regular.ttf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\DenkOne-Regular.ttf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\Fondamento-Italic.ttf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\Fondamento-Regular.ttf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\FredokaOne-Regular.ttf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\GothamSSm-Black.otf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\GothamSSm-Bold.otf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\GothamSSm-Book.otf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\GothamSSm-Medium.otf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\GrenzeGotisch-Bold.ttf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\GrenzeGotisch-Regular.ttf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\Guru-Regular.otf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\HWYGOTH.ttf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\Inconsolata-Regular.ttf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\IndieFlower-Regular.ttf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\JosefinSans-Regular.ttf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\Jura-Regular.ttf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\Kalam-Regular.ttf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\LuckiestGuy-Regular.ttf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\Merriweather-Italic.ttf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\Merriweather-Regular.ttf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\Michroma-Regular.ttf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\Montserrat-Black.ttf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\Montserrat-Bold.ttf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\Montserrat-Medium.ttf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\Montserrat-Regular.ttf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\NotoSansBengaliUI-Regular.ttf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\NotoSansDevanagariUI-Regular.ttf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\NotoSansGeorgian-Regular.ttf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\NotoSansKhmerUI-Regular.ttf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\NotoSansMyanmarUI-Regular.ttf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\NotoSansSinhalaUI-Regular.ttf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\NotoSansThaiUI-Regular.ttf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\Nunito-Regular.ttf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\Oswald-Bold.ttf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\Oswald-Regular.ttf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\PatrickHand-Regular.ttf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\PermanentMarker-Regular.ttf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\PressStart2P-Regular.ttf*" /A /Y
:: xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\RobloxEmoji.ttf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\Roboto-Bold.ttf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\RobotoCondensed-Regular.ttf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\Roboto-Italic.ttf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\RobotoMono-Regular.ttf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\Roboto-Regular.ttf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\RomanAntique.otf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\Sarpanch-Bold.ttf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\Sarpanch-Regular.ttf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\SourceSansPro-Bold.ttf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\SourceSansPro-It.ttf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\SourceSansPro-Light.ttf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\SourceSansPro-Regular.ttf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\SourceSansPro-Semibold.ttf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\SpecialElite-Regular.ttf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\TitilliumWeb-Bold.ttf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\TitilliumWeb-Regular.ttf*" /A /Y
:: xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\TwemojiMozilla.ttf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\Ubuntu-Italic.ttf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\Ubuntu-Regular.ttf*" /A /Y
xcopy "%~dp0\MyFont\*.ttf" "%~dp0\Custom Font\zekton_rg.ttf*" /A /Y
cls
echo Replacing Roblox fonts...
pushd "%~dp0"
copy "Custom Font" %rbxfolder%\fonts"
popd
cls
echo Removing Custom Font...
rmdir "%~dp0\Custom Font" /s /q
mkdir "Custom Font"
cls
echo Roblox Fonts successfully changed.
echo.
echo ---------------------------------------------
echo.
echo Copyright 2020 ilyKiwi. All rights reserved.
echo.                                          
echo ---------------------------------------------
echo.  
echo.
pause
goto Main


:Revert
cls
if exist "%~dp0\Custom Font" (
echo Removing Custom Font...
rmdir "%~dp0\Custom Font" /s /q
mkdir "Custom Font"
cls
)
echo Reverting to default Roblox fonts...
pushd "%~dp0"
copy "Backup\fonts" %rbxfolder%\fonts"
popd
cls
echo Roblox Fonts successfully reverted.
echo.
echo ---------------------------------------------
echo.
echo Copyright 2020 ilyKiwi. All rights reserved.
echo.                                          
echo ---------------------------------------------
echo.  
echo.
pause
goto Main
