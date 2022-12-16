<#
Remote server setup script.
Run one line at a time, under supervision!
#>

$REMOTE_SERVER = 'Second-Server'
# Set the domain name
$FOREST = 'Vaughans.com'

# Connect to Second-Server
Enter-PSSession $REMOTE_SERVER

# Install the required features
Install-WindowsFeature -name AD-Domain-Services 
# Add a new doamin controller

Install-ADDSDomainController -DomainName $FOREST -InstallDns:$true -Credential (Get-Credential "Vaughans\administrator")
# Make sure DNS was installed
Get-WindowsFeature | where {($_.name -like "DNS")}
# Install DHCP 
Install-WindowsFeature DHCP -IncludeManagementTools

Exit-PSSession
