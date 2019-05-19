@echo off
color FC
title Trivia Troopers
echo.
:Begin
cls
echo.
echo  Welcome to Trivia Troopers
echo -------------------------------------------------------------------
echo  You will be quizzed on 10 questions. Select either a, b, c, d, or q to quit.
echo.
echo  Ready to begin? Type [Y] to begin, [z] to go back, or [q] to quit.
echo.
set /p ok="Begin? >>  "
if /I %ok%==y goto t1
if /I %ok%==z goto Game
if /I %ok%==q goto Quit
echo.
echo Oops! Invalid input. :)
pause
goto Begin

:t1
cls
set score=0
set temp=0
echo   TRIVIA TROOPERS
echo --------------------------------------------------------------------
echo  [Q1] What temperature does water boil at?
echo  (a) 78.9 C
echo  (b) 55.0 C
echo  (c) 100.0 C
echo  (d) 90.0 C
echo.
set /p ans=">> "
if /I %ans%==c (
	set /a score=%score%+1
	set temp=1
)
if /I %ans%==a set temp=1
if /I %ans%==b set temp=1
if /I %ans%==d set temp=1
if /I %ans%==q goto Quit
if %temp%==1 goto t2
echo Oops! Invalid input
pause
goto t1

:t2
echo.
set temp=0
echo  [Q2] When did the First World War start?
echo  (a) 1982
echo  (b) 1934
echo  (c) 1944
echo  (d) 1914
echo.
set /p ans=">> "
if /I %ans%==d (
	set /a score=%score%+1
	set temp=1
)
if /I %ans%==a set temp=1
if /I %ans%==b set temp=1
if /I %ans%==c set temp=1
if /I %ans%==q goto Quit
if %temp%==1 goto t3
echo.
echo Oops! Invalid input
pause
goto t2

:t3
echo.
set temp=0
echo  [Q3] Where is the smallest bone in the body?
echo  (a) Eye
echo  (b) Finger
echo  (c) Ear
echo  (d) Nose
echo.
set /p ans=">> "
if /I %ans%==c (
	set /a score=%score%+1
	set temp=1
)
if /I %ans%==a set temp=1
if /I %ans%==b set temp=1
if /I %ans%==d set temp=1
if /I %ans%==q goto Quit
if %temp%==1 goto t4
echo.
echo Oops! Invalid input
pause
goto t3

:t4
echo.
set temp=0
echo  [Q4] What does the Roman numeral 'C' represent?
echo  (a) 1000
echo  (b) 100
echo  (c) 50
echo  (d) 500
echo.
set /p ans=">> "
if /I %ans%==b (
	set /a score=%score%+1
	set temp=1
)
if /I %ans%==a set temp=1
if /I %ans%==c set temp=1
if /I %ans%==d set temp=1
if /I %ans%==q goto Quit
if %temp%==1 goto t5
echo.
echo Oops! Invalid input
pause
goto t4

:t5
echo.
set temp=0
echo  [Q5] What nationality was Frederic Chopin?
echo  (a) French
echo  (b) Italian
echo  (c) Belgian
echo  (d) Polish
echo.
set /p ans=">> "
if /I %ans%==d (
	set /a score=%score%+1
	set temp=1
)
if /I %ans%==a set temp=1
if /I %ans%==b set temp=1
if /I %ans%==c set temp=1
if /I %ans%==q goto Quit
if %temp%==1 goto t6
echo.
echo Oops! Invalid input
pause
goto t5

:t6
echo.
set temp=0
echo  [Q6] Who lived at 221B, Baker Street, London?
echo  (a) Winston Churchill
echo  (b) Stephen Hawking
echo  (c) Sherlock Holmes
echo  (d) John Lennon
echo.
set /p ans=">> "
if /I %ans%==c (
	set /a score=%score%+1
	set temp=1
)
if /I %ans%==a set temp=1
if /I %ans%==b set temp=1
if /I %ans%==d set temp=1
if /I %ans%==q goto Quit
if %temp%==1 goto t7
echo.
echo Oops! Invalid input
pause
goto t6

:t7
echo.
set temp=0
echo  [Q7] How many states are there in the Unites States of America?
echo  (a) 50
echo  (b) 51
echo  (c) 49
echo  (d) 48
echo.
set /p ans=">> "
if /I %ans%==a (
	set /a score=%score%+1
	set temp=1
)
if /I %ans%==b set temp=1
if /I %ans%==c set temp=1
if /I %ans%==d set temp=1
if /I %ans%==q goto Quit
if %temp%==1 goto t8
echo.
echo Oops! Invalid input
pause
goto t7

:t8
echo.
set temp=0
echo  [Q8] How many dots are there on two dice?
echo  (a) 42
echo  (b) 56
echo  (c) 36
echo  (d) 52
echo.
set /p ans=">> "
if /I %ans%==a (
	set /a score=%score%+1
	set temp=1
)
if /I %ans%==b set temp=1
if /I %ans%==c set temp=1
if /I %ans%==d set temp=1
if /I %ans%==q goto Quit
if %temp%==1 goto t9
echo.
echo Oops! Invalid input
pause
goto t8

:t9
echo.
set temp=0
echo  [Q9] What language has the most words?
echo  (a) Arabic
echo  (b) English
echo  (c) Italian
echo  (d) Chinese
echo.
set /p ans=">> "
if /I %ans%==b (
	set /a score=%score%+1
	set temp=1
)
if /I %ans%==a set temp=1
if /I %ans%==c set temp=1
if /I %ans%==d set temp=1
if /I %ans%==q goto Quit
if %temp%==1 goto t10
echo.
echo Oops! Invalid input
pause
goto t9

:t10
echo.
set temp=0
echo  [Q10] Who said, "I think, therefore I am"?
echo  (a) Jean Paul Sartre
echo  (b) Socrates
echo  (c) Aristotle
echo  (d) Rene Descartes
echo.
set /p ans=">> "
if /I %ans%==d (
	set /a score=%score%+1
	set temp=1
)
if /I %ans%==a set temp=1
if /I %ans%==b set temp=1
if /I %ans%==c set temp=1
if /I %ans%==q goto Quit
if %temp%==1 goto done
echo.
echo Oops! Invalid input
pause
goto t10


:done
echo.
echo You have completed all the questions.
pause
cls
echo   TRIVIA TROOPERS
echo --------------------------------------------------------------------
echo   Your total score is: %score%/10
if %score%==10 echo   Perfect Scorer!
if %score% GTR 5 echo   You did great!~
if %score% LSS 6 echo   Aww, shucks! Better luck next time!~
pause
echo.
goto Game

:Game
start batchman
goto End

:Quit
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
start batchman
exit