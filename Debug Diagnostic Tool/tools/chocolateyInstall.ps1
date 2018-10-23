$packageName= 'debugdiagnostic'
$url        = 'https://download.microsoft.com/download/D/C/9/DC98BD0E-5A9A-4D8A-B313-22BC3604FB05/DebugDiagx86.msi'
$url64      = 'https://download.microsoft.com/download/D/C/9/DC98BD0E-5A9A-4D8A-B313-22BC3604FB05/DebugDiagx64.msi'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'msi'
  url           = $url
  url64bit      = $url64
  silentArgs    = "/quiet"
  checksum      = 'B7E42AF639FF845EB52698D04DE111E1B02992D67C7A0C484F22521C467F001C'
  checksumType  = 'sha256'
  checksum64    = 'B6485D0D0EE8F51C90CA9C15262457646C5293B902F3206405F46FDC8B54036E'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
