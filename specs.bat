cls
echo "Host Name:" > %homedrive%%homepath%%\specs.txt
echo "==========" >> %homedrive%%homepath%%\specs.txt
hostname >> %homedrive%%homepath%%\specs.txt



getmac >> %homedrive%%homepath%%\specs.txt


wmic bios get serialnumber >> %homedrive%%homepath%%\specs.txt

ipconfig >> %homedrive%%homepath%%\specs.txt


wmic csproduct get name,vendor >> %homedrive%%homepath%%\specs.txt


wmic computersystem get model,name,manufacturer,systemtype >> %homedrive%%homepath%%\specs.txt


wmic MEMORYCHIP get BankLabel, DeviceLocator, Capacity, Speed,memorytype >> %homedrive%%homepath%%\specs.txt

wmic OS get OSArchitecture >> %homedrive%%homepath%%\specs.txt

systeminfo | findstr /I type: >>  %homedrive%%homepath%%\specs.txt


