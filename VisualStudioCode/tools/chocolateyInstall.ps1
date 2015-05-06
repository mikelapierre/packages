$packageName = 'visualstudiocode'
$installerType = 'EXE'
$url = 'http://download.microsoft.com/download/0/D/5/0D57186C-834B-463A-AECB-BC55A8E466AE/VSCodeSetup.exe'
$silentArgs = ''

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"
