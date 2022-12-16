# Script to Create a Module called HelloWorld.psm1
# Set the Module Path to the current Logged in user
$MyModulePath = "C:\Users\$env:USERNAME\Documents\Powershell\Modules\HelloWorld"
# Set Variable MyModule.
# Components of the Module
$MyModule = @"
#HelloWorld.psm1
Function Get-HelloWorld {
    "Hello World From Richard"
}
"@
# Create the Directory
New-Item -Path $MyModulePath -ItemType Directory -Force | Out-Null
# Using the components above Create the Module HelloWorld.psm1
$MyModule | Out-File -FilePath $MyModulePath\HelloWorld.psm1
# Get and list Modules with the Name HelloWorld
Get-Module -Name HelloWorld -ListAvailable
