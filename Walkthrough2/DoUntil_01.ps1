# Script to demonstrate Do/Until Loop.
# Double check if single or double inverted commas are required.
# Define Variable a
$a = 0
# Do everything in the brackets
do
{
 "Starting Loop $a"
 $a
 $a++
 "Now `$a is $a"
} 
# Until a is Greater than or equal to 5
until ($a -ge 5)