$binRoot = Get-BinRoot
Write-Debug "Bin Root is $binRoot"
$installDir = Join-Path "$binRoot" "$packageName"

Install-ChocolateyZipPackage 'proxytrace' 'http://www.pocketsoap.com/tcptrace/proxyTrace012.zip' $installDir
Install-ChocolateyPath $installDir 'User'
