Start-Process -FilePath "C:\Program Files\Wireshark\Wireshark.exe" -ArgumentList "-i 5 -k"

Read-Host "Press Enter to stop the capture"

Stop-Process -Name Wireshark