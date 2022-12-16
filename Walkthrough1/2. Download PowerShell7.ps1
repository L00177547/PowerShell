# Download PowerShell 7 installation script
# Set Directory to C:\PowerShell
Set-Location C:\PowerShell
$URI = "https://aka.ms/install-powershell.ps1"
Invoke-RestMethod -Uri $URI |
Out-File -FilePath C:\PowerShell\Install-PowerShell.ps1