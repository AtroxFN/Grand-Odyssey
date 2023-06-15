@echo off
@mode 101,30
@title %~n0
Batbox /h 0

set load1name= ?????? 
set load2name= ?????? 
set path="Odyssey_data\bin\buttonclient\"

// MARK: Main Menu
:mainmenu
cls   
echo [36m  #g****                              *d  [91m   #o****       *d                                        [37m 
echo [36m #g                                   *d  [91m  #o    **      *d                                        [37m 
echo [36m#g  ***   *r###  *a####  *n####   *d####  [91m  #o    **  *d#### *y   ##  *s####  *s#### *e##### *y   ##[37m 
echo [36m#g    ** *r   ##  *a###  *n   ## *d   ##  [91m  #o    ** *d   ## *y   ## *s####  *s####  *e####  *y   ##[37m 
echo [36m #g   ** *r      *a   #  *n   ## *d   ##  [91m  #o    ** *d   ## *y   ##      *s      *s *e      *y   ##[37m 
echo [36m  #g***  *r       *a#### *n   ##  *d####  [91m   #o****   *d####  *y#### *s####  *s####   *e####  *y####[37m 
echo [36m                                          [91m                        *y                              *y[37m 
echo [36m                                          [91m                  *y####                          *y####  [37m
echo. [37m
Call %path%Button 44 16 "Load Save" 44 19 "Start New" 44 22 "  Leave  " # Press
Getinput /m %Press% /h 70

:: Check for the pressed button 
if %errorlevel%==1 (goto loadSave)
if %errorlevel%==2 (goto newSave)
if %errorlevel%==3 (exit)
goto mainmenu

:loadSave
cls
Call %path%Button  44 10 "%load1name%" 44 13 "%load2name%" 44.5 16 " Return " # Press
Getinput /m %Press% /h 70

:: Check for the pressed button 
if %errorlevel%==1 (goto load1)
if %errorlevel%==2 (goto load2)
if %errorlevel%==3 (goto mainmenu)
goto loadSave

:newSave
cls
Call %path%Button  44 10 "  Name  " 44 13 " Submit " 44.5 16 " Return " # Press
Getinput /m %Press% /h 70

:: Check for the pressed button 
if %errorlevel%==1 (goto makeName)
if %errorlevel%==2 (goto newSave)
if %errorlevel%==3 (goto mainmenu)
goto newSave

:makeName
cls
echo Please enter your adventurer name:
if %load1name%== ?????? (
    set /p load1name=
    goto loadSave
)
if %load2name%== ?????? (
    set /p load2name=
    goto loadSave
)
goto loadSave

// MARK: Camp
:load1
cls
Call %path%Button  33 13 "Adventure Map" 33 16 "Light Satchel" 55 13 "Player Details" 55 16 "Exit Odyssey" # Press
Getinput /m %Press% /h 70

:: Check for the pressed button 
if %errorlevel%==1 (goto mapBasic)
if %errorlevel%==2 (goto userSatchel)
if %errorlevel%==3 (goto userDetails)
if %errorlevel%==3 (goto mainmenu)
goto mainmenu


:load2



:mapBasic



:userSatchel



:userDetails
cls
