# Script to Demonstrate ForEach Loop.
# Define the Array
$MyArray = "R", "I", "C", "H", "A", "R", "D"
# For each Item in the Array
foreach ($Letter in $MyArray)
# Output item in lowercase to terminal.
{
 $Letter.ToLower()
}