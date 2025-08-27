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
- **Domain Requirements**: You need subdomains pointing to your server IP:
  - `traefik.yourserver.com` (for Traefik dashboard)
  - `portainer.yourserver.com` (for Portainer management)
  - `minio.yourserver.com` (for MinIO console)
  - `s3.yourserver.com` (for S3 API)
  - `supabase.yourserver.com` (for Supabase dashboard)
- It's necessary to analyze the requirements of each application you want to install

---

## 💿 How to Run the Installer

To make the installation of tools as easy as possible, we created a short command that will update your server, download the setup script, and execute it. Everything so anyone can use it.

Just run this command in your server terminal:

```bash
bash <(curl -sSL https://raw.githubusercontent.com/rankgnar/server-installer/master/bootstrap.sh)
```

After that, just wait a few moments while the script starts and finally install the tools you want.

---

## 🔸 Available Tools

<p align="center">
  <b>Infrastructure & Management</b><br>
  🔸 Traefik 🔸 Portainer 🔸 MinIO 🔸 N8N 🔸 Supabase 🔸 Qdrant 🔸
</p>

### Current Status:

- ✅ **Traefik & Portainer** - Fully functional reverse proxy and Docker management
- ✅ **MinIO** - Fully functional S3-compatible object storage
- ⏳ **N8N** - Coming soon (workflow automation)
- ⏳ **Qdrant** - Coming soon (vector database)
- ✅ **Supabase** - Fully functional backend-as-a-service with PostgreSQL, Auth, and REST API
- 📋 **20+ more tools** - Planned for future releases

---

## 🚀 What does it install?

### Core Infrastructure (Required First)

**Traefik**: Reverse proxy with automatic SSL certificates and HTTP→HTTPS redirects  
**Portainer**: Docker container management with web UI and agent for cluster management

### Object Storage

**MinIO**: Production-ready S3-compatible object storage with web console and API endpoints

### Backend as a Service

**Supabase**: Complete Firebase alternative including:

- PostgreSQL database with extensions
- Authentication service (GoTrue)
- REST API (PostgREST)
- Real-time subscriptions
- Dashboard and database management
- JWT token generation and management

### Coming Soon

**N8N**: Workflow automation platform with visual editor  
**Qdrant**: High-performance vector database for AI applications

---

## 📖 Usage

1. Run the bootstrap command above
2. Accept the license agreement
3. Choose applications from the menu:

   - **01** - Install Traefik & Portainer (⚠️ **install this first - required for all other apps**)
   - **02** - Install MinIO (requires 2 subdomains: console + S3 API)
   - **03** - Install N8N (coming soon)
   - **04** - Install Qdrant (coming soon)
   - **05** - Install Supabase (⚠️ **requires MinIO to be installed first**)
   - **06-25** - More tools coming soon
   - **99** - Exit installer

4. Each application will ask for:

   - Domain names (subdomains pointing to your server)
   - Username and password
   - Additional configuration as needed

5. Access your applications via the provided HTTPS URLs with automatic SSL certificates

---

## 🔧 Technical Details

- **Architecture**: Docker Swarm with stack deployments
- **SSL**: Automatic Let's Encrypt certificates via Traefik
- **Storage**: Persistent Docker volumes with external naming
- **Networking**: Overlay networks for secure service communication
- **Load Balancing**: Traefik handles routing and SSL termination
- **Security**: JWT tokens, secure passwords, and proper authentication
- **Monitoring**: Built-in health checks and service discovery
- **Multi-instance**: Support for multiple instances of the same service

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

## 🐛 Troubleshooting

### Common Issues:

- **404 Error**: Make sure your subdomains are pointing to your server IP
- **SSL Certificate Issues**: Wait 5-10 minutes for Let's Encrypt certificates to be generated
- **Service Not Starting**: Check `docker service ls` to see service status
- **Supabase Requires MinIO**: Install MinIO (option 02) before installing Supabase (option 05)

### Useful Commands:

```bash
# Check running services
docker service ls

# Check service logs
docker service logs <service-name>

# Remove a stack
docker stack rm <stack-name>

# Check Traefik dashboard for routing issues
https://traefik.yourserver.com
```

---

## ⚠️ Disclaimer

This installer is provided "as is" without warranty. Always backup your data before running any installation scripts. Test in a development environment first.

---

<p align="center">
  <b>Made with ❤️ by RankGnar</b><br>
  <a href="https://github.com/rankgnar">GitHub</a> • 
  <a href="https://https://rankgnar.online/">Website</a>
</p>
