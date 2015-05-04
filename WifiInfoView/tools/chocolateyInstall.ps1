$packageName = 'wifiinfoview'
$url = 'http://www.nirsoft.net/utils/wifiinfoview.zip'
$environmentVariableTarget = 'User'

$binRoot = Get-BinRoot
Write-Debug "Bin Root is $binRoot"
$installDir = Join-Path "$binRoot" "$packageName"

Install-ChocolateyZipPackage "$packageName" "$url" $installDir
Install-ChocolateyPath $installDir $environmentVariableTarget
