$tempCaptureFile = [System.IO.Path]::GetTempFileName() + ".pcap"

$tsharkArgs = "-i 5 -w $tempCaptureFile"
Start-Process -FilePath "C:\Program Files\Wireshark\tshark.exe" -ArgumentList $tsharkArgs -NoNewWindow

Write-Host "Capture is running. Press Enter to stop the capture"

Read-Host

Stop-Process -Name tshark

Write-Host "Capture saved to: $tempCaptureFile"

Start-Process -FilePath "C:\Program Files\Wireshark\wireshark.exe" -ArgumentList $tempCaptureFile