#### 🛒 Shopping App – Dockerized DevOps Project

A simple containerized shopping application built to practice Docker and DevOps fundamentals.

This project demonstrates:

* 🐳 Dockerfile creation
* 📦 Containerization of an application
* 📁 Volume management
* 🌐 Port mapping

##### 📌 Project Overview

This project focuses on understanding:

* How Docker containers work
* Container isolation
* Running applications inside containers
* Managing logs and persistent data
* Basic DevOps best practices

##### Project Structure

```
.
├── Dockerfile
├── app.py
├── database.db
├── docker-compose.yml
├── Jenkinsfile
├── requirements.txt
├── sqlite
│   └── database.db
├── static
│   └── styles.css
└── templates
    ├── add_item.html
    └── index.html
```

##### 🚀 How to Run the Application

**1️⃣ Clone the Repository:**

```bash
git clone https://github.com/Vibhutijain12/Docker-for-Devops.git
cd Docker-for-Devops/shopping-app
```

**2️⃣ Build Docker Image:** 

```bash
docker build -t shopping-app:latest .
```

**3️⃣ Run the Container:** 

```bash
docker run -d --name shopping-container -p 5000:5000 shopping-app:latest
```

Now open:
```bash
http://localhost:5000
```

**Using Docker Compose (If Available):**

```bash
docker-compose up --build
```

##### 🧪 Useful Docker Commands

1. Check running containers:

```bash
docker ps
```

2. View logs:

```bash
docker logs <container-name>
```

3. Stop container and remove container:

```bash
docker stop <container-name> && docker remove <container-name>
```

##### SQLite3 Database Items

Once the application is up and running and storing the data properly, we can persist the data as well through volumes.

1. How to open the databases:

```bash
sqlite3 database.db
```

2. Check the tables

```bash
.tables
items
```

3. View all the data stored inside the database, even if the container stopped working or terminated.

```bash
SELECT * FROM items;
```
