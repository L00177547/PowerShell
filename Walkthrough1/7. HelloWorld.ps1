$MyModulePath = "C:\Users\$env:USERNAME\Documents\Powershell\Modules\HelloWorld"
$MyModule = @"
#HelloWorld.psm1
Function Get-HelloWorld {
    "Hello World From Richard"
}
"@
New-Item -Path $MyModulePath -ItemType Directory -Force | Out-Null
$MyModule | Out-File -FilePath $MyModulePath\HelloWorld.psm1
Get-Module -Name HelloWorld -ListAvailable
