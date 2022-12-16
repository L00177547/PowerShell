# Set variable PGSM = List of available Modules.
$PGSM = Find-Module -Name *
# Output there are (PGSM.Count) modules in the Powershell Gallery 
"There are {0:N0} Modules in the PowerShell Gallery" -f $PGSM.Count