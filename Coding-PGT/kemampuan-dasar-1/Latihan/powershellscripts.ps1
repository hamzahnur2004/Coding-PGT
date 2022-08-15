Write-Host "Hello, world!"
echo "Hello, world!"
Get-WmiObject -Class win32_operatingsystem -ComputerName localhost
Select-Object -Property CSName,@{n="Last Booted";
e={[management.managementDateTimeConverter]::ToDateTime($_.LastBootUpTime)}}
