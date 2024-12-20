$ErrorActionPreference = 'Stop' # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  url                    = 'https://dahuawiki.com/images/Files/Software/SmartPSS_Lite/SmartPSSLite_V1.003.0000006.0.R.240517.zip'
  checksum               = 'B4730AF7DD84A383C70A69807E411B056B29A92343D539C4CA38D443EAFBE300'
  checksumType           = 'sha256'
  UnzipLocation          = "$env:TMP"
}
Install-ChocolateyZipPackage @packageArgs

$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'exe'
  SilentArgs             = '/S'
  File                   = "$env:TMP\SmartPSSLite_V1.003.0000006.0.R.240517.exe"
}
Install-ChocolateyInstallPackage @packageArgs