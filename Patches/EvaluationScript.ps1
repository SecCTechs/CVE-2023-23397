#Evaluation script for all update channels of M365

#Get the version of Office on the endpoint.
$OfficeVer = Get-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Office\ClickToRun\Configuration' | Select-Object -ExpandProperty VersionToReport

#If up-to-date, do nothing. Else, run the patch. Edit as necessary. See remediation script for details on how to patch.
if ($OfficeVer -eq '16.0.16130.20306' -or $OfficeVer -eq 16.0.16026.20238 -or $OfficeVer -eq 15928.20298 -or $OfficeVer -eq 15601.20578 -or $OfficeVer -eq 14931.20944) {
  #echo "Up-to-date."
  exit 0
} else {
  #echo "Needs an update."
  exit 1
}
