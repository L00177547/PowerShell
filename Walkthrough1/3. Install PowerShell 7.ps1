# Set the paramaters for the Powershell installation and then run the install
# using those paramaters.
# Define the Paramaters for the installation.
$MYPARAMS = @{
	UseMSI = $true
	Quiet = $true
	AddExplorerContextMenu = $true
	EnablePSRemoting = $true
}
# Run the Install PowerShell Script using the paramaters specified in the @MYPARAMS
c:\PowerShell\Install-PowerShell.ps1 @MYPARAMS

	