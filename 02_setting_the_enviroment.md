
# Setting Up The Environment

This document describes the steps taken to prepare the environment for the Oracle MCP Lab.  
The setup consists of a VirtualBox-based Oracle Linux VM with Oracle Database, along with local and server-side tools to support development and experimentation.

---

## 1. Virtual Machine Setup
- Installed **VirtualBox** on the host machine.  
- Created a VM running **Oracle Linux 8.8**.  
- Installed **Oracle Database 19.3** on the Oracle Linux VM, configured as a **CDB (Container Database)** with a **PDB (Pluggable Database)** named `MCPLab`.  

---

## 2. Local Tools (on the host machine)
To connect and work with the database, the following tools were installed on the host system:
- **SQLcl** – Oracle command-line interface.  
- **Visual Studio Code** – Lightweight modern IDE.  
- **SQL Developer** – Oracle’s official development and management tool.  
- **Notepad++** – General purpose text editor for quick edits.  

---

## 3. Server Tools (inside the Oracle Linux VM)
To make editing and workflow more efficient, the following tools were installed inside the VM and database server:
- **tmux** – Terminal multiplexer for easier session and editing management.  
- **vim** – Text editor installed on the server for file manipulation and code editing.  

---

## 4. File Transfer Tools
For transferring files between the host and the VM/database server, the following tools were used:
- **MobaXterm** – SSH client and file transfer utility.  
- **SCP** – Secure Copy Protocol for command-line file transfers.  
- **PowerShell** – Used on the host for managing and copying files to the server.  

---

## Summary
With this environment:
- Oracle Database 19.3 is running on Oracle Linux 8.8 inside VirtualBox.  
- SQLcl, VS Code, and SQL Developer provide multiple development entry points.  
- tmux and vim improve productivity inside the Linux environment.  
- MobaXterm, SCP, and PowerShell support efficient file transfer and system management.  

This setup establishes a flexible playground for experimenting with modern Oracle development practices.
