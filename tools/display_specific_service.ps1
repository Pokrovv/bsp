Write-Output "Listing bits & wuauserv services"
Get-Service bits, wuauserv | Out-File "C:\Users\johshh\Desktop\Work\Dev\shell\bsp\shell\out\Bits_Wuauserv.txt"