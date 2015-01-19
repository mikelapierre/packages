Install-ChocolateyZipPackage 'mediatab' 'http://mediatab.mediaarea.net/MediaTab%20v1.4%20Setup.zip' "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Install-ChocolateyInstallPackage 'mediatab' 'exe' '/S' "$(Split-Path -parent $MyInvocation.MyCommand.Definition)/MediaTab v1.4 Setup.exe"
