@echo off
echo.
echo NOTE: at the end of the script your machine WILL REBOOT
echo Please save all changes that you have and run the script
echo.
pause
echo.
echo Detecting permissions...
ping 127.0.0.1 -n 2 > nul
echo.
net session >nul 2>&1
if not %errorLevel% == 0 (
	echo FAILED: You have to run this file as Administrator.
echo.
echo Right click the file and click "Run as administrator"
) else (
goto uninst_updates
)
pause >nul
exit

:uninst_updates
	echo uninstalling updates ...
	echo Removing KB971033 (license validation / anti piracy)
	wusa.exe /kb:971033 /uninstall /quiet /norestart
	echo  - proceeding to next update
	echo Removing KB2952664 (Get Windows 10 assistant)
	wusa.exe /kb:2952664 /uninstall /quiet /norestart
	echo  - proceeding to next update
	echo Removing KB2976978 (update for Windows 8.1 and Windows 8)
	wusa.exe /kb:2976978 /uninstall /quiet /norestart
	echo  - proceeding to next update
	echo Removing KB2977759 (update for Windows 7 RTM)
	wusa.exe /kb:2977759 /uninstall /quiet /norestart
	echo  - proceeding to next update
	echo Removing KB2990214 (Get Windows 10 for Windows 7)
	wusa.exe /kb:2990214 /uninstall /quiet /norestart
	echo  - proceeding to next update
	echo Removing KB3012973 (Upgrade to Windows 10)
	wusa.exe /kb:3012973 /uninstall /quiet /norestart
	echo  - proceeding to next update
	echo Removing KB3014460 (Upgrade for Windows Insider Preview / upgrade to Windows 10)
	wusa.exe /kb:3014460 /uninstall /quiet /norestart
	echo  - proceeding to next update
	echo Removing KB3015249 (Telemetry points for Windows 8.1 / Windows 7)
	wusa.exe /kb:3015249 /uninstall /quiet /norestart
	echo  - proceeding to next update
	echo Removing KB3021917 (update to Windows 7 SP1 for performance improvements)
	wusa.exe /kb:3021917 /uninstall /quiet /norestart
	echo  - proceeding to next update
	echo Removing KB3022345 (Telemetry)
	wusa.exe /kb:3022345 /uninstall /quiet /norestart
	echo  - proceeding to next update
	echo Removing KB3035583 (GWX Update for Get Windows 10 app in Windows 8.1 / Windows 7 SP1)
	wusa.exe /kb:3035583 /uninstall /quiet /norestart
	echo  - proceeding to next update
	echo Removing KB3044374 (Get Windows 10 for Windows 8.1)
	wusa.exe /kb:3044374 /uninstall /quiet /norestart
	echo  - proceeding to next update
	echo Removing KB3050265 (Update for Windows Update on Windows 7)
	wusa.exe /kb:3050265 /uninstall /quiet /norestart
	echo  - proceeding to next update
	echo Removing KB3050267 (Update for Windows update client for Windows 8.1 June 2015)
	wusa.exe /kb:3050267 /uninstall /quiet /norestart
	echo  - proceeding to next update
	echo Removing KB3068708 (Telemetry)
	wusa.exe /kb:3068708 /uninstall /quiet /norestart
	echo  - proceeding to next update
	echo Removing KB3075249 (Telemetry for Win7/8.1)
	wusa.exe /kb:3075249 /uninstall /quiet /norestart
	echo  - proceeding to next update
	echo Removing KB3075851 (Update for Windows Update on Windows 7 / Server 2008 R2)
	wusa.exe /kb:3075851 /uninstall /quiet /norestart
	echo  - proceeding to next update
	echo Removing KB3075853 (Update for Windows Update on Windows 8.1 / Server 2012 R2)
	wusa.exe /kb:3075853 /uninstall /quiet /norestart
	echo  - proceeding to next update
	echo Removing KB3080149 (Telemetry)
	wusa.exe /kb:3080149 /uninstall /quiet /norestart
	echo  - proceeding to next update
	echo Removing KB3112336 (Update Client for Windows 8.1 / Server 2012 R2)
	wusa.exe /kb:3112336 /uninstall /quiet /norestart
	echo Removing KB3118401 (Update for Universal C Runtime in Windows)
	wusa.exe /kb:3118401 /uninstall /quiet /norestart
	echo Removing KB3123862 (Updated capabilities to upgrade Windows 8.1 and Windows 7)
	wusa.exe /kb:3123862 /uninstall /quiet /norestart
	echo Removing KB3140185 (March 2016 WAU update for Windows 8.1)
	wusa.exe /kb:3140185 /uninstall /quiet /norestart
	echo Removing KB3144850 (Update for downgrade rights for Windows 10)
	wusa.exe /kb:3144850 /uninstall /quiet /norestart
	echo  - Completed!
	goto hideUpdates

:hideUpdates
	echo Hiding updates
	echo.
	start "hiding" /b /w cscript.exe "%~dp0HideUpdates.vbs" 3112336 971033 2952664 2976978 29777598 2990214 3012973 3014460 3015249 3021917 3022345 3035583 3044374 3050265 3050267 3068708 3075249 3075851 3075853 3080149 3112336 3118401 3123862 3140185 3144850
	echo Done.
	ping 127.0.0.1 -n 2 > null
	goto checkDownloadFolder

:checkDownloadFolder
	echo Checking if Windows 10 download has been started...
	echo.
	IF NOT EXIST %SystemDrive%\$Windows.~BT\ (
		echo The Windows 10 download has not been initiated - you are OK!
	) else (
		echo Unfortunately Windows 10 download has already started :(
		echo But the removal of these updates has stopped it of further download!
		echo you can check the directory yourself at %SystemDrive%\$Windows.~BT\
		echo NOTE: the directory is hidden, so turn on "Show hidden files"
		echo.
		pause
	)
	goto hideGWX

:hideGWX
	echo "Preventing GWX from launching in future..."
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\GWX" /v "DisableGWX" /t REG_DWORD /d 1 /f
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DisableOSUpgrade" /t REG_DWORD /d 1 /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\OSUpgrade" /v "AllowOSUpgrade" /t REG_DWORD /d 0 /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\OSUpgrade" /v "KickoffDownload" /t REG_DWORD /d 0 /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\OSUpgrade" /v "OSUpgradeInteractive" /t REG_DWORD /d 0 /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\OSUpgrade" /v "ReservationsAllowed" /t REG_DWORD /d 0 /f
	goto quit

:quit
	echo.
	echo ALL DONE!
	echo.
	echo Your PC will now restart in order to apply all the changes
	echo you have 50 seconds to safely close all the apps.
	shutdown -r -t 50
