# Script 2 to Demonstrate If statements
# Define the variable day
$day = 3
# If day is equal to 0 then the result is Sunday 
if ( $day -eq 0 ) { $result = 'Sunday' }
# Else If day is equal to 1 then the result is Monday
elseif ( $day -eq 1 ) { $result = 'Monday' }
# Else If day is equal to 2 then the result is Tuesday
elseif ( $day -eq 2 ) { $result = 'Tuesday' }
# Else If day is equal to 3 then the result is Wednesday
elseif ( $day -eq 3 ) { $result = 'Wednesday' }
# Else If day is equal to 4 then the result is Thursday
elseif ( $day -eq 4 ) { $result = 'Thursday' }
# Else If day is equal to 5 then the result is Friday
elseif ( $day -eq 5 ) { $result = 'Friday' }
# Else If day is equal to 6 then the result is Saturday
elseif ( $day -eq 6 ) { $result = 'Saturday' }
# Output result
$result