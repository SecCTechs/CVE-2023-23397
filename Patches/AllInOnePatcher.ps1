#Patcher script for CVE-2023-23397

#Get the version of Office on the endpoint.
$OfficeVer = Get-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Office\ClickToRun\Configuration' | Select-Object -ExpandProperty VersionToReport

#If up-to-date, do nothing. Else, run the patch. Edit as necessary. See remediation script for details on how to patch.
#Note that I am only accounting for versions of MS Office 365. You can view stanadlone Office versions here (e.g. 2016, 2019): https://learn.microsoft.com/en-us/officeupdates/microsoft365-apps-security-updates.
if ($OfficeVer -eq '16.0.16130.20306' -or $OfficeVer -eq 16.0.16026.20238 -or $OfficeVer -eq 15928.20298 -or $OfficeVer -eq 15601.20578 -or $OfficeVer -eq 14931.20944) {
  echo "Up-to-date."
  exit 0
} else {
  echo "Updating..."
  #This will force an Office Update to run without notifying the user.
  cmd.exe /c "`"C:\Program Files\Common Files\microsoft shared\ClickToRun\OfficeC2RClient.exe`" /update user displaylevel=false forceappshutdown=true"
}
