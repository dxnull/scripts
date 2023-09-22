:: Check if running with Administrator privileges.
echo.
net session >nul 2>&1
if %errorlevel% neq 0 (
	echo This script requires elevated privileges.
	echo.
	choice /C YN /N /M "Press Y to relaunch and prompt for Admin rights, or N to terminate and manually run as Administrator. You may receive a SmartScreen warning, however this is safe to bypass.
	
	if errorlevel 2 (
		echo.
		echo Terminating script, please re-launch with Admin rights.
		timeout /t 3
		exit /b 1
	)
	
	echo.
	echo Re-launching with Administrator rights, please click Yes when prompted by UAC.
	timeout /t 3
	@PowerShell.exe -ExecutionPolicy Unrestricted -Command "Start-Process -FilePath '%~dpnx0' -Verb RunAs" 
	exit /b 1
)
echo Running with Admin!
echo.
pause