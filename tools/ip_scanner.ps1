$range = 1.255
$range | ForEach-Object {
    $ip_address = "192.168.1.$_"
    Write-Progress "Scanning IP on Network"$ip_address-PercentComplete(($_/$range.Count)*100)
    
    New-Object PSObject-Property @{
        Full_Ip_Address = $ip_address
        Ping = Test-Connection $ip_address -Quiet -Count 2
    }
} | Out-File "C:\Users\johshh\Desktop\Work\Dev\shell\bsp\shell\out\data\IpScanner_results.txt"