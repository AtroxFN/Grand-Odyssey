@Echo off
@Mode 100,30
@Title %~n0
Batbox /h 0

set load1name= ?????? 
set load2name= ?????? 

:mainmenu
cls
Call Button  44 10 "Load Save" 44 13 "Start New" 44.5 16 "  Leave  " # Press
Getinput /m %Press% /h 70

:: Check for the pressed button 
if %errorlevel%==1 (goto loadSave)
if %errorlevel%==2 (goto newSave)
if %errorlevel%==3 (exit)
goto mainmenu

:loadSave
cls
Call Button  44 10 "%load1name%" 44 13 "%load2name%" 44.5 16 " Return " # Press
Getinput /m %Press% /h 70

:: Check for the pressed button 
if %errorlevel%==1 (goto load2)
if %errorlevel%==2 (goto load2)
if %errorlevel%==3 (goto mainmenu)
goto mainmenu

:newSave
cls
Call Button  44 10 "  Name  " 44 13 "Submit" 44.5 16 " Return " # Press
Getinput /m %Press% /h 70

:: Check for the pressed button 
if %errorlevel%==1 (goto makeName)
if %errorlevel%==2 (goto newSave)
if %errorlevel%==3 (exit)
goto newSave

:makeName
cls
Echo Please enter your adventurer name:
set /p load1name=
goto loadSave