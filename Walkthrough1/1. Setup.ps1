# Check the existing Version of PowerShell
$PSVersiontable
# Set the Execution Policy
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Force
# Install nuget as a package provider.
Install-PackageProvider Nuget -MinimumVersion 2.8.5.201 -Force | Out-Null
# Install the module PowerShellGet ignoring warning messages about installation conflicts.
Install-Module -Name PowerShellGet -Force -AllowClobber
# Create the C:\PowerShell Directory
mkdir C:\PowerShell