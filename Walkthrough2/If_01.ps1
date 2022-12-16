# Script 1 to Demonstrate IF statements
# Define Variable1
$Variable1 = 12
# Define Variable2
$Variable2 = 32
# If Variable1 is not equal to Variable2
if ( $Variable1 -ne $Variable2 )
# Output "The condition was true"
{
 Write-Output "The condition was true"
}
# Else Output "The condition was False"
else {Write-Output "The condition was False"}