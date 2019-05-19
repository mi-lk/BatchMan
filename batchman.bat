@echo off
color FC
title BatchMan

:Begin
cls
echo.
echo   Hello world!
echo -----------------------------------------------------
echo   Welcome to ~
echo    ___   __ ____ ___ _ _  _  _   __  _ _ 
echo    ))_) /_`) ))  ))  )`) )\/,) /_`) )\`)
echo   ((__)(( ( ((  ((__(( ( ((`(( (( ( ((`( 
echo.
echo -----------------------------------------------------
echo   What do you want to do?  ...
echo.
echo (a) Open Directory Menu
echo (b) Use Calculator
echo (c) Play a game
echo (d) Browse the internet
echo (f) Tell me my IP Address
echo.
echo (q) Quit
echo.
echo.
echo *To play some theme music, enter 'play'.
echo.
set /P option=">> "
if /I %option%==a goto Dirmenu
if /I %option%==b goto Calc
if /I %option%==c goto Game
if /I %option%==d goto Web
if /I %option%==f goto myIP
if /I %option%==q goto Quit
if /I "%option%"=="play" goto Play
::Secret
if /I %option%==I goto Christmas
echo.
echo Oops! Invalid input.
echo.
pause
goto Begin

:Play
start https://www.youtube.com/watch?v=MmJ64exGII4
goto Begin


echo.
echo Oops! You didn't pick a valid option .. :c
echo.
pause
goto Begin


:Dirmenu
cls
echo.
echo  Directory Menu
echo ----------------------------------------------------
echo  What do you want to do?
echo.
echo (a) List current directory
echo (b) List files in current directory
echo (c) Create a new text file
echo (d) Create a new folder(directory)
echo.
echo (z) Go back ...
echo (q) Quit
echo.
set /P option=">> "
if /I %option%==a goto Cur
if /I %option%==b goto Ls
if /I %option%==c goto Txt
if /I %option%==d goto Fold
if /I %option%==z goto Begin
if /I %option%==q goto Quit
echo.
echo Oops! Invalid input.
pause
goto Dirmenu

:Cur
cls
echo ----------------------------------------------------
echo.
echo   Current working directory:
echo   %cd%
echo.
echo ----------------------------------------------------
echo.
pause
goto Dirmenu

:Ls
cls
echo ----------------------------------------------------
echo.
echo Files/folders in current directory:
echo.
dir /b /a /OGN
echo.
echo ----------------------------------------------------
pause
goto Dirmenu

:Txt
cls
echo ----------------------------------------------------
echo.
echo   To create a new text file, enter a name:
set /P name=">> "
notepad %name%.txt
echo.
echo ----------------------------------------------------
pause
goto Dirmenu

:Fold
cls
echo ----------------------------------------------------
echo.
echo   To create a new folder, enter a name:
set /P name=">> "
mkdir "%name%"
echo.
echo ----------------------------------------------------
pause
goto Dirmenu



:Calc
start sofiascalculator
goto End



:Game
cls
echo. 
echo  "  +-+-+-+-+ +-+-+-+-+-+-+  "
echo  "  |G|a|m|e| |C|e|n|t|r|e|  " 
echo  "  +-+-+-+-+ +-+-+-+-+-+-+  "
echo ------------------------------------------------------
echo   What do you want to do?
echo.
echo  (a) Trivia Troopers
echo  (b) Web Sudoku
echo  (c) Chess on Lichess
echo.
echo (z) Go back ...
echo (q) Quit
echo.
set /P option=">> "
if /I %option%==a goto Trivia
if /I %option%==b (
	start https://www.sudoku.com
	goto Game
)
if /I %option%==c (
	start https://lichess.org
	goto Game)
if /I %option%==z goto Begin
if /I %option%==q goto Quit
echo.
echo Oops! Invalid input
pause
goto Game

:Trivia
start triviatroopers
goto End


:Web
cls
echo -------------------------------------------------------
echo   Browse the Internet
echo -------------------------------------------------------
echo.
echo  Pick a website to visit:
echo  (a) Mano VGTU			(d) Gmail
echo  (b) VGTU Moodle		(e) Google
echo  (c) VGTU Student Software	(f) Type your own URL
echo.
echo  (z) Go back ...
echo  (q) Quit
echo.
set /P option=" >> "

if /I %option%==a start https://mano.vgtu.lt/
if /I %option%==b start https://moodle.vgtu.lt/
if /I %option%==c start https://studsoft.vgtu.lt/
if /I %option%==d start https://gmail.com/
if /I %option%==e start https://google.com
if /I %option%==f goto WebF
if /I %option%==z goto Begin
if /I %option%==q goto Quit
echo.
echo Oops! Invalid input
pause
goto Web

:WebF
echo.
echo  Type a complete URL (Ex: https://www.vgtu.lt/)
echo.
set /P url=" >> "
start %url%
pause
goto Web

:myIP
cls
echo ----------------------------------------------------
echo   Info on your IP
echo ----------------------------------------------------
ipconfig
echo.
echo ----------------------------------------------------
echo.
pause
goto Begin


:Christmas
cls
echo ----------------------------------------------------
echo ------------------in--------------------------------
echo -----------------inga-------------------------------
echo -------------ingaingainga---------------------------
echo ---------ingaingaingaingainga-----------------------
echo ---------------ingainga-----------------------------
echo -------------ingaingainga---------------------------
echo ---------ingaingaingaingainga-----------------------
echo -------------ingaingainga---------------------------
echo ---------ingaingaingaingainga-----------------------
echo -------------ingaingainga---------------------------
echo ---------ingaingaingaingainga-----------------------
echo -------------ingaingainga---------------------------
echo -----ingaingaingaingaingaingainga-------------------
echo -----------------inga-------------------------------
echo -----------------inga-------------------------------
echo -----------------inga-------------------------------
echo -----------------inga-------------------------------
echo -----------------inga-------------------------------
echo /\\/\\/\/\\\/\/\\/\\//\\/\/\/\\/\\/\//\\//\//\\/\//\
echo.
echo    HI MISS INGA !!! Merry Christmas!!!~
echo    ok i know its not christmas but look at this tree))
echo.
pause
goto Begin



:Quit
cls
echo.
echo   Goodbye, world! ~
echo.
echo   .oooooo.                              .o8   .o8                                .o.
echo   d8P'  `Y8b                            "888  "888                                888
echo  888            .ooooo.   .ooooo.   .oooo888   888oooo.  oooo    ooo  .ooooo.     888
echo  888           d88' `88b d88' `88b d88' `888   d88' `88b  `88.  .8'  d88' `88b    Y8P
echo  888     ooooo 888   888 888   888 888   888   888   888   `88..8'   888ooo888    `8'
echo  `88.    .88'  888   888 888   888 888   888   888   888    `888'    888    .o    .o.
echo   `Y8bood8P'   `Y8bod8P' `Y8bod8P' `Y8bod88P"  `Y8bod8P'     .8'     `Y8bod8P'    Y8P
echo                                                          .o..P'                      
echo                                                          `Y8P'               
echo.
pause
goto End

:End
exit
