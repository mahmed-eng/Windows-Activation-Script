@echo off
title Windows 10 Enterprise Activation Script
cls
echo ************************************
echo Activating Windows 10 Enterprise Edition
echo ************************************
echo Setting up KMS Client Key for Windows 10 Enterprise...
cscript //nologo c:\windows\system32\slmgr.vbs /ipk NPPR9-FWDCX-D2C8J-H872K-2YT43 >nul
echo Product Key has been set.

echo Configuring KMS Server...
set i=1

:server
if %i%==1 set KMS_Sev=kms.loli.beer
if %i%==2 set KMS_Sev=kms.digiboy.ir
if %i%==3 set KMS_Sev=kms.msguides.com
if %i%==4 set KMS_Sev=kms.luodi.net
if %i%==5 set KMS_Sev=zh.us.to
if %i%==6 echo All servers tried, activation failed. Exiting... & pause & exit

echo Trying KMS Server: %KMS_Sev%
cscript //nologo c:\windows\system32\slmgr.vbs /skms %KMS_Sev% >nul
cscript //nologo c:\windows\system32\slmgr.vbs /ato | find /i "successfully" && (
    echo ************************************
    echo Activation Successful!
    echo ************************************
    choice /n /c YN /m "Do you want to restart your PC now? [Y/N]" && (
        shutdown.exe /r /t 00
    ) || (
        exit
    )
) || (
    echo Connection to %KMS_Sev% failed. Trying another server...
    echo Please wait...
    echo ************************************
    set /a i+=1
    goto server
)

pause
