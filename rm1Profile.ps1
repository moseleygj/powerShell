$name = Read-Host "Please enter the user name you want to REMOVE"
Get-ChildItem "HKLM:\Software\Microsoft\Windows NT\CurrentVersion\ProfileList" |
    ForEach-Object{
        $profilepath=$_.GetValue('ProfileImagePath')    
        if($profilepath -eq '$name'){
            Write-Host "Removing item: $profilepath" -ForegroundColor green
           #Remove-Item $_.PSPath -Whatif -Recurse  #ask user 
           #Remove folder #Remove-Item $profilepath -Recurse -Force
            Write-host "removing $name ..."
        }
        else

        {
            Write-Host "Skipping item: $profilepath " -Fore blue -Back white
            
	    }
    }
    #implement a prompt for user input to ignore and one to delete