# 🛠️ Setup Instructions

## 🖥️ VM Setup
1. Create a CentOS Stream 9 VM (Server).
2. Clone it to make a second VM (Client).

## 🌐 Network Configuration
- Set both VMs to "Internal Network" or "Host-Only Adapter".
- Assign static IPs using `nmtui`:
  - Server: 192.168.1.100/24
  - Client: 192.168.1.101/24

## 🔧 Server Configuration
1. Set hostname: `hostnamectl set-hostname fileserver`
2. Install SSH:
```bash
dnf install -y openssh-server
systemctl enable sshd
systemctl start sshd
```
3. Create groups: `groupadd sales`, `groupadd hr`
4. Add users (see `users_and_groups.txt`)
5. Create shared directories with appropriate permissions (770)
6. Enable firewall SSH port.

## 💻 Client Usage
- Connect to server: `ssh alice@192.168.1.100`
- Transfer files: `scp file.txt alice@192.168.1.100:/srv/sales/`

## 🧰 Backup & Monitoring
See [backup_and_monitoring.md](./backup_and_monitoring.md)
