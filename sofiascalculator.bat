@echo off
color CF
title Calcu-4-ME
:Start
cls
echo   Hello there ~ !
echo ---------------------------------------------------------
echo.
echo   Welcome to ~ Calcu-4-ME
echo.
echo ---------------------------------------------------------
echo What do you want to calculate?
echo.
echo (a) Addition
echo (b) Subtraction
echo (c) Multiplication
echo (d) Division
echo (e) Modulus
echo.
echo (z) Go back
echo (q) Quit
echo.
set /P option=">> "
if /I %option%==a goto Add
if /I %option%==b goto Sub
if /I %option%==c goto Mul
if /I %option%==d goto Div
if /I %option%==e goto Mod
if /I %option%==z goto Back
if /I %option%==q goto Quit

echo.
echo Oops! You didn't pick a valid option .. :c
echo.
pause
goto Start


:Add
cls
echo --------------------------------------------------------
echo.
echo Addition
echo.
echo --------------------------------------------------------
echo.
set /P x="x = "
echo   +   
set /P y="y = "
set /A sum=x+y
echo.
echo  %x% + %y% = %sum%  \(UwU)/
echo.
echo ---------------------------------------------------------
echo.
pause
cls
goto Start


:Sub
cls
echo --------------------------------------------------------
echo.
echo Subtraction
echo.
echo --------------------------------------------------------
echo.
set /P x="x = "
echo   -  
set /P y="y = "
set /A diff=x-y
echo.
echo  %x% - %y% = %diff%  \(UwU)/
echo.
echo ---------------------------------------------------------
echo.
pause
cls
goto Start


:Mul
cls
echo --------------------------------------------------------
echo.
echo Multiplication
echo.
echo --------------------------------------------------------
echo.
set /P x="x = "
echo   *   
set /P y="y = "
set /A prod=x*y
echo.
echo %x% * %y% = %prod%  \(UwU)/
echo.
echo ---------------------------------------------------------
echo.
pause
cls
goto Start


:Div
cls
echo --------------------------------------------------------
echo.
echo Division
echo.
echo --------------------------------------------------------
echo.
set /P x="x = "
echo   /   
set /P y="y = "
set /A quot=x/y
echo.
echo  %x% / %y% = %quot%  \(UwU)/
echo.
echo ---------------------------------------------------------
echo.
pause
cls
goto Start


:Mod
cls
echo --------------------------------------------------------
echo.
echo Modulus [Remainder after division]
echo.
echo --------------------------------------------------------
echo.
set /P x="x = "
echo   %%   
set /P y="y = "
set /A rem=x%%y
echo.
echo  %x% %% %y% = %rem%  \(UwU)/
echo.
echo ---------------------------------------------------------
echo.
pause
cls
goto Start

:Back
start batchman
goto End

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