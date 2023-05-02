$BackUpPath="C:\Users\$env:username\Downloads\Backup"
$userName=$env:username
$userRoot="C:\Users\$env:username"
$signatures="C:\Users\$username\AppData\Roaming\Microsoft\Signatures"
$pathAndFolder=$PublicPath+"_"+$userName
$Docs="C:\Users\$env:username\"
$Outlook="C:\Users\$env:username\AppData\Local\Microsoft\Outlook"
$ChromeMain="C:\Users\$env:username\AppData\Local\Google\Chrome\User Data\Default"
$chromeP1="C:\Users\$env:username\AppData\Local\Google\Chrome\User Data\Profile 1"
$chromeP2="C:\Users\$env:username\AppData\Local\Google\Chrome\User Data\Profile 2"

if (Test-Path $PublicPath) {
    # Folder exists - Do something here
    Write-host "$PublicPath Folder Exists. Nothing to do!" -f Green
    exit
}
else {
# Folder does not exist - Create folder
New-Item -ItemType Directory -Path $BackUpPath
Write-host "**Folder $BackUpPath Created**" -f Green

#works
New-Item -ItemType Directory -Path "$BackUpPath\Desktop"
Write-host "**Folder $BackUpPath\Desktop Created**" -f Green
Copy-Item -Path "C:\Users\Public\Desktop\*"  -Destination "$BackUpPath\Desktop" -Recurse

#Documents
New-Item -ItemType Directory -Path "$BackUpPath\Documents"
Write-host "**Folder $BackUpPath\Documents Created**" -f Green
Copy-Item -Path "$docs\OneDrive - Princeton University\Documents\*" -Destination "$BackUpPath\Documents" -Recurse

<# #Downloads
New-Item -ItemType Directory -Path "$BackUpPath\Downloads"
Write-host "**Folder $BackUpPath\Downloads Created**" -f Green
Copy-Item -Path "$Docs\Downloads\*"  -Destination "$BackUpPath\Downloads" -Exclude("Backup") -Recurse #>

#Pictures
New-Item -ItemType Directory -Path "$BackUpPath\Pictures"
Write-host "**Folder $BackUpPath\Pictures Created**" -f Green
Copy-Item -Path "$Docs\OneDrive - Princeton University\Pictures\*"  -Destination "$BackUpPath\Pictures" -Recurse

#Videos
New-Item -ItemType Directory -Path "$BackUpPath\Videos"
Write-host "**Folder $BackUpPath\Videos Created**" -f Green
Copy-Item -Path "$Docs\Videos\*"  -Destination "$BackUpPath\Videos" -Recurse

#Music
New-Item -ItemType Directory -Path "$BackUpPath\Music"
Write-host "**Folder $BackUpPath\Music Created**" -f Green
Copy-Item -Path "$Docs\Music\*"  -Destination "$BackUpPath\Music" -Recurse

#outlook Signatures
New-Item -ItemType Directory -Path "$BackUpPath\Outlook_Signatures"
Write-host "**Folder $signatures Created**" -f Green
Copy-Item -Path "$signatures\*"  -Destination "$BackUpPath\Outlook_Signatures" -Recurse

#Chrome bookmarks Default
New-Item -ItemType Directory -Path "$BackUpPath\Chrome_Bookmarks\Default"
Write-host "**Folder $BackUpPath\Chrome_Bookmarks\Default Created**" -f Green
Copy-Item -Path "$ChromeMain\Bookmarks"  -Destination "$BackUpPath\Chrome_Bookmarks\Default" -Recurse

##chrome profiles 1
#New-Item -ItemType Directory -Path "$BackUpPath\Chrome_Bookmarks"
if (Test-Path "$ChromeP1") {
    New-Item -ItemType Directory -Path "$BackUpPath\Chrome_Bookmarks\Profile 1"
    Write-host "'$BackUpPath\Chrome_Bookmarks\Profile 1' Folder Exists. Backing up" -f Green
    Write-host "**Folder '$BackUpPath\Chrome_Bookmarks\Profile 1' Created**" -f Green
    Copy-Item -Path "$ChromeP1\Bookmarks"  -Destination "$BackUpPath\Chrome_Bookmarks\Profile 1" -Recurse    
}

else {
    write-host "Chrome Profile 1 saved"
}
##chrome profiles 2
if (Test-Path "$ChromeP2") {
    New-Item -ItemType Directory -Path "$BackUpPath\Chrome_Bookmarks\Profile 2"
    Write-host "'$BackUpPath\Chrome_Bookmarks\Profile 2' Folder Exists. Backing up" -f Green
    Write-host "**Folder '$BackUpPath\Chrome_Bookmarks\Profile 2' Created**" -f Green
    Copy-Item -Path "$ChromeP2\Bookmarks"  -Destination "$BackUpPath\Chrome_Bookmarks\Profile 2" -Recurse
    exit
}
else {
    write-host "Chrome Profile 2 saved"
}

<# stop-process -name outlook.exe -Force
#outlook .PST_OST
New-Item -ItemType Directory -Path "$BackUpPath\Outlook"
Write-host "**Folder $Outlook Created**" -f Green
Copy-Item -Path "$Outlook\*.ost"  -Destination "$BackUpPath\Outlook" -Recurse
 #>}