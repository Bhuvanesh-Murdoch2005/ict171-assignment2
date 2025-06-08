# 🎮 Ctrl + Shift + Game – Cloud Server Project

**Live Website:** [https://bhuvi.xyz](https://bhuvi.xyz)  
**Student Name:** Bhuvanesh Krishnan Vijayaraj  
**Student ID:** 34580045  
**Repository:** [GitHub Repo](https://github.com/Bhuvanesh-Murdoch2005/ict171-assignment2)  
**Public IP:** 54.66.59.90

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

## Extended PDF Documentation


[Download Full PDF Documentation](docs/34580045_KrishnanVijayaraj_Bhuvanesh_ICT171Assignment2_Documentation.pdf)  

This PDF includes detailed setup steps with screenshots for:
- EC2 server configuration
- Apache and Docker deployment
- GoDaddy domain linking
- SSL setup with Certbot
- GitHub version control
- Troubleshooting and testing



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



## References

- Apache Software Foundation. (2024). *Apache HTTP Server Documentation*. Retrieved from [https://httpd.apache.org/docs](https://httpd.apache.org/docs)

- Docker Inc. (2024). *Docker Compose Overview*. Retrieved from [https://docs.docker.com/compose/](https://docs.docker.com/compose/)

- Electronic Frontier Foundation. (2024). *Certbot User Guide*. Retrieved from [https://eff.org/certbot](https://eff.org/certbot)

- Amazon Web Services. (2024). *Amazon EC2 User Guide for Linux Instances*. Retrieved from [https://docs.aws.amazon.com/ec2](https://docs.aws.amazon.com/ec2)

- GoDaddy. (2024). *Manage DNS Records*. Retrieved from [https://au.godaddy.com/help/manage-dns-records-680](https://au.godaddy.com/help/manage-dns-records-680)

- GitHub Docs. (2024). *GitHub Docs – Repositories, Branches & Markdown*. Retrieved from [https://docs.github.com](https://docs.github.com)


## License & Fair Use Notice

This project was developed for educational purposes only as part of Murdoch University’s ICT171 assignment.
All logos, character images, and references to:

- Red Dead Redemption 2 (© Rockstar Games)
- The Last of Us Part II (© Naughty Dog)
- Uncharted 4: A Thief’s End (© Sony Interactive Entertainment)
are used under fair use principles for commentary, education, and demonstration.

