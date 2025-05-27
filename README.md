# 🎮 Ctrl + Shift + Game – Cloud Server Project

**Live Website**: [https://bhuvi.xyz](https://bhuvi.xyz)  
**Goal**: This server can be rebuilt entirely from scratch in under 2 hours using the documentation below.  

---

- **Student Name**: Bhuvanesh Krishnan Vijayaraj  
- **Student ID**: 34580045  
- **Repository**: [GitHub Repo](https://github.com/Bhuvanesh-Murdoch2005/ict171-assignment2)  
- **Public IP**: 54.66.59.90 

---

## License

This project is licensed under the [Apache License 2.0](LICENSE).

---

## Project Description

A static gaming blog hosted on an AWS EC2 Ubuntu instance (24.04), running inside a Docker container using Apache2. HTTPS is enabled via Certbot, and the site includes three themed pages for RDR2, The Last of Us Part II, and Uncharted 4. This repo documents setup, security, deployment, and version control.

---

## Technologies Used

- AWS EC2 (Ubuntu 24.04)
- Apache2 (via httpd:2.4 Docker Image)
- Docker & Docker Compose
- Certbot + Let's Encrypt (SSL/TLS)
- GitHub (branches + version control)
- GoDaddy (for DNS)

---

## Folder & File Structure

```
├── Dockerfile
├── docker-compose.yml
├── index.html
├── rdr2.html
├── tlou2.html
├── uncharted4.html
├── setup.sh
├── style.css
├── README.md
├── LICENSE
├── CNAME
└── images/
```
---

## Deployment Instructions

### Initial Setup:
```
git clone https://github.com/Bhuvanesh-Murdoch2005/ict171-assignment2.git
cd ict171-assignment2
docker-compose up -d

docker-compose down --volumes --remove-orphans
docker-compose build --no-cache
docker-compose up -d
```
## Rebuild & Restart:
```
docker-compose down --volumes --remove-orphans
docker-compose build --no-cache
docker-compose up -d
```

## DNS & SSL/TLS Setup

Domain: bhuvi.xyz (purchased via GoDaddy)
Linked using A Record to EC2 IP
Custom Domain handled via CNAME file
HTTPS activated using Certbot with Let's Encrypt
Verified browser padlock confirms functionality

## Docker Persistence

Docker container uses restart: unless-stopped to auto-restart after reboot or crash. Verified via:
```
#To verify container auto-restart:

docker ps
```
## Testing & Verification

- HTTPS padlock visible
- All pages accessible: /rdr2.html, /tlou2.html, /uncharted4.html
- Works on mobile and desktop
- DNS resolves via global public tools
- Verified auto-restart after reboot

---

## Extended PDF Documentation


[Download Full PDF Documentation](docs/34580045_KrishnanVijayaraj_Bhuvanesh_ICT171Assignment2_Documentation.pdf)  

This PDF includes detailed setup steps with screenshots for:

- EC2 server configuration
- Apache and Docker deployment
- GoDaddy domain linking
- SSL setup with Certbot
- GitHub version control
- Troubleshooting and testing

---

## Video Explainer

This video walkthrough demonstrates the entire setup and deployment process of the cloud server project. It covers:

- EC2 instance and SSH
- Docker + Apache configuration
- Website demonstration
- GoDaddy DNS setup
- Certbot SSL configuration
- GitHub version control usage
- Reflections and learning outcomes


[Watch the full video on YouTube](https://www.youtube.com/watch?v=p0Qr4eWq31Q)

---

## References

- [Apache Docs](https://httpd.apache.org/docs)
- [Docker Compose Docs](https://docs.docker.com/compose/)
- [Certbot Guide](https://eff.org/certbot)
- [AWS EC2 Docs](https://docs.aws.amazon.com/ec2)
- [GoDaddy DNS Help](https://au.godaddy.com/help/manage-dns-records-680)
- [GitHub Docs](https://docs.github.com)

---

## License & Fair Use Notice

This project was developed for educational purposes only as part of Murdoch University’s ICT171 assignment.
All logos, character images, and references to:

- Red Dead Redemption 2 (© Rockstar Games)
- The Last of Us Part II (© Naughty Dog)
- Uncharted 4: A Thief’s End (© Sony Interactive Entertainment)
  
Used under Fair Use principles for commentary, education, and demonstration.







