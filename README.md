# 🔐 Secure Multi-User File Sharing Server on a LAN

This project simulates a secure file-sharing server setup in a local area network (LAN) environment, designed for departmental collaboration (HR, Sales, etc.).

## 📌 Key Features
- Group-based file access control
- Secure file transfer using SSH and SCP
- Department-wise shared folders
- Scheduled backups and system monitoring
- Configured on CentOS Stream 9 using VirtualBox

## 🛠️ Technologies Used
- OS: CentOS Stream 9
- Virtualization: VirtualBox
- File Permissions: chmod, chown, umask
- File Transfer: SSH (sshd), SCP
- Backup: tar, gzip
- Monitoring: top, free -m, df -h
- Firewall: firewalld
- Package Manager: dnf

## 📦 How to Set Up
See [setup_instructions.md](./setup_instructions.md) for detailed steps.

## ⚙️ Automation Script
You can run [server_config.sh](./server_config.sh) to automatically configure the server.

## 📁 File Structure
Each department (e.g., `/srv/hr`, `/srv/sales`) is accessible only to its group members.

## 📤 File Transfer Example
```bash
scp employee.txt alice@192.168.1.100:/srv/sales/
```

## 🔒 Firewall Commands
```bash
firewall-cmd --permanent --add-service=ssh
firewall-cmd --reload
```

---

Created as part of a Linux administration lab project.
