#lastLogin
#show only names of people that have been logged on within the last 30 days
Get-ChildItem -Path C:\Users\| Where-Object {$_.LastWriteTime -gt (Get-Date).AddDays(-30)}|format-list -Property Name