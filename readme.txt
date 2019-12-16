Notes
Title: Superping script for PowerShell

!!!! See security considerations and disclaimer below  !!!!

superping.ps1 is the main script which writes log files. 
You will have to change the path to fit your environment.

superping2-terminal.ps1 is the abridged version that writes to the terminal only. Consider using write-verbose instead of 
write-host. 

computers.txt houses the list of computers to ping. Add systemnames and IP addresses as you see fit. 

Consider saving the computers.txt and log files to a separate secure location. If you do, you will need to change the path
for each file and reference. 

These scripts may not run properly if they are:
1. Not digitally signed
2. You have not allowed scripts with the following command (not recommended for security reasons). 
Set-ExecutionPolicy RemoteSigned
For more information, see the following link: 
https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_signing?view=powershell-6

Security Considerations: 
1. Digitally sign your scripts.
2. Always get permission first. Verify that you are allowed to run scripts in your environment. 
3. Select a secure location for log files and .txt files.
4. Test your scripts in an isolated, test environment.

Disclaimer: 
The sample scripts provided here are not supported. All scripts are provided AS IS without warranty of any kind. 
In no event shall the author of these scripts, or anyone else involved in the creation, production, or delivery of the scripts be liable for 
any damages whatsoever (including, without limitation, damages for loss of business profits, business interruption, 
loss of business information, or other pecuniary loss) arising out of the use of or inability to use the sample scripts or documentation, 
even if the author has been advised of the possibility of such damages.