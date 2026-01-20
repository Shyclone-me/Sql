# UNIVERSITY Database Normalization & Docker Demonstration

A comprehensive laboratory demonstration of **database normalization (1NF, 2NF, 3NF)** using MySQL in Docker containers.  
This project simulates a real-world campus management system with a **fully normalized university database**.

---

## 🚀 Overview

This project demonstrates:

- **Database Normalization** – Step-by-step transformation from unnormalized data to **3NF**
- **Docker Deployment** – Containerized MySQL database for reproducible testing
- **Real-world Application** – Campus management system simulation

---

## 🎯 Learning Objectives

- Identify unnormalized data and anomalies  
- Apply First, Second, and Third Normal Forms  
- Implement normalized schemas using SQL  
- Simulate real-world database behavior  
- Understand normalization as a **data consistency and security mechanism**

---

## ✨ Features

- **Complete Normalization Process** – Transform unnormalized data into 3NF  
- **Docker Containerization** – Easy setup and deployment  
- **Comprehensive Testing** – Multiple verification queries  
- **Detailed Documentation** – Lab manual included  
- **Real-world Scenarios** – Campus database simulation

---

## 🛠 Quick Start

### 1️⃣ Clone the Repository

```bash
git clone https://github.com/YOUR_USERNAME/university-normalization-docker.git
cd university-normalization-docker
```
2️⃣ Start MySQL Docker Container
docker-compose up -d

3️⃣ Connect to MySQL
docker exec -it university_db mysql -u root -p


Password: root

4️⃣ Run Verification Query
SOURCE /docker-entrypoint-initdb.d/03_verify.sql;


Expected Output:
You will see the fully normalized university table reconstructed, matching the original dataset with no redundancy.

📁 Project Structure
university-normalization-docker/
├── README.md                 # This file
├── docker-compose.yml        # Docker configuration
├── sql/
│   ├── 01_schema.sql         # Database schema and tables
│   ├── 02_data.sql           # Sample data insertion
│   └── 03_verify.sql         # Verification query to reconstruct data

🏛 Database Schema
Unnormalized Form (Initial)
UNIVERSITY_DATA
(StudentID, Name, Email, Major, Advisor, CourseID, CourseTitle, Credits, Grade, Building, Room)

First Normal Form (1NF)

Atomic values only

No multi-valued attributes

Second Normal Form (2NF)

Tables:

STUDENTS (StudentID, Name, Email, Major)

COURSES (CourseID, CourseTitle, Credits, Building, Room)

ENROLLMENTS (StudentID, CourseID, Grade)

Third Normal Form (3NF)

Tables:

MAJORS (Major, Advisor)

STUDENTS (StudentID, Name, Email, Major)

COURSES (CourseID, CourseTitle, Credits, Building, Room)

ENROLLMENTS (StudentID, CourseID, Grade)

🔍 Verification

Join all tables to reconstruct the original dataset:

SELECT
    s.StudentID,
    s.Name,
    s.Email,
    s.Major,
    m.Advisor,
    c.CourseID,
    c.CourseTitle,
    c.Credits,
    e.Grade,
    c.Building,
    c.Room
FROM Students s
JOIN Majors m ON s.Major = m.Major
JOIN Enrollments e ON s.StudentID = e.StudentID
JOIN Courses c ON e.CourseID = c.CourseID;


Expected Output:
The reconstructed table matches the original dataset without redundancy.

⚠ Troubleshooting
Port Already in Use
docker-compose down
# or change host port in docker-compose.yml

Container Already Exists
docker rm -f university_db

MySQL Not Ready

Wait a few seconds for initialization

Then connect and run queries
