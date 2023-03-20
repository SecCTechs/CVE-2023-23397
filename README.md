# CVE-2023-23397
Patch for MS Outlook Critical Vulnerability - CVSS 9.8

3 PowerShell scripts are included in the Patch folder.

* If your patch management software uses an evaluation and a remediation script, use the respective files/scripts.

* The All In One script will evaluate the current version of Microsoft Office and if it is not one of the versions listed in the script, it will force an Office update.
  
  The all in one script can be run manually or pushed out directly to the endpoint.

The All In One Script and Remediation scripts will **force an update without notfying the user.** 
* They will **force close Office** in order to update. Please adjust as desired.

* Endpoints with Office Versions listed in the script (up-to-date as of 3/20/23) will be force to go through the update process or have Office force closed.

Please read the comments in the PowerShell script comments for more details.
