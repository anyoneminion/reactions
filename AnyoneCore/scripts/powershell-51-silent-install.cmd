@echo off
setlocal EnableDelayedExpansion

set sw=HKLM\SOFTWARE
set cv=Microsoft\Windows\CurrentVersion
set v4=Microsoft\.NETFramework\v4.0.30319
set ps=Microsoft\PowerShell

reg query "%sw%\%cv%\WindowsUpdate\Auto Update\RebootRequired" > nul 2>&1
if !errorlevel!==0 echo computer restart is needed before doing any further steps
if !errorlevel!==0 goto exit

echo looking for previous PowerShell installation
reg query "%sw%\%cv%\Component Based Servicing\Packages" /s | find "KB3191564" > nul 2>&1
if !errorlevel!==0 echo PowerShell 5.1 will be fully installed after computer restart
if !errorlevel!==0 goto exit

echo Looking for .NET 4.6.2
reg query "%sw%\%v4%" > nul 2>&1
if not !errorlevel!==0 goto dotnet462install
reg query "%sw%\%v4%\SKUs\.NETFramework,Version=v4.6.2" > nul 2>&1
if not !errorlevel!==0 echo .NET 4.6.2 not found
if !errorlevel!==0 goto dotnet462exist

:dotnet462install

rem check for previous installed 
reg query "%sw%\%cv%\Component Based Servicing\Packages" /s | find "KB3151800" > nul 2>&1
if !errorlevel!==0 echo .NET 4.6.2 will be fully installed after computer restart
if !errorlevel!==0 goto exit

echo installing .NET Framework 4.6.2
start /wait "" "%~dp0NDP462-KB3151800-x86-x64-AllOS-ENU.exe" /passive /norestart
echo installation ended with errorcode !errorlevel!
if !errorlevel!==3010 echo computer restart is needed to complete installation
if not !errorlevel!==0 goto exit

:dotnet462exist

echo Looking for PowerShell 3.0 or highter..
echo.

reg query "%sw%\%ps%\3" > nul 2>&1
if not !errorlevel!==0 goto install
reg query "%sw%\%ps%\3\PowerShellEngine" /v PSCompatibleVersion | findstr "5.1"
if !errorlevel!==0 goto ps51exist

:install

rem look if Windows 7 or Server 2008 R2 OS
ver | find "Version 6.1" > nul 2>&1
if !errorlevel!==0 (
echo Windows 7 or Server 2008 R2 OS detected 

if not "%ProgramFiles(x86)%"=="" (
%systemroot%\system32\wusa.exe ^
"%~dp0Win7AndW2K8R2-KB3191566-x64.msu" /quiet /norestart
if !errorlevel!==3010 echo Computer restart is needed!
)

if "%ProgramFiles(x86)%"=="" (
%systemroot%\system32\wusa.exe ^
"%~dp0Win7-KB3191566-x86.msu" /quiet /norestart
if !errorlevel!==3010 echo Computer restart is needed!
)

)

rem look if Windows 8.1 or Server 2012 R2 OS
ver | find "Version 6.3" > nul 2>&1
if !errorlevel!==0 (
echo Windows 8.1 or Server 2012 R2 OS detected 

if not "%ProgramFiles(x86)%"=="" (
%systemroot%\system32\wusa.exe ^
"%~dp0Win8.1AndW2K12R2-KB3191564-x64.msu" /quiet /norestart
if !errorlevel!==3010 echo Computer restart is needed!
)

if "%ProgramFiles(x86)%"=="" (
%systemroot%\system32\wusa.exe ^
"%~dp0Win8.1-KB3191564-x86.msu" /quiet /norestart
if !errorlevel!==3010 echo Computer restart is needed!
)

)

:ps51exist
:exit

echo end of script
echo.

endlocal

pause
