# Purpose
Activate Windows 10 Enterprise Edition: The script sets a KMS client key specific to Windows 10 Enterprise and attempts activation using publicly available KMS servers.

## Retry Mechanism: 
If activation fails with one server, the script automatically retries using alternative servers.

## User-Friendly Execution:
Displays clear progress updates.
Prompts to restart the computer after successful activation.
Silent Operation: Suppresses unnecessary output using //nologo and redirects irrelevant outputs to nul.

## Structure
#### @echo off:
Disables command echoing to keep the output clean.

#### title and cls: 
Sets a title for the script window and clears the screen for better readability.

## Activation Steps:
#### Set Product Key: Uses the command:
bat
Copy code
cscript //nologo c:\windows\system32\slmgr.vbs /ipk NPPR9-FWDCX-D2C8J-H872K-2YT43 >nul
This sets the default KMS client key for Windows 10 Enterprise.

## Configure KMS Server: The script cycles through several KMS servers:
kms.loli.beer
kms.digiboy.ir
kms.msguides.com
kms.luodi.net
zh.us.to Each is defined using:
bat
Copy code
set KMS_Sev=<server_address>
Attempt Activation: Uses the slmgr.vbs script to set the KMS server and activate:

bat
Copy code
cscript //nologo c:\windows\system32\slmgr.vbs /skms %KMS_Sev% >nul
cscript //nologo c:\windows\system32\slmgr.vbs /ato

## Retry Logic:
If activation fails, the script increments a counter (set /a i+=1) and retries with the next server.
If all servers fail, it exits with an error message.

## Success Path:
If activation succeeds, the script:
Displays a success message.
Prompts the user to restart the computer.
GitHub Relevance

## Open Source Context:
Public KMS servers are used, making the script functional but with potential ethical and legal implications depending on its use case.
If published on GitHub, it might be flagged due to concerns about piracy.

## Educational Use:
This script could be a resource for learning about KMS activation.
Ensure proper disclaimers about legal use (e.g., activating legitimate volume licenses) if sharing on GitHub.

## Licensing Note:
Mention in the README file that the script is for educational purposes and shouldn't be used for unauthorized activation.
Possible GitHub Documentation

## In the GitHub repository, include:

### README File:
Brief description of the script's purpose.
How to use it (steps to save and run the script).
Disclaimer regarding ethical/legal use.

### License:
legal use for educational purposes.
