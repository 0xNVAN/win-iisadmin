# win-iisadmin

# Windows IIS admin

For extensive reading see the [SSL Labs document page](https://www.ssllabs.com/projects/documentation/)

## [IIS BASIC HARDENING CHECKLIST]  

- [X] Apply common CVE registry changes 🚧👷‍♂️🚧
- [ ] Ensure web content is on non-system partition
- [x] Ensure ‘host headers’ are on all sites :tada:
- [ ] Ensure ‘directory browsing’ is set to disabled
- [ ] Ensure ‘application pool identity’ is configured for all application pools
- [ ] Ensure ‘unique application pools’ is set for sites
- [ ] Ensure ‘application pool identity’ is configured for all application pools
- [ ] Ensure WebDav feature is disabled Ensure HTTP is redirected to HTTPS
- [ ] Request Filtering and Other Restriction Modules
- [ ] Ensure ‘maxAllowedContentLength’ is configured
- [ ] Ensure ‘maxURL request filter’ is configured
- [ ] Ensure ‘MaxQueryString request filter’ is configured
- [ ] Ensure non-ASCII characters in URLs are not allowed
- [ ] Ensure Double-Encoded requests will be rejected
- [ ] Ensure ‘HTTP Trace Method’ is disabled
- [ ] Ensure Unlisted File Extensions are not allowed
- [ ] Ensure Handler is not granted Write and Script/Execute
- [ ] Ensure ‘notListedCgisAllowed’ is set to false
- [ ] Ensure ‘Dynamic IP Address Restrictions’ is enabled
- [ ] IIS Logging Recommendations
- [ ] Ensure Default IIS web log location is moved
- [ ] Ensure Advanced IIS logging is enabled
- [ ] Ensure ‘ETW Logging’ is enabled
- [ ] Transport Encryption 🚧👷‍♂️🚧
     - Ensure HSTS Header is set
     - Ensure SSLv2 is Disabled
     - Ensure SSLv3 is Disabled
     - Ensure TLS 1.0 is Disabled
     - Ensure TLS 1.1 is Disabled
     - Ensure TLS 1.2 is Enabled
     - Ensure NULL Cipher Suites is Disabled
     - Ensure DES Cipher Suites is Disabled
     - Ensure RC4 Cipher Suites is Disabled
     - Ensure AES 128/128 Cipher Suite is Disabled
     - Ensure AES 256/256 Cipher Suite is Enabled
     - Ensure TLS Cipher Suite ordering is Configured


### [ENSURE HOST HEADERS ON ALL SITES]

Update all HTTP host headers as they may respond with server details

CVE-2000-0649 FIX - Microsoft IIS Internal IP Address Disclosure Vulnerability

1. Open CMD.exe as admin in the IIS folder [default location: 'cd C:\Windows\System32\inetsrv']
2. Update the HTTP head by typing the below, replacing HOSTNAME with the internet facing DNS: 

 `appcmd.exe set config -section:system.webServer/serverRuntime /alternateHostName:”HOSTNAME”  /commit:apphost`
 

#### Validation Testing on Android

1. Download Termux on Android GooglePlay: https://play.google.com/store/apps/details?id=com.termux
2. Open terminal and install the latest wget package by executing: **pkg install wget**
3. Install the latest openssl pacakges by executing: **pkg install openssl**
4. To open a TLS session exexcute: **openssl s_client -connect HOSTNAME:443**
5. Create an image request using HTTP 1.0 by executing: GET /image HTTP/1.0
6. HTTP header should show location as **HOSTNAME** (rather than the IP address)
7. Optional: If testing various content files or locations, repeat steps 4-6 until satisfied


#### Validation Testing on from external

1. Go to SSL Labs Server Test: https://www.ssllabs.com/ssltest/index.html
2. Type in **HOSTNAME** and then Submit the request
3. Allow time for the scans and simulations to complete
4. Scroll down to **HTTP Requests**
5. Check Location and confirm **HOSTNAME** is being sent instead of IP address


### [TRANSPORT ENCRYPTION]

Update Windows IIS SCHANNEL and CIPHER SUITES to ensure secure encryption

[SSL Rating Guide](https://github.com/ssllabs/research/wiki/SSL-Server-Rating-Guide)

#### **WIP**


