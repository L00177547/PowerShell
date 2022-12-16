# Check the existing Version
$PSVersiontable
# Set the Execution Policy
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Force
# Install nuget as a package provider.
Install-PackageProvider Nuget -MinimumVersion 2.8.5.201 -Force | Out-Null
# Install the module
Install-Module -Name PowerShellGet -Force -AllowClobber
