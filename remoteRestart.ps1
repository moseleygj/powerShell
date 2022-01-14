#resart remote PC
Use Powershell to restart a computer
Restart-Computer -ComputerName REMOTE_COMPUTER_NAME -Force

Use PowerShell to shutdown a computer
Stop-Computer -ComputerName REMOTE_COMPUTER_NAME -Force

Use PowerShell to restart a list of computers
restart-computer (get-content c:\work\computers.txt)

 Use PowerShell to shutdown down two computers
Stop-Computer -ComputerName "Server01", "Server02"
