# Super-Duper Ping Test (Ping of multiple systems with replies and no-replies logs)

Set-Location -Path E:\scripts\ps-scripts\superping

# variables
$PingComputers = Get-Content "computers.txt" 
$date = Get-date -Format "dddd MM/dd/yyyy HH:mm K"

Write-Output "Start Log" `r | out-file -append replies.log # use -filepath to specify external location for log files.
Write-Output "Start Log" `r | out-file -append noreplies.log

# for loop
ForEach($SystemName In $PingComputers)
{$PingStatus = Get-CimInstance Win32_PingStatus -Filter "Address = '$SystemName'" |
    Select-Object address, StatusCode
If ($PingStatus.StatusCode -eq 0)
{Write-Output "$SystemName is alive" |      
    out-file -append -filepath replies.log }   
Else
{Write-Output "$SystemName is dead" | 
    out-file -append -filepath noreplies.log}
}

Write-Output `r "Run on $date" "By $env:username at $env:computerName" `r "End Log" `r `r | out-file -append -filepath replies.log
Write-Output `r "Run on $date" "By $env:username at $env:computerName" `r "End Log" `r `r | out-file -append -filepath noreplies.log