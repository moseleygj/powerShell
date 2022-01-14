
Get-ChildItem -Path C:\Users\ -Exclude "BHMClocal","installer","Application Data","Administrator","Cookies","Local Settings","Public","NetHood" | Remove-Item - Force -Recurse

#remove folder
Remove-Item 'D:\temp\Test Folder1'

#remove folder - ask
#Remove-Item DIRECTORYHere - Force -Recurse

#delete files in folder
#Remove-Item C:\Test\*.*

#remove temp files
Remove-Item "C:\Windows\Logs\CBS\*.*" -Force
#remove Windows downloads
Remove-Item "C:\Windows\SoftwareDistribution\Download\*.*" -Force
#remove temp files
Remove-Item "%systemdrive%\Windows\Temp\*.*" -Force
Remove-Item "%userprofile%\Local Settings\Temp\*.*" -Force
Remove-Item "%userprofile%\AppData\Local\Temp\*.*" -Force
Remove-Item "C:\ProgramData\Microsoft\Windows\WER\ReportQueue\*.*" -Force
 
#get-ChildItem  c:\Users\ |Where-Object { $_.PSIsContainer -and $_.Name.StartsWith("genEp")}
#
#Application Data
#bhmclocal
#Administrator
#installer
#Cookies
#Local Settings
#My Documents
#NetHood
#ntuser.dat

$confirmation = Read-Host "Ready? [y/n]"
while($confirmation -ne "y")
{
    if ($confirmation -eq 'n') {exit}
    $confirmation = Read-Host "Ready? [y/n]"
} 