#Shutdown PC
#NEED TO LOG IN AS ADMIN FIRST

$name = Read-Host "Please enter the PC name you want to shutdown"
Stop-Computer -ComputerName $name -Force
