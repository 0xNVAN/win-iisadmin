# win-iisadmin
Windows IIS admin

[IIS BASIC HARDENING CHECKLIST]

Ensure web content is on non-system partition
Ensure ‘host headers’ are on all sites
Ensure ‘directory browsing’ is set to disabled
Ensure ‘application pool identity’ is configured for all application pools
Ensure ‘unique application pools’ is set for sites
Ensure ‘application pool identity’ is configured for all application pools
Ensure WebDav feature is disabled Ensure HTTP is redirected to HTTPS
Request Filtering and Other Restriction Modules
Ensure ‘maxAllowedContentLength’ is configured
Ensure ‘maxURL request filter’ is configured
Ensure ‘MaxQueryString request filter’ is configured
Ensure non-ASCII characters in URLs are not allowed
Ensure Double-Encoded requests will be rejected
Ensure ‘HTTP Trace Method’ is disabled
Ensure Unlisted File Extensions are not allowed
Ensure Handler is not granted Write and Script/Execute
Ensure ‘notListedCgisAllowed’ is set to false
Ensure ‘Dynamic IP Address Restrictions’ is enabled
IIS Logging Recommendations
Ensure Default IIS web log location is moved
Ensure Advanced IIS logging is enabled
Ensure ‘ETW Logging’ is enabled
Transport Encryption
Ensure HSTS Header is set
Ensure SSLv2 is Disabled
Ensure SSLv3 is Disabled
Ensure TLS 1.0 is Disabled
Ensure TLS 1.1 is Disabled
Ensure TLS 1.2 is Enabled
Ensure NULL Cipher Suites is Disabled
Ensure DES Cipher Suites is Disabled
Ensure RC4 Cipher Suites is Disabled
Ensure AES 128/128 Cipher Suite is Disabled
Ensure AES 256/256 Cipher Suite is Enabled
Ensure TLS Cipher Suite ordering is Configured

[UPDATING HOST HEADERS]

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
