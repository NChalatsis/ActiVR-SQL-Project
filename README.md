# ActiVR SQL Project  
A complete, end‑to‑end SQL data engineering exercise built on SQL Server.

## 📌 Project Overview
This project simulates a small analytics environment for **ActiVR**, a fictional VR fitness company.  
The goal is to recreate a realistic data engineering workflow using SQL Server, including:

- Designing a relational database schema  
- Creating tables and enforcing relationships  
- Loading sample data  
- Cleaning and standardizing inconsistent records  
- Enriching event data using joins  
- Writing analytical SQL queries  
- Structuring a fully reproducible GitHub project  

The project includes all scripts required to rebuild the database from scratch.

---

## 🧰 Technologies Used
- **SQL Server**
- **SQL Server Management Studio (SSMS)**
- **SQL**
- **Git & GitHub**

---

## 🏗️ Database Schema

The ActiVR database consists of four tables:

- **users** – demographic and registration data  
- **games** – available game types  
- **devices** – VR devices and versions  
- **events** – user activity logs linked to games and devices  

A full ERD diagram is included in: docs/images/schema.png

## 📂 Project Structure

ActiVR_SQL_Project/
│
├── database/
│     ├── 00_create_database.sql
│     ├── 01_create_tables.sql
│     └── 02_insert_data.sql
│
├── docs/
│     ├── instructions.md
│     └── images/
│           ├── schema.png
|           └── dbSchema0.png
│
├── 01_task1_clean_data.sql
├── 02_task2_events_with_game_id.sql
├── 03_task3_event_biking.sql
├── 04_task4_users_game.sql
└── README.md


## 🚀 How to Run This Project

Follow these steps to recreate the database and run the analytical tasks.

### 1. Requirements  
- SQL Server Management Studio (SSMS)
---

### 2. Create the Database
Run:  database/00_create_database.sql
This creates the `ActiVR` database.
---

### 3. Create All Tables
Run: database/01_create_tables.sql
This script creates the four tables and all foreign key relationships.
---

### 4. Insert Sample Data
Run:database/02_insert_data.sql
This loads sample data designed to reproduce all task scenarios.
---

### 5. Run the Task Queries
Each task is implemented in a separate SQL file:

- `01_task1_clean_data.sql`  
- `02_task2_events_with_game_id.sql`  
- `03_task3_event_biking.sql`  
- `04_task4_users_game.sql`  

Before running each script, ensure the active database in SSMS is: ActiVR

---

## 📝 Task Descriptions

### **Task 1 — Data Cleaning**
Standardize inconsistent values, handle NULLs, and prepare the `users` table for analysis.

### **Task 2 — Enrich Events with Game IDs**
Assign missing `game_id` values for events before 2021 based on the most common game type per user.

### **Task 3 — Filter Biking Events**
Return all events where the user played a biking game.

### **Task 4 — Join Users with Games**
Combine user information with game activity, excluding NULL game types.

---

## 📊 About the Dataset
The dataset is custom‑built for this project.  
It includes:

- Missing values  
- Invalid values  
- NULL foreign keys  
- Multiple game types  
- Events across multiple years  

This ensures realistic data cleaning and enrichment scenarios.

---

## 🔮 Future Improvements
Potential enhancements:

- Add more realistic and larger sample datasets  
- Create SQL views for analytics  
- Implement stored procedures for data cleaning  
- Add constraints and validation rules  
- Build a Power BI dashboard  
- Add unit tests using tSQLt  

---

## 🎓 Key Learnings
Through this project I practiced:

- Designing and documenting a reproducible SQL environment  
- Cleaning and standardizing inconsistent data  
- Working with foreign keys and relational integrity  
- Writing analytical SQL queries  
- Structuring a professional GitHub repository  

---
## 📬 Contact
If you want to discuss SQL, data engineering, or similar projects, feel free to connect with me on LinkedIn.

---

## 👤 Author
**Nikolaos Chalatsis — Junior Data Engineer**  
📍 Athens, Greece  
🔗 LinkedIn: https://www.linkedin.com/in/nchalatsis/ 
🔗 GitHub: https://github.com/NChalatsis

![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)