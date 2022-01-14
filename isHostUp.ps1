$names = Get-content "hosts.txt"

foreach ($name in $names){
  if (Test-Connection -ComputerName $name -Count 1 -ErrorAction SilentlyContinue){
    Write-Host "$name, UP" -foregroundcolor green -backgroundcolor black
    Write-Host "----------------------------"
    Write-Host "                            "
    #make file with list of computer that work in .txt
  }
  else{
    Write-Host "$name, DOWN" -foregroundcolor red -backgroundcolor black
    Write-Host "----------------------------"
    Write-Host "                            "
        #make file with list of computer that work in .txt
  }
}