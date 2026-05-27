# 🚀 Vibelar FastAPI Backend

## 📌 Project Setup

This is a production-ready FastAPI backend deployed on AWS EC2 using Docker, NGINX, PostgreSQL, Redis, and GitHub Actions CI/CD with a self-hosted runner.

## ⚙️ Tech Stack

- FastAPI
- Docker & Docker Compose
- PostgreSQL
- Redis
- NGINX (Host-based Reverse Proxy)
- AWS EC2 (t2.medium)
- GitHub Actions (Self-hosted Runner)
- Let's Encrypt SSL

## 🚀 Local Setup

```bash
git clone https://github.com/Nikhilsingh9889/fastapi.git
cd fastapi

docker compose up -d --build
