function show-menu1{
    Clear-Host
    write-host "************Menu************"
    Write-Host "* 1 show Ip address        *"
    Write-Host "* 2 show current date      *"
    Write-Host "* 3 Show routing table     *"
    Write-Host "* 3 Inactive Accounts     *"
    Write-Host "* Q Exit Script            *"
    Write-Host "************Menu************"
    }
    
    function show-ip1 {
        Get-NetIPAddress -AddressFamily IPv4 | Select-Object IPAddress
        Write-Host $A; pause  
    }
    
    
    do {
    show-menu1    
    $ANS = Read-Host "Enter selection"
    
    switch ($ANS)
    {
     1 {show-ip1}
     2 {get-date; pause}
     3 {netstat -r; pause}
     4 {Search-ADAccount -AccountInactive -UsersOnly}
     default {Write-Host "Error in selection, choose 1, 2, 3, or q"}
    }
    }while ($ANS -ne 'q')