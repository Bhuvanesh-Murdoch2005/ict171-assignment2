# Ctrl + Shift + Game 🎮  
**ICT171 Assignment 2 – Cloud Server Project (2025)**  
**Student Name:** Bhuvanesh Krishnan Vijayaraj  
**Student ID:** 34580045  
**Domain:** https://bhuvi.xyz  
**Public IP:** 54.66.59.90  

---

## 📄 Project Description  
Ctrl + Shift + Game is a themed static blog website hosted on an AWS EC2 instance (Ubuntu 24.04), served inside a Docker container running Apache HTTP Server. The project includes three story-driven game pages and demonstrates infrastructure setup, scripting, security, and containerization.

---

## 🛠️ Technologies Used  
- **AWS EC2** (Ubuntu 24.04 LTS)  
- **Apache2 (httpd:2.4 Docker image)**  
- **Docker & Docker Compose**  
- **Certbot + Let’s Encrypt (SSL/TLS)**  
- **GitHub (version control)**  
- **GoDaddy (custom domain configuration)**  

---

## 📁 Folder & File Structure  

```
.
├── Dockerfile
├── docker-compose.yml
├── setup.sh
├── index.html
├── rdr2.html
├── tlou2.html
├── uncharted4.html
├── style.css
└── images/
```

---

## ✅ Key Features  
- Dockerized web server using Apache with persistent container restart policy.  
- Secured HTTPS using Let’s Encrypt SSL certificate via Certbot.  
- Live website linked to GoDaddy-registered domain [bhuvi.xyz](https://bhuvi.xyz).  
- Version-controlled repository with commit history and feature branches.  
- Multi-page layout with themed content and character profiles.  

---

## 🚀 Deployment Instructions  

To deploy this server locally or on a new EC2 instance:  
```bash
git clone https://github.com/Bhuvanesh-Murdoch2005/ict171-assignment2.git
cd ict171-assignment2
docker-compose up -d
```

For rebuilds:  
```bash
docker-compose down --volumes --remove-orphans
docker-compose build --no-cache
docker-compose up -d
```

---

## 🎥 Video Explainer  
_A video walkthrough demonstrating the deployment, domain linking, Docker container, GitHub setup, and live testing will be uploaded shortly._  

---

## 🧲 Testing & Verification  
- ✅ Website is live at: [https://bhuvi.xyz](https://bhuvi.xyz)  
- ✅ HTTPS secured with valid SSL certificate  
- ✅ Docker container auto-restarts with `restart: unless-stopped`  
- ✅ Page routing confirmed across all devices and browsers  
- ✅ Website verified using public DNS propagation tools and browser inspection  

---

## 📚 References  
- [Apache HTTP Server Docs](https://httpd.apache.org/)  
- [Docker Documentation](https://docs.docker.com/)  
- [Certbot SSL Setup](https://certbot.eff.org/)  
- [AWS EC2 Documentation](https://docs.aws.amazon.com/ec2/)  
- [GoDaddy DNS Support](https://au.godaddy.com/help/edit-dns-zone-files-4080)  
- [GitHub Student Pack](https://education.github.com/pack)

---

## 🔒 Licensing & Fair Use Notice  
This project was developed for educational purposes only as part of Murdoch University's ICT171 assignment.  
All logos, character images, and references to:
- **Red Dead Redemption 2** (© Rockstar Games)  
- **The Last of Us Part II** (© Naughty Dog)  
- **Uncharted 4: A Thief’s End** (© Sony Interactive Entertainment)  

are the intellectual property of their respective owners and used strictly under **fair academic use**.  
The server is not monetized or publicly promoted for commercial gain.

---
