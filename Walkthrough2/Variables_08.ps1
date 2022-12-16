# Script to Demonstrate setting a variable to the PI value
# And making it read-only
New-Variable JORzVariable -value 3.142 -description "PI with write-protection" -option ReadOnly
Get-Variable JORzVariable