if(-not (test-path "hklm:\SOFTWARE\Classes\Installer\Products\068CE4D61134FE84E9455686288FAD77"))
{
    Install-ChocolateyPackage 'wincheat' 'exe' '/S /v/qn' 'http://alinconstantin.dtdns.net/Download/WinCheat/Versions/1.7/WinCheatSetup.exe'
}
else
{
    Write-Host "WinCheat is already installed on your machine."
} 
