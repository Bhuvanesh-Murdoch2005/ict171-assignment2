# 🎮 Ctrl + Shift + Game – Cloud Server Project

**Live Website:** [https://bhuvi.xyz](https://bhuvi.xyz)  
**Student Name:** Bhuvanesh Krishnan Vijayaraj  
**Student ID:** 34580045  
**Repository:** [GitHub Repo](https://github.com/Bhuvanesh-Murdoch2005/ict171-assignment2)  
**Public IP:** 54.66.59.90

---

## Project Description

A static gaming blog hosted on an AWS EC2 Ubuntu instance (24.04), running inside a Docker container using Apache2. HTTPS is enabled via Certbot, and the site includes three themed pages for RDR2, The Last of Us Part II, and Uncharted 4. This repo documents setup, security, deployment, and version control.

---

## Technologies Used

- AWS EC2 (Ubuntu 24.04)
- Apache2 (via httpd:2.4 Docker Image)
- Docker & Docker Compose
- Certbot + Let’s Encrypt (SSL/TLS)
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
└── images/
```

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
Pointed to EC2 public IP using A Record
Certbot used to install free SSL via Let's Encrypt
Padlock visible confirming HTTPS functionality

## Docker Persistence

Docker container uses restart: unless-stopped to auto-restart after reboot or crash. Verified via:
```
docker ps
```
## Testing & Verification

- HTTPS padlock visible
- Auto-restart on reboot tested
- All pages accessible: /rdr2.html, /tlou2.html, /uncharted4.html
- Cross-browser & mobile tested
- DNS resolves globally via public tools

## Video Explainer

A walkthrough recording showing:

Domain loading and navigation
Docker container running
Apache + Certbot config
GitHub commit history
(To be uploaded by June 9, 2025)

## Full Documentation (PDF)

[Click here to view the full step-by-step assignment documentation (PDF)](docs/34580045_KrishnanVijayaraj_Bhuvanesh_ICT171Assignemnt2_Docuemntation.pdf)

## References

Apache HTTP Server Docs
Docker Compose Docs
Certbot SSL Setup
AWS EC2 Documentation
GoDaddy DNS Help
GitHub Docs

## License & Fair Use Notice

This project was developed for educational purposes only as part of Murdoch University’s ICT171 assignment.
All logos, character images, and references to:

- Red Dead Redemption 2 (© Rockstar Games)
- The Last of Us Part II (© Naughty Dog)
- Uncharted 4: A Thief’s End (© Sony Interactive Entertainment)
are used under fair use principles for commentary, education, and demonstration.

