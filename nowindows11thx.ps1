Set-ExecutionPolicy -Scope Process Unrestricted -Force
Install-Module -Name PolicyFileEditor
Import-Module PolicyFileEditor
Set-PolicyFileEntry -Path "C:\Windows\System32\GroupPolicy\Machine\Registry.pol" -Key "Software\Policies\Microsoft\Windows\WindowsUpdate" -ValueName "ProductVersion" -Data "Windows 10"
Set-PolicyFileEntry -Path "C:\Windows\System32\GroupPolicy\Machine\Registry.pol" -Key "Software\Policies\Microsoft\Windows\WindowsUpdate" -ValueName "TargetReleaseVersion" -Data "1" -Type "DWord"
Set-PolicyFileEntry -Path "C:\Windows\System32\GroupPolicy\Machine\Registry.pol" -Key "Software\Policies\Microsoft\Windows\WindowsUpdate" -ValueName "TargetReleaseVersionInfo" -Data "22H2"
Remove-Module -Name PolicyFileEditor
