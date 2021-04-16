# win-iisadmin
Windows IIS admin

[IIS HARDENING]


CVE-2000-0649 FIX - Microsoft IIS Internal IP Address Disclosure Vulnerability

1. Open CMD.exe as admin in IIS folder [C:\Windows\System32\inetsrv]
2. Type: appcmd.exe set config -section:system.webServer/serverRuntime /alternateHostName:”HOSTNAME”  /commit:apphost
3. Replace HOSTNAME internet facing DNS

Validation Testing

1. Download Termux on Android GooglePlay : https://play.google.com/store/apps/details?id=com.termux
2. Open terminal and install the latest wget package by executing: pkg install wget
3. Install the latest openssl pacakges by executing: pkg install openssl
4. To open a TLS session exexcute: openssl s_client -connect HOSTNAME:443
5. Create an image request using HTTP 1.0 by executing: GET /image HTTP/1.0
