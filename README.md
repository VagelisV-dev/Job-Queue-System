# Job Queue System

A distributed job queue system with:

- **API** using FastAPI (Python)  
- **Worker** for asynchronous job processing  
- **PostgreSQL** database  
- **Redis** for job queue  
- **Dockerized** for easy setup  

This project demonstrates backend system design, containerized development, and inter-service communication.

---

## Features

- Submit jobs via REST API  
- Track job status (`queued → processing → done`)  
- Worker processes jobs asynchronously  
- Handles service startup order with `wait-for-db.sh`  

---

## Prerequisites

- Docker Desktop  
- Git (optional)  
- Internet connection for downloading images  

---

## How to Run

1. Clone the repo:

```bash
git clone <your-repo-url>
cd job-queue

2. Build and start containers:
```bash
docker compose up --build

3. Access API docs:
http://localhost:8000/docs

4. Example usage
Submit a job:
JSON
POST /jobs
{
  "task": "example task data"
}
Check job status:
JSON
GET /jobs/{job_id}
