Write-Output "Listing All PC Services"
Get-Service | Out-File "C:\Users\johshh\Desktop\Work\Dev\shell\bsp\shell\out\Current_Services.txt"
