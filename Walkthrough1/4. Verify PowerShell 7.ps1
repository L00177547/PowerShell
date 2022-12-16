# Set I = 0
$I = 0
# Set env = Module Paths seperated by ";"
$env:PSModulePath -split ';' |
# Loop to output numbered list of paths.
Foreach-Object {"[{0:N0}] {1}" -f $I++, $_}