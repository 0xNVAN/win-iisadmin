# win-iisadmin
Windows IIS admin

[IIS HARDENING]


CVE-2000-0649 FIX - Microsoft IIS Internal IP Address Disclosure Vulnerability

1. Open CMD.exe as admin in IIS folder [C:\Windows\System32\inetsrv]
2. Type: appcmd.exe set config -section:system.webServer/serverRuntime /alternateHostName:”XXXXXXXXXXXX”  /commit:apphost
