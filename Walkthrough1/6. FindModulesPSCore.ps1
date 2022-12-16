# Store a list of the PSEdition_Core Modules in the Variable PGSM.
$PGSM = Find-Module -Name * -Tag 'PSEdition_Core'
# Output There are (PGSM.Count) Modules that support PowerShell Core Edition in the PowerShell Gallery 
"There are {0:N0} Modules that support PowerShell Core Edition in the PowerShell Gallery" -f $PGSM.Count