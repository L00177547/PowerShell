<#
Server setup script.
Run one line at a time, under supervision!
#>

# Name the first DC computer
Rename-Computer -NewName Second-Server
# Check existing IP addresses
Get-NetIPAddress
# My interface index was #6, 
New-NetIPAddress -InterfaceIndex 6 -IPAddress 192.168.105.3 -PrefixLength 24 -DefaultGateway 192.168.105.1
# Set DC-1 as being the DNS
Set-DnsClientServerAddress -InterfaceIndex 6 -ServerAddresses 192.168.105.2
# Join the domain, you will be asked for dc-1 username and password
add-computer –domainname "vaughans.com"  -restart
# Now reboot
Restart-Computer
# Allow for remote scripting
Enable-PSRemoting