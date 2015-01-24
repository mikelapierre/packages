$binRoot = Get-BinRoot
Write-Debug "Bin Root is $binRoot"
$installDir = Join-Path "$binRoot" "$packageName"
$rawcapPath = Join-Path $installDir 'RawCap.exe'

if (![System.IO.Directory]::Exists($installDir)) {[System.IO.Directory]::CreateDirectory($installDir)}

Get-ChocolateyWebFile 'rawcap' "$rawcapPath" 'http://www.netresec.com/?download=RawCap&ref=chocolatey'
Install-ChocolateyPath $installDir 'User'