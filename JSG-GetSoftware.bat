::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFDdRQguUAE+1BaAR7ebv/NahrV8zVdItd4jJ27myIukd1nD0cZc502gUndMJbA==
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@shift /0
title JSG-GetSoftware
cd bin
::������

@echo off
mode con:cols=77 lines=40
color 0b
cls
echo Please Wait...
echo Secure By JSG
set name=GetNameFailed
:GetNameFailed
cls
echo ��ⲻ��Ӧ�ó�����
echo ���������:
update http://update.jamsg.cn/Software/list.txt
echo.
echo ������Ҫ����/���ص������
set /p name=
:search
update http://update.jamsg.cn/Software/%name%/updatever.txt >update.txt
for /f "delims=" %%a in (update.txt) do (
set update=%%a
)
del update.txt
if %name%==GetNameFailed goto GetNameFailed
title JSG-Updater_%name%
:checkupdate
color 0a
cls
echo ��ȡ������Ϣ...
update http://update.jamsg.cn/Software/%name%/info.txt
echo ���°汾:%update%*
update http://update.jamsg.cn/Software/%name%/update.txt
echo �Ƿ���������
echo 1.����
echo 0.������
set /p choice=
if %choice%==1 goto downloadupdate
if %choice%==0 goto exit
pause
exit

:downloadupdate
cls
cd ..
.\bin\wget http://update.jamsg.cn/Software/%name%/%name%_%update%.zip
ping -n 3 127.0.0.1 >nul
cls
.\bin\7z.exe x -aoa .\%name%_%update%.zip
del .\%name%_%update%.zip
cls
%updatecmd%
echo �������
pause
del .\JSG-GetSoftware.bat

:exit
exit
::�����½���