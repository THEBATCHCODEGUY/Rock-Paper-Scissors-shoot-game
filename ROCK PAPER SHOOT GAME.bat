@echo off
title Rock, Paper, Scissors Game

:menu
cls
echo ==============================
echo        Rock, Paper, Scissors       
echo ==============================
echo.
echo Choose an option:
echo 1. Rock
echo 2. Paper
echo 3. Scissors
echo 4. Exit
echo.
set /p choice=Enter your choice (1-4): 

if "%choice%"=="1" goto rock
if "%choice%"=="2" goto paper
if "%choice%"=="3" goto scissors
if "%choice%"=="4" goto end
echo Invalid choice. Please choose a number between 1 and 4.
pause
goto menu

:rock
set player_choice=Rock
goto play

:paper
set player_choice=Paper
goto play

:scissors
set player_choice=Scissors
goto play

:play
set /a computer_choice=%random% %% 3 + 1

if "%computer_choice%"=="1" set computer_choice=Rock
if "%computer_choice%"=="2" set computer_choice=Paper
if "%computer_choice%"=="3" set computer_choice=Scissors

cls
echo You chose %player_choice%.
echo The computer chose %computer_choice%.
echo.

if "%player_choice%"=="Rock" if "%computer_choice%"=="Scissors" goto win
if "%player_choice%"=="Rock" if "%computer_choice%"=="Paper" goto lose
if "%player_choice%"=="Paper" if "%computer_choice%"=="Rock" goto win
if "%player_choice%"=="Paper" if "%computer_choice%"=="Scissors" goto lose
if "%player_choice%"=="Scissors" if "%computer_choice%"=="Paper" goto win
if "%player_choice%"=="Scissors" if "%computer_choice%"=="Rock" goto lose

echo It's a tie!
pause
goto menu

:win
echo You win!
pause
goto menu

:lose
echo You lose!
pause
goto menu

:end
cls
echo Thanks for playing Rock, Paper, Scissors!
echo By THEBATCHCODEGUY
pause
exit
