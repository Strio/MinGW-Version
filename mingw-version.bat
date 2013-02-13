@echo off

:start

set mingw_basedir=C:\MinGW

title Min-GW Version Info - mingw-version.bat

echo Base Directory: %mingw_basedir%
echo.

if exist %mingw_basedir%\bin\gcc.exe (
	for /f "delims==" %%i in ('%mingw_basedir%\bin\gcc.exe -v ^2^>^&1 ^| find "gcc version"') do echo Version: %%i
	echo.
) else (
	echo The file %mingw_basedir%\bin\gcc.exe cannot be found.
	echo. 
)

pause
