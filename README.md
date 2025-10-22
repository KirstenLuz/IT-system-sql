## IT Support System SQL Project

This project was developed as an exercise in **data modeling** and **SQL queries**, focusing on core practices for those training as **Data Analysts**.
The goal is to simulate a **technical support system**, including **users**, **clients**, **technicians**, **tickets**, and **messages**.

---

## Objective

Design a **relational database** capable of handling support requests, tracking progress, and associating each ticket with its respective client and technician.
The main goal is to demonstrate an understanding of **data modeling**, **relational structure**, and **query development** for **analysis and reporting**.

---

## Database Structure

**Main Entities:**

* **Users** – general user registry (clients or technicians)
* **Clients** – organizations that open tickets, linked to a user
* **Technicians** – employees responsible for solving tickets
* **Tickets** – records of support requests, including category, status, and timestamps
* **Messages** – communication logs between users about each ticket

The structure ensures **referential integrity** through **foreign keys** and cascading rules (`ON DELETE CASCADE`, `ON UPDATE CASCADE`).

---

## Project Structure

```
it-support-system-sql/
│
├── sql/                    # SQL scripts
│   ├── 01_create_tables.sql   → database schema creation
│   ├── 02_insert_data.sql     → realistic data insertion
│   └── 03_queries.sql         → SQL exercises and analysis queries
│
├── docs/                   # Documentation and diagrams
│   ├── IT_support_ERD.png     → Entity Relationship Diagram (ERD)
│   ├── base_text.pdf          → project explanation and context
│   └── query_exercises.pdf    → queries used for analysis
│
└── README.md
```

---

## Technologies Used

* **PostgreSQL 15+**
* **SQL (ANSI Standard)**
* **pgAdmin / DBeaver** – database management and testing
* **Canva / Draw.io** – ER diagram creation

---

## How to Run

1. **Clone the repository**

   ```bash
   git clone https://github.com/SEU_USUARIO/it-support-system-sql.git
   cd it-support-system-sql
   ```

2. **Execute the SQL scripts in order**

   ```bash
   psql -U <username> -d <database> -f sql/01_create_tables.sql
   psql -U <username> -d <database> -f sql/02_insert_data.sql
   psql -U <username> -d <database> -f sql/03_queries.sql
   ```

---


> Educational project for SQL modeling, query development, and data analysis practice.
