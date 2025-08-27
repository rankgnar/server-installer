# RankGnar Server Installer

<p align="center">
  <img src="https://img.shields.io/badge/Version-1.0.0-green.svg" alt="Version">
  <img src="https://img.shields.io/badge/OS-Ubuntu%2020.04%2B-blue.svg" alt="OS">
  <img src="https://img.shields.io/badge/License-MIT-yellow.svg" alt="License">
</p>

<p align="center">
  This auto-installer is a <b>100% free</b> solution designed to help the community install the main automation and DevOps tools on their servers.
  <b>You don't need to install all the programs contained in it, as you can choose which tools you want to install.</b>
  Developed by <b>RankGnar</b>.
</p>

---

## 📌 Requirements and Recommendations

- Recommended VPS: **AWS**, **Digital Ocean**, **Hetzner**, or **Hostinger**
- **The server must be clean/empty** to perform the tool installation. Running the setup with other tools may cause data loss
- Recommended OS: **Ubuntu 20.04** or **Debian 11**, with **minimum 4GB RAM and 2vCPU**
- It's necessary to analyze the requirements of each application you want to install

---

## 💿 How to Run the Installer

To make the installation of tools as easy as possible, we created a short command that will update your server, download the setup script, and execute it. Everything so anyone can use it.

Just run this command in your server terminal:

```bash
bash <(curl -sSL https://raw.githubusercontent.com/rankgnar/server-installer/main/bootstrap.sh)
```

After that, just wait a few moments while the script starts and finally install the tools you want.

---

## 🔸 Available Tools

<p align="center">
  <b>Infrastructure & Management</b><br>
  🔸 Traefik 🔸 Portainer 🔸 MinIO 🔸 N8N 🔸 Supabase 🔸 Qdrant 🔸
</p>

### Current Status:
- ✅ **Traefik & Portainer** - Fully functional
- ⏳ **MinIO** - Coming soon
- ⏳ **N8N** - Coming soon  
- ⏳ **Supabase** - Coming soon
- ⏳ **Qdrant** - Coming soon
- 📋 **20+ more tools** - Planned for future releases

---

## 🚀 What does it install?

### Core Infrastructure (Required First)
**Traefik**: Reverse proxy with automatic SSL certificates
**Portainer**: Docker container management with web UI

### Applications
**MinIO**: S3-compatible object storage
**N8N**: Workflow automation platform  
**Supabase**: Open source Firebase alternative
**Qdrant**: Vector database for AI applications

---

## 📖 Usage

1. Run the bootstrap command above
2. Accept the license agreement
3. Choose applications from the menu:
   - **01** - Install Traefik & Portainer (install this first)
   - **02** - Install MinIO
   - **03** - Install N8N
   - **04** - Install Qdrant
   - **05** - Install Supabase
   - **06-25** - More tools coming soon
   - **99** - Exit installer

4. Access your applications via the provided URLs

---

## 🔧 Technical Details

- **Architecture**: Docker Swarm with stack deployments
- **SSL**: Automatic Let's Encrypt certificates via Traefik
- **Storage**: Persistent Docker volumes
- **Networking**: Overlay networks for service communication
- **Monitoring**: Built-in health checks and service discovery

---

## 📁 Repository Structure

```
├── bootstrap.sh          # Initial setup script
├── ServerInstaller.sh    # Main installer with menu
├── README.md            # This file
└── LICENSE             # MIT License
```

---

## 🤝 Contributing

We welcome contributions! Feel free to:
- Report bugs
- Suggest new applications
- Submit pull requests
- Improve documentation

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## ⚠️ Disclaimer

This installer is provided "as is" without warranty. Always backup your data before running any installation scripts. Test in a development environment first.

---

<p align="center">
  <b>Made with ❤️ by RankGnar</b><br>
  <a href="https://github.com/rankgnar">GitHub</a> • 
  <a href="https://rankgnar.com">Website</a>
</p>