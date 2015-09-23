@echo off

echo You must run the scrpit with administrator rights! 
echo Right Click the file and select "Run as admin"
echo __________________________________________________
pause

REM --- uninstall updates
echo uninstalling updates ...
echo Delete KB971033 (license validation)
start "title" /b /wait wusa.exe /kb:971033 /uninstall /quiet /norestart
echo  - proceeding to next update
echo Delete KB2902907 (Microsoft Security Essentials)
start "title" /b /wait wusa.exe /kb:2902907 /uninstall /quiet /norestart
echo  - proceeding to next update
echo Delete KB2952664 (Get Windows 10 assistant)
start "title" /b /wait wusa.exe /kb:2952664 /uninstall /quiet /norestart
echo  - proceeding to next update
echo Delete KB2976978 (update for windows 8.1 and windows 8)
start "title" /b /wait wusa.exe /kb:2976978 /uninstall /quiet /norestart
echo  - proceeding to next update
echo Delete KB29777598 (update for windows 7 rtm)
start "title" /b /wait wusa.exe /kb:29777598 /uninstall /quiet /norestart
echo  - proceeding to next update
echo Delete KB2990214 (Get Windows 10 for Win7)
start "title" /b /wait wusa.exe /kb:2990214 /uninstall /quiet /norestart
echo  - proceeding to next update
echo Delete KB3012973 (Upgrade to Windows 10 Pro)
start "title" /b /wait wusa.exe /kb:3012973 /uninstall /quiet /norestart
echo  - proceeding to next update
echo Delete KB3014460 (Upgrade for windows insider preview / upgrade to windows 10)
start "title" /b /wait wusa.exe /kb:3014460 /uninstall /quiet /norestart
echo  - proceeding to next update
echo Delete KB3015249 (Upgrade that adds telemetry points to consent.exe in Windows 8.1 and Windows 7)
start "title" /b /wait wusa.exe /kb:3015249 /uninstall /quiet /norestart
echo  - proceeding to next update
echo Delete KB3021917 (update to Windows 7 SP1 for performance improvements)
start "title" /b /wait wusa.exe /kb:3021917 /uninstall /quiet /norestart
echo  - proceeding to next update
echo Delete KB3022345 (telemetry)
start "title" /b /wait wusa.exe /kb:3022345 /uninstall /quiet /norestart
echo  - proceeding to next update
echo Delete KB3035583 (GWX Update installs Get Windows 10 app in Windows 8.1 and Windows 7 SP1)
start "title" /b /wait wusa.exe /kb:3035583 /uninstall /quiet /norestart
echo  - proceeding to next update
echo Delete KB3044374 (Get Windows 10 for Win8.1)
start "title" /b /wait wusa.exe /kb:3044374 /uninstall /quiet /norestart
echo  - proceeding to next update
echo Delete KB3050265 (update for Windows Update on Win7)
start "title" /b /wait wusa.exe /kb:3050265 /uninstall /quiet /norestart
echo  - proceeding to next update
echo Delete KB3050267 (update for windows update client for windows 8.1 june 2015)
start "title" /b /wait wusa.exe /kb:3050267 /uninstall /quiet /norestart
echo  - proceeding to next update
echo Delete KB3065987 (update for Windows Update on Win7/Server 2008R2)
start "title" /b /wait wusa.exe /kb:3065987 /uninstall /quiet /norestart
echo  - proceeding to next update
echo Delete KB3068708 (telemetry)
start "title" /b /wait wusa.exe /kb:3068708 /uninstall /quiet /norestart
echo  - proceeding to next update
echo Delete KB3075249 (telemetry for Win7/8.1)
start "title" /b /wait wusa.exe /kb:3075249 /uninstall /quiet /norestart
echo  - proceeding to next update
echo Delete KB3075851 (update for Windows Update on Win7/Server 2008R2)
start "title" /b /wait wusa.exe /kb:3075851 /uninstall /quiet /norestart
echo  - proceeding to next update
echo Delete KB3075853 (update for Windows Update on Win8.1/Server 2012R2)
start "title" /b /wait wusa.exe /kb:3075853 /uninstall /quiet /norestart
echo  - proceeding to next update
echo Delete KB3080149 (Telemetry)
start "title" /b /wait wusa.exe /kb:3080149 /uninstall /quiet /norestart
echo  - Completed!
pause 
