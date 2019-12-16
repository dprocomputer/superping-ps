# Super-Duper Ping Test #2 (Quick and dirty ping of multiple systems with results in the terminal)
# This uses write-host which is fine for quick internal tests, but consider write-verbose

Set-Location -Path E:\scripts\ps-scripts\superping

$PingComputers = Get-Content "computers.txt" 

ForEach($SystemName In $PingComputers)
{$PingStatus = Get-CimInstance Win32_PingStatus -Filter "Address = '$SystemName'" |
    Select-Object address, StatusCode
If ($PingStatus.StatusCode -eq 0)
{Write-Host "$SystemName is alive" -ForegroundColor Green}   
Else
{Write-Host "$SystemName is dead"  -ForegroundColor Red}
}
Write-Host `n "END OF SUPERPING #2... YEAH!" -ForegroundColor CYAN `n `n