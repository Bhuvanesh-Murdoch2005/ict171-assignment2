# Ctrl + Shift + Game: Server Documentation

**Student:** Bhuvanesh Krishnan Vijayaraj (34580045)  
**GitHub Repository:** [https://github.com/Bhuvanesh-Murdoch2005/ict171-assignment2](https://github.com/Bhuvanesh-Murdoch2005/ict171-assignment2)

---

## Table of Contents

- [1.0 Web Server Setup In AWS](#10-web-server-setup-in-aws)
- [2.0 Apache Installation and Configuration](#20-apache-installation-and-configuration)
- [3.0 Domain Setup and SSL](#30-domain-setup-and-ssl)
- [4.0 GitHub Progress and Version Control](#40-github-progress-and-version-control)
- [6.0 Docker Installation and Account Setup](#60-docker-installation-and-account-setup)
- [7.0 Final Testing and Verification](#70-final-testing-and-verification)
- [8.0 Licensing](#80-licensing)

---

## 1.0 Web Server Setup In AWS

### 1.1 EC2 Setup
Launched an Ubuntu 24.04 LTS instance using EC2.

### 1.2 Accessing AWS and Navigating to EC2
Signed in at [aws.amazon.com](https://aws.amazon.com) and navigated to EC2.

### 1.3 Launching a New EC2 Instance
Configured with `t2.micro`, named `CtrlShiftGame`.

### 1.4 Security Group Configuration
Allowed inbound SSH (port 22) access from all IPs.

### 1.5 Final Launch
Deployed the instance after reviewing the settings.

### 1.6 SSH Key Setup and Terminal Access
```bash
ssh -i "ctrlshiftgame-key.pem" ubuntu@<your-public-ip>

## 2.0 Apache Installation and Configuration

To host my static website on the cloud, I installed and configured the Apache HTTP Server on my Ubuntu EC2 instance. Apache is a widely used open-source web server that allows HTTP communication between the client (browser) and server.

### 2.1 Updating Package Lists

Before installing any new software, I updated the package index to ensure all repositories were current.

```bash
sudo apt update
```

### 2.2 Installing Apache

I installed Apache using the following command:

```bash
sudo apt install apache2
```

This command installs the Apache2 service, allowing the EC2 instance to serve web content.

### 2.3 Starting and Enabling Apache

To start Apache immediately and enable it to launch on every system reboot:

```bash
sudo systemctl start apache2
sudo systemctl enable apache2
```

### 2.4 Verifying Apache Status

To verify that Apache is running:

```bash
sudo systemctl status apache2
```

If successful, it will show `active (running)` in green.

### 2.5 Apache Hosting Test

Once installed and running, I tested Apache by opening a browser and entering the EC2 instance’s public IPv4 address:

```
http://<your-ec2-public-ip>
```

If the default Apache welcome page loaded, the installation was successful.

## 3.0 Domain Setup and SSL

After setting up the EC2 server and Apache web hosting, I configured a custom domain name and installed an SSL certificate to ensure secure HTTPS access.

### 3.1 Domain Name Configuration

I purchased the domain `bhuvi.xyz` from GoDaddy and linked it to the public IPv4 address of my EC2 instance.

Steps:
1. Logged into GoDaddy and navigated to the **DNS Management** section.
2. Created a new **A Record**:
   - **Type:** A  
   - **Name:** @  
   - **Value:** `<your-ec2-public-ip>` (e.g., `54.66.59.90`)  
   - **TTL:** ½ Hour  

DNS propagation can take up to 30 minutes. To monitor it, I used:

[https://dnschecker.org](https://dnschecker.org)

Once propagation completed, visiting:

```
http://bhuvi.xyz
```

successfully loaded the website.

### 3.2 SSL Certificate with Let’s Encrypt (Certbot)

To secure the website with HTTPS, I installed a free SSL certificate using Certbot from Let’s Encrypt.

Steps:
1. Installed Certbot:
```bash
sudo apt install certbot python3-certbot-apache
```

2. Ran Certbot to configure SSL for Apache:
```bash
sudo certbot --apache
```

3. Verified the SSL certificate:
```bash
sudo certbot certificates
```

It displayed:
- **Certificate Name:** bhuvi.xyz  
- **Expiry Date:** (e.g., 2025-08-24)  
- **Domains Covered:** bhuvi.xyz, www.bhuvi.xyz

### 3.3 DNS and SSL/TLS Documentation

**DNS Configuration:**
- Linked domain `bhuvi.xyz` to the EC2 public IP using A record in GoDaddy.

**SSL/TLS Certificate Setup:**
- Used Certbot to install SSL certificate.
- Confirmed browser showed the HTTPS padlock:
```
https://bhuvi.xyz
```

This configuration enables secure communication, improves site trust, and meets modern web hosting standards.

## 4.0 GitHub Progress and Version Control

I used GitHub for version control and documentation to track development progress and ensure reproducibility. The public repository is available at:

[https://github.com/Bhuvanesh-Murdoch2005/ict171-assignment2](https://github.com/Bhuvanesh-Murdoch2005/ict171-assignment2)

### 4.1 Account Creation

I signed up at [https://github.com](https://github.com) and applied for the **GitHub Student Developer Pack** using my Murdoch student credentials. This gave access to premium tools like Copilot and private repos.

### 4.2 Repository Setup

I created a public repository named:

```
ict171-assignment2
```

The repository includes:
- A detailed `README.md`
- All project files (HTML, CSS, Dockerfile, setup script)

### 4.3 Commit History

I used descriptive commit messages to track key changes:

- `Initial commit`
- `Added UI layout and styling`
- `Created Dockerfile`
- `Added docker-compose.yml`
- `Connected domain and SSL`

Each commit was pushed progressively to maintain a clean development history.

### 4.4 Pushing Code and Updates

I used Git commands via terminal to commit and push updates to the repository.

```bash
git add .
git commit -m "Added Apache hosting files"
git push -u origin main
```

If syncing issues occurred (e.g., unrelated histories), I resolved them with:

```bash
git pull --allow-unrelated-histories
```

### 4.5 GitHub Pages or Actions

Although GitHub Pages wasn’t used for this EC2-hosted deployment, I explored the GitHub Pages section under repo settings.

I also reviewed GitHub Actions, which offered Docker-based workflows for continuous integration. Since the deployment was manual, Actions were not enabled.

### 4.6 Branching Strategy

To support modular, iterative development, I created and switched between the following branches:

- `static-blog-site` – for base HTML structure
- `ui-feature` – for user interface styling
- `dockerfile-setup` – for Docker and containerization configs

Branching helped isolate feature development and avoid conflicts on the `main` branch.

---

## 6.0 Docker Installation and Account Setup

To containerize and simplify deployment of my Apache-hosted website, I used Docker and Docker Compose. This ensured consistent behavior across environments and streamlined deployment to AWS EC2.

### 6.1 Docker Installation on MacBook Air (Apple M2)

I downloaded Docker Desktop for macOS (Apple Silicon) from [https://www.docker.com](https://www.docker.com) and completed the installation.

After launching Docker, I signed into my **Docker Hub** account to enable pulling/pushing container images and managing configurations.

I verified Docker was running by checking the whale icon in the macOS status bar and launching the Docker Dashboard.

### 6.2 Docker Compose Configuration

I created a `docker-compose.yml` file to define and manage the container. It sets up an Apache container using the official `httpd:2.4` image.

**docker-compose.yml**
```yaml
version: '3'
services:
  apache:
    image: httpd:2.4
    ports:
      - "8080:80"
    volumes:
      - ./:/usr/local/apache2/htdocs/
    restart: unless-stopped
```

This configuration:
- Maps host port 8080 to container port 80
- Mounts the current directory into Apache's web root
- Ensures the container restarts automatically unless manually stopped

### 6.3 Docker Deployment Scripts

#### 6.3.1 Dockerfile Script

I created a `Dockerfile` to build a custom Apache container with my static website files:

**Dockerfile**
```Dockerfile
FROM httpd:2.4
COPY ./ /usr/local/apache2/htdocs/
EXPOSE 80
```

This copies all website files into the Apache container and exposes port 80.

#### 6.3.2 Automation Script (setup.sh)

To automate the container build and deployment process, I created a `setup.sh` script:

**setup.sh**
```bash
#!/bin/bash
docker build -t ctrlshiftgame .
docker-compose up -d
```

This script:
- Builds the Docker image using the Dockerfile
- Starts the container using Docker Compose in detached mode

This automation reduces manual errors and speeds up the deployment process.

---

## 7.0 Final Testing and Verification

After deployment, I performed end-to-end testing to ensure the website was functional, secure, and persistent across reboots.

### 7.1 Web Application Access and Security

#### 7.1.1 Website Accessibility via DNS

The site is publicly accessible at:

```
https://bhuvi.xyz
```

I verified this on multiple browsers and devices. The landing page displayed my custom HTML and CSS layout, replacing the Apache default.

#### 7.1.2 SSL/TLS Functionality

The green padlock icon confirmed SSL was active. This ensures secure HTTPS access using the certificate issued by Let's Encrypt Certbot.

#### 7.1.3 Docker Container Persistence

To ensure persistence, I used the following Docker Compose setting:

```yaml
restart: unless-stopped
```

After rebooting the EC2 instance or Docker Desktop, the container auto-started. I verified using:

```bash
docker ps
```

#### 7.1.4 Page Routing and Functional Testing

I navigated to all major site pages to verify content and links:

- `/` → Home page
- `/rdr2.html` → Red Dead Redemption 2
- `/tlou2.html` → The Last of Us Part II
- `/uncharted4.html` → Uncharted 4: A Thief’s End

Each page loaded correctly with images, layout, and content intact.

---

### 7.2 Final Live Website Deployment Screenshot

Final version of the deployed site confirmed live at:

```
https://bhuvi.xyz
```

Screenshots were captured to verify proper rendering of each page.

---

### 7.3 Troubleshooting Tips

#### 7.3.1 Apache Not Reflecting Updated Files
**Fix:**
```bash
docker-compose down --volumes --remove-orphans
docker-compose build --no-cache
docker-compose up -d
```

#### 7.3.2 Docker Port Conflict
**Fix:**
```bash
docker stop $(docker ps -q)
docker-compose up -d
```

#### 7.3.3 SSL Certificate Not Valid After Setup
**Fix:**
```bash
sudo systemctl restart apache2
```
Make sure port 443 is open in EC2 Security Group and check DNS propagation.

#### 7.3.4 Website Doesn’t Load After EC2 Reboot
**Fix:**
Ensure `restart: unless-stopped` is used in `docker-compose.yml`. Otherwise:

```bash
docker-compose up -d
```

#### 7.3.5 Files Not Loading Inside Container
**Fix:**
- Make sure this volume mount exists:
```yaml
volumes:
  - ./ : /usr/local/apache2/htdocs/
```
- Rebuild the container after uploading files.

#### 7.3.6 Certbot Not Installing SSL
**Fix:**
- Ensure Apache is running:
```bash
sudo systemctl start apache2
```
- Confirm ports 80 and 443 are open
- Retry with:
```bash
sudo certbot --apache -d bhuvi.xyz -d www.bhuvi.xyz
```

---

## 8.0 Licensing

This project, **Ctrl + Shift + Game**, was developed as part of Murdoch University’s ICT171 Assignment 2 and is strictly intended for educational purposes only.

### 8.1 Software and Tools Used

- The server is powered by **Apache HTTP Server**, deployed via the official Docker image `httpd:2.4`.
- The Apache image is licensed under the **Apache License 2.0**.  
  ➤ [https://www.apache.org/licenses/LICENSE-2.0](https://www.apache.org/licenses/LICENSE-2.0)

### 8.2 Game Media and Assets

- All references to games (e.g., **Red Dead Redemption 2**, **The Last of Us Part II**, **Uncharted 4**) are the **intellectual property** of their respective developers and publishers:
  - Rockstar Games  
  - Naughty Dog  
  - Sony Interactive Entertainment

- All images, character names, and logos used are displayed under **fair use** for non-commercial, academic purposes only.

### 8.3 Content Policy and Hosting

- No assets are monetised or redistributed.
- This server and repository are **privately hosted**, intended only for demonstration and educational use.
- The project is not designed for public deployment or commercial hosting.

---









