# Download PowerShell 7 installation script
# Set Directory to C:\PowerShell
Set-Location C:\PowerShell
# Set Web Address
$URI = "https://aka.ms/install-powershell.ps1"
# Sends an HTTP or HTTPS request to a RESTful web service
Invoke-RestMethod -Uri $URI |
# Create an output file called Install-PowerShell.ps1 using the piped output from the previous command. 
Out-File -FilePath C:\PowerShell\Install-PowerShell.ps1