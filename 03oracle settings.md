

In this post, I describe how I built a small Oracle Database 19c lab on my Windows computer using VirtualBox and Oracle Linux.

What I Did

1. Created a Virtual Machine
Installed Oracle Linux 8.8 in VirtualBox.
Configured Bridged Networking and gave it a static IP address (192.168.1.99).


2. Prepared the System
Installed oracle-database-preinstall-19c.
Created the /u01/app/oracle directory structure.
Created the oracle user and configured environment variables (ORACLE_HOME, ORACLE_SID, NLS_LANG).
Set SELinux to permissive and disabled the firewall.


3. Installed Oracle Database 19c
Ran the installer in silent mode using INSTALL_DB_AND_CONFIG.
Created a database named ORCL19 and a pluggable database MCPLAB.


4. Configured Network Access
Updated the listener to listen on 0.0.0.0.
Created simple one-line listener.ora and tnsnames.ora files.
Verified remote connections using tnsping and sqlplus from my Windows host.


5. Installed Oracle Instant Client on Windows
Installed Oracle Instant Client 23.9 with a PowerShell script.
The script copied tnsnames.ora, set environment variables, updated the PATH, and printed a short verification checklist.



Result

Now I have a fully functional Oracle Database 19c environment running on Oracle Linux, and I can connect to it easily from Windows using SQL*Plus or SQLcl.




