$packageName = 'rawcap'
$url = 'http://www.netresec.com/?download=RawCap&ref=chocolatey'
$environmentVariableTarget = 'User'

$binRoot = Get-BinRoot
Write-Debug "Bin Root is $binRoot"
$installDir = Join-Path "$binRoot" "$packageName"
$rawcapPath = Join-Path $installDir 'RawCap.exe'

if (![System.IO.Directory]::Exists($installDir)) {[System.IO.Directory]::CreateDirectory($installDir)}

Get-ChocolateyWebFile "$packageName" "$rawcapPath" "$url"
Install-ChocolateyPath $installDir $environmentVariableTarget
