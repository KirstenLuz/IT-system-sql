# Medical Clinic SQL Project

This project was developed to practice **database modeling** and **SQL query writing** using **PostgreSQL**.
It simulates the operations of a **medical clinic system**, including data about patients, doctors, specializations, appointments, and treatments.

---

## Objective

The goal is to design and implement a **relational database** capable of managing a clinic’s main data while maintaining **data consistency** and enabling **data analysis through SQL**.

This project demonstrates practical knowledge in:

* Database design and normalization;
* Table relationships (1:N, N:N);
* Query optimization and organization;
* Use of joins, filters, and aggregations.

---

## Database Structure

**Main Entities:**

* **Patients** – personal information, contact details, and address.
* **Doctors** – name, specialization, and contact information.
* **Specializations** – list of medical specialties.
* **Appointments** – date, reason, patient, doctor, and observations.
* **Treatments** – medicines and medical prescriptions.

Each entity is connected through **foreign keys**, ensuring relational integrity between patients, doctors, and treatments.

---

## Project Structure

```
medical-clinic-sql/
│
├── sql/                   # SQL scripts
│   ├── 01_create_tables.sql  → database schema creation
│   ├── 02_insert_data.sql    → realistic data insertion
│   ├── 03_insert_data_II.sql → complementary insertions
│   └── 04_queries.sql        → SQL queries for practice
│
├── docs/                  # Documentation and diagrams
│   └── er-diagram.png        → Entity Relationship Diagram (ERD)
│
└── README.md
```

---

## Technologies Used

* **PostgreSQL 15+**
* **SQL (ANSI Standard)**
* **pgAdmin / DBeaver** – for visualization and testing
* **Canva / Draw.io** – for ER diagram creation

---

## How to Run

1. **Clone the repository**

   ```bash
   git clone https://github.com/SEU_USUARIO/medical-clinic-sql.git
   cd medical-clinic-sql
   ```

2. **Run the SQL scripts in order**

   ```bash
   psql -U <username> -d <database> -f sql/01_create_tables.sql
   psql -U <username> -d <database> -f sql/02_insert_data.sql
   psql -U <username> -d <database> -f sql/03_insert_data_II.sql
   psql -U <username> -d <database> -f sql/04_queries.sql
   ```

---
