@echo off
REM create necessary folders, and delete everything inside
if exist workingDir rd /s /q workingDir
if %ERRORLEVEL% == 9009 exit REM can not delete workingDir, exit
md workingDir
md workingDir\input
md workingDir\output
md workingDir\ttc_temp\hacked_ttfs

REM set environment variable
set root_dir=%~dp0
set work_dir=%~dp0workingDir

REM check enviroment
if not exist GaspHack_v2.ttx exit REM missing gasphack.ttx, exit
ttx -h
if %ERRORLEVEL% == 9009 exit REM ttx not working correctly, exit
unitettc
if %ERRORLEVEL% == 9009 exit REM UniteTTC not working correctly, exit
allunitettc
if %ERRORLEVEL% == 9009 exit REM UniteTTC not working correctly, exit
cls

echo GaspHack_v2
echo Writed by RadarNyan at ThemeX, Modified by HydroChLoric at ThemeX
REM A batch script to apply a gasphack to common UI fonts in Windows 10, make them renders correctly with DirectWrite.
echo This is NOT a solution but a "hack", use at your own risk.
REM all set, ready to go
pause

REM copy fonts from C:\Windows\Fonts, you can edit this part if you want to use your own fonts
cd workingDir\input
copy C:\Windows\Fonts\msjh*.ttc .\
copy C:\Windows\Fonts\msyh*.ttc .\
del webdings.ttf wingding.ttf marlett.ttf

REM deal with .ttf
for %%i in (*.ttf) do %root_dir%\ttx.exe -o %work_dir%\output\%%i -m %%i %root_dir%GaspHack_v2.ttx

REM deal with .ttc
for %%I in (*.ttc) do (
copy %%I %work_dir%\ttc_temp\
cd %work_dir%\ttc_temp
%root_dir%\unitettc.exe %%I
for %%i in (*.ttf) do %root_dir%ttx.exe -o .\hacked_ttfs\%%i -m %%i %root_dir%GaspHack_v2.ttx
cd .\hacked_ttfs
copy %root_dir%unitettc.exe .\
%root_dir%allunitettc.exe
move Fonts.TTC %work_dir%\output\%%I
cd %work_dir%
del /s /q ttc_temp
cd input
)