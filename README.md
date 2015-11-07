# windows-10-off
Remove the Microsoft Windows 10 telemetry and its tool from Micro$oft that are sharing your personal data, hogging your bandwidth, downloading additional files without your approval (~6GB!) and more.

The script works for Windows 7 all up to Windows 10.

# For more details about the KB (updates)
Visit the "KB Descriptions.txt" file in the repository for details on which KBs are being removed and their description.

# Instructions:
	- Download and unpack the .zip file
	- Right click the "win-10-off.bat" file and click "Run as administrator"
	- Wait for the script to finish and it will prompt you that your PC will reboot
	- Save all the files you have and let the PC reboot for the changes to take affect

# How to Disable Windows Update Delivery Optimization (WUDO)?
(Stop Windows 10 from hogging your bandwidth) - ONLY APPLICABLE FOR WINDOWS 10

You can disable the feature, but the option is buried deep in the Settings menu for Windows Update.
To turn this feature OFF, follow these given steps:

	Go to Settings in the Start menu
	Search for Update & Security
	Under Windows Update, open Advanced Options
	Under Choose How Updates are Installed, select Choose how updates are delivered
	Disable the toggle under Updated from More than One Place

# Disable the automatic downloading of Windows 10 (for Windows 8.1 and Windows 7)
- Install KB3065987 (for Windows 7) or KB3065988 (for Windows 8.1) updates from Microsoft's official website, depending on the operating system you are using
- Reboot your PC
- Run the "disable_auto_download_of_win10.reg"


Have fun and don`t let M$ spy on you.


# More updates coming!
