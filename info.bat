@echo off
cls
echo %date%
type delMe.txt | find "Host Name:"

echo ------------------------------------------------------------------------------
wmic computersystem get model,name,manufacturer,systemtype
wmic csproduct get version
echo ------------------------------------------------------------------------------
echo MAC Address:
getmac
echo ------------------------------------------------------------------------------
wmic bios get serialnumber
echo ------------------------------------------------------------------------------
echo IP Address:
netsh interface ip show address | findstr "IP Address"
echo ------------------------------------------------------------------------------
type delMe.txt | find "System Type"
type delMe.txt | find "Total Physical Memory:"
type delMe.txt | find "Network Cards:"

echo ------------------------------------------------------------------------------
type delMe.txt | find "OS Name:"
echo Product key:
wmic path softwarelicensingservice get OA3xOriginalProductKey

wmic OS get Version,buildNumber,BuildType,bootdevice,NumberOfUsers,OSLanguage,Registereduser,TotalVirtualMemorySize,lastbootuptime,primary,systemdrive,ststemdir


