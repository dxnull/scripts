:: This batch script is needed to work around Windows file blocking wherein unsigned PowerShell scripts downloaded from the Internet are restricted from execution.
@echo off

:: Switch directory to location of this batch file.
cd %~dp0

echo We need to recursively unblock the *.ps1 files under this directory in order to allow proper script execution.
echo 
echo If desired, you may Ctrl+C now to break out of this prompt and manually unblock any files with the 'Unblock-File' cmdlet.
echo Otherwise press return to continue...
pause

:: Invoke PowerShell prompt to recursively unblock all *.ps1 files under the current directory.
@PowerShell.exe -NonInteractive -NoProfile -ExecutionPolicy Unrestricted -Command "Get-ChildItem -Path .\*.ps1 -Recurse | Unblock-File"

echo Done! Press return to exit script.
pause
::