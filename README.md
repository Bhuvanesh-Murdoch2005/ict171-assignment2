# Ctrl + Shift + Game 🎮  
**ICT171 Assignment 2 - Cloud Server Project (2025)**  
**Student Name:** Bhuvanesh Krishnan Vijayaraj  
**Student ID:** 34580045  
**Domain:** https://bhuvi.xyz  
**Public IP:** 54.66.59.90  

---

## 📄 Project Description  
Ctrl + Shift + Game is a static, multi-page HTML website hosted on an AWS EC2 instance running Ubuntu 24.04.  
It features blog-style pages for three iconic video games:  
- Red Dead Redemption 2  
- The Last of Us Part II  
- Uncharted 4: A Thief's End  

The website is served inside a Docker container using Apache HTTP Server. HTTPS is enabled using Certbot (Let’s Encrypt), and the domain is registered via GoDaddy.

---

## 🛠️ Technologies Used  
- **AWS EC2** (Ubuntu 24.04)  
- **Apache2 (httpd:2.4)**  
- **Docker & Docker Compose**  
- **Certbot + Let's Encrypt (SSL)**  
- **GitHub for version control**  
- **Custom Domain**: bhuvi.xyz  

---

## 🔧 Folder & File Structure  

---

## ✅ Key Functionalities  
- Fully functional HTML/CSS site served from Apache inside a Docker container.  
- HTTPS padlock enabled and verified using Certbot.  
- Docker container auto-restarts using `restart: unless-stopped`.  
- Code version controlled via GitHub with branching and commit history.  

---

## 🎥 Video Explainer  
_A video walkthrough will be added shortly demonstrating the server, website, SSL, and GitHub setup._

---

## 📦 Deployment Notes  
To deploy locally or on an EC2 instance:
```bash
git clone https://github.com/Bhuvanesh-Murdoch2005/ict171-assignment2.git
cd ict171-assignment2
docker-compose up -d



---

## ✅ Final Checklist for GitHub Submission

| Task | Status |
|------|--------|
| All code and files pushed | ✅ |
| Dockerfile + Compose included | ✅ |
| `README.md` complete | ⏳ To do (Use above) |
| Student name + ID clearly listed | ✅ Included in README |
| Domain + IP mentioned | ✅ Add to README |
| License/disclaimer present | ✅ Add to README |
| Video explainer mention (even if not yet uploaded) | ✅ Add placeholder section |

---

Let me know once it’s updated — I’ll review it immediately if you want a quick check before final submission.

