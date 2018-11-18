@echo off
echo Open Watcom Build Environment

if exist %DOSDIR%\BIN\VFDUTIL.COM goto CheckPath
goto SetEnv

:CheckPath
vfdutil /t wcc.exe /t wlink.exe
if errorlevel 1 goto SetEnv
goto Done

:SetEnv
SET WATCOM=C:\DEVEL\OW
SET PATH=%WATCOM%\BINW;%PATH%
SET INCLUDE=%WATCOM%\H;%INCLUDE%
SET EDPATH=%WATCOM%\EDDAT
SET WIPFC=%WATCOM%\WIPFC

:Done
