@echo off&& set cx=0
mode con cols=80 lines=25
echo.&& echo.&& echo.&& echo.&& echo.&& echo [CLOSE]
:ini
call:gtC
if %cx%==1 (call:cmps) else (set cx=1)
goto :ini

:gtC
echo.exit|cmd/K prompt $_a100$_mov ax,5$_int 33$_cmp ax,1$_jl 0100$_mov ax,3$_int 33$_$_g10D$_rdx$_$_rcx$_$_q>$
call:gtC_f 12&& set x=%reg:~3,4%
call:gtC_f 13&& set y=%reg:~3,4%
goto:eof
:gtC_f
for /f “usebackq skip=%1 delims=” %%a in (`debug^<$^|find “0”`) do set reg=%%a&& goto:eof

:cmps
for %%a in (A0 A8 B0 B8 C0 C8 D0 D8) do if %x%%y%==00%%a0028 exit
goto:eof