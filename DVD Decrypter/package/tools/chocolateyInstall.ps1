if(-not (test-path "hkcu:\Software\DVD Decrypter"))
{
    Install-ChocolateyPackage 'dvddecrypter' 'exe' '/S' 'http://www.dvddecrypter.org.uk/SetupDVDDecrypter_3.5.4.0.exe'
}
else
{
    Write-Host "DVD Decrypter is already installed on your machine."
} 
