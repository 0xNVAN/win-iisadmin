##NV-18092020## Log purge runs every Weds at 08:00am

forfiles /p "C:APPNAME\Logs\IIS\W3SVC1" /s /m *.* /c "cmd /c Del @path" /d -14
forfiles /p "C:\APPNAME\Logs\WebConsole\Archive" /s /m *.* /c "cmd /c Del @path" /d -30
forfiles /p "C:\APPNAME\ABC" /s /m *.* /c "cmd /c Del @path" /d -30
forfiles /p "C:\APPNAME\Logs\XYZ" /s /m *.* /c "cmd /c Del @path" /d -1