$packageName = 'wolcmd'
$url = 'http://www.depicus.com/downloads/WolCmd.zip'
$environmentVariableTarget = 'User'

$binRoot = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Write-Debug "Bin Root is $binRoot"
$installDir = Join-Path "$binRoot" "$packageName"

Install-ChocolateyZipPackage "$packageName" "$url" $installDir
Install-ChocolateyPath $installDir $environmentVariableTarget
