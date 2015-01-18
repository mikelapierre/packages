$binRoot = Get-BinRoot
Write-Debug "Bin Root is $binRoot"
$installDir = Join-Path "$binRoot" "$packageName"

Install-ChocolateyZipPackage 'tcptrace' 'http://www.pocketsoap.com/tcptrace/tcpTrace081.zip' $installDir
Install-ChocolateyPath $installDir 'User'
