# 🚀 Vibelar FastAPI Backend (Production Ready)

A production-grade FastAPI backend deployed on **AWS EC2** with full DevOps automation using **Docker, NGINX, PostgreSQL, Redis, SSL (Let’s Encrypt), and GitHub Actions CI/CD with a self-hosted runner**.

---

# 🌍 Live Application

👉 [https://vibelar.com](https://vibelar.com)

---

# 📌 Project Overview

This project demonstrates a complete **real-world DevOps production setup** including:

* Containerized FastAPI application
* Secure reverse proxy using NGINX (host-based)
* Internal PostgreSQL & Redis networking
* SSL encryption using Let’s Encrypt
* Automated CI/CD pipeline using GitHub Actions
* Self-hosted runner deployed on AWS EC2
* Automated backups using cron jobs

---

# 🏗️ System Architecture

```
Internet
   ↓
NGINX (Host Machine)
   ↓
FastAPI (Docker Container)
   ↓───────────────┐
PostgreSQL        Redis
(Internal Only)   (Internal Only)
```

---

# ⚙️ Tech Stack

* ⚡ FastAPI (Backend Framework)
* 🐳 Docker & Docker Compose
* 🐘 PostgreSQL (Database)
* 🔴 Redis (Caching & Messaging)
* 🌐 NGINX (Reverse Proxy)
* ☁️ AWS EC2 (t2.medium)
* 🔁 GitHub Actions (CI/CD)
* 🔐 Let’s Encrypt (SSL)

---

# 📁 Project Structure

```
fastapi/
│
├── app/
│   ├── main.py
│   ├── requirements.txt
│   └── Dockerfile
│
├── nginx/
│   └── vibelar.conf
│
├── docker-compose.yml
├── .env
├── .env.psql
│
├── scripts/
│   └── backup_postgres.sh
│
├── .github/
│   └── workflows/
│       └── deploy.yml
│
└── README.md
```

---

# 🚀 Features

### ⚡ Backend

* FastAPI REST APIs
* Health check endpoint (`/health`)
* Environment-based configuration

### 🐳 DevOps

* Dockerized microservices
* Multi-container orchestration using Docker Compose
* Restart policies for reliability

### 🌐 Networking

* NGINX reverse proxy (host-based)
* Internal-only PostgreSQL & Redis (secure architecture)

### 🔐 Security

* SSL via Let’s Encrypt (HTTPS enabled)
* UFW firewall on EC2
* No direct DB exposure to internet

### 🔁 CI/CD

* GitHub Actions pipeline
* Self-hosted runner on EC2
* Automatic deployment on push to `main`

### 💾 Backup

* Automated PostgreSQL backups using cron jobs
* 7-day retention policy

---

# ⚙️ Local Setup

### 1️⃣ Clone Repository

```bash
git clone https://github.com/Nikhilsingh9889/fastapi.git
cd fastapi
```

### 2️⃣ Run with Docker

```bash
docker compose up -d --build
```

### 3️⃣ Access Application

```
http://localhost:8000
```

---

# 🌐 Production Setup

### Domain

```
https://vibelar.com
```

### Deployment Flow

```
Git Push → GitHub Actions → Self Hosted Runner (EC2)
→ Docker Build → NGINX Proxy → Live Deployment
```

---

# 🔄 CI/CD Pipeline

Uses **GitHub Actions + Self-Hosted Runner** on AWS EC2.

### Workflow Steps:

1. Code pushed to GitHub
2. GitHub Actions triggered
3. Runner pulls latest code
4. Docker containers rebuilt
5. Application updated live

---

# 🔐 SSL Configuration

* Tool: Let’s Encrypt
* Managed via Certbot on EC2 host
* Auto-renewal enabled

```
sudo certbot --nginx -d vibelar.com
```

---

# 💾 Backup Strategy

Automated PostgreSQL backup using cron job:

* Daily backup at 2 AM
* Stored locally on server
* Retention: 7 days

---

# 📊 Health Check

```http
GET /health
```

Response:

```json
{
  "status": "ok"
}
```

---

# 🔐 Security Highlights

* PostgreSQL not exposed externally
* Redis internal-only network
* NGINX as single entry point
* SSL encryption enabled
* Firewall rules applied on EC2

---

# ☁️ Infrastructure

* **AWS EC2 (t2.medium)** → Application hosting
* **NGINX** → Reverse proxy + SSL termination
* **Docker** → Container orchestration

---

# 🧠 What This Project Demonstrates

This project shows strong understanding of:

* Production-grade backend deployment
* Cloud infrastructure (AWS EC2)
* CI/CD automation (GitHub Actions)
* Containerization (Docker)
* Secure system design
* Real-world DevOps practices

---

# 🏁 Final Result

A fully automated, scalable, and secure backend system running in production at:

👉 [https://vibelar.com](https://vibelar.com)

---

# 🚀 Future Improvements

* Prometheus + Grafana monitoring
* Zero-downtime deployments
* Cloudflare integration
* Kubernetes migration
* Centralized logging (ELK stack)

---

# 👨‍💻 Author

Built by Nikhil Singh 🚀

---

# ⭐ If you like this project

Give a ⭐ on the repository — it helps!
