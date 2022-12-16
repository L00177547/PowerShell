<#
Forest/domain setup script.
Run one line at a time, under supervision!
#>

# Set the forest name
$FOREST = 'Vaughans.com'

# Name the first DC computer
Rename-Computer -NewName AD-MAINDC
# Check existing IP addresses
Get-NetIPAddress
# My interface index was #4, 
New-NetIPAddress -InterfaceIndex 4 -IPAddress 192.168.105.2 -PrefixLength 24 -DefaultGateway 192.168.105.1
# Now reboot

Restart-Computer
$FOREST = 'Vaughans.com'
# Install the required features
Install-WindowsFeature -name AD-Domain-Services -IncludeManagementTools
# Create the root domain
Install-ADDSForest -DomainName $FOREST
# Make sure DNS was installed
Get-WindowsFeature | where {($_.name -like "DNS")}
# Install DHCP 
Install-WindowsFeature DHCP -IncludeManagementTools
# First DC, so set external time sync NIST server
w32tm /config /manualpeerlist:129.6.15.28 /syncfromflags:manual /update


