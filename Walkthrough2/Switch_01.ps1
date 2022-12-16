# Script to Demonstrate the Switch loop
# Define the day Variable
$day = 4
# The Switch statement compares the test value,to each of the conditions
switch ( $day )
{
 0 { $result = 'Sunday' }
 1 { $result = 'Monday' }
 2 { $result = 'Tuesday' }
 3 { $result = 'Wednesday' }
 4 { $result = 'Thursday' }
 5 { $result = 'Friday' }
 6 { $result = 'Saturday' }
}
# Output result
$result