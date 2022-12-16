$PGSM = Find-Module -Name * -Tag 'PSEdition_Core'
"There are {0:N0} Modules that support PowerShell Core Edition in the PowerShell Gallery" -f $PGSM.Count