# 🌱 Farmer-to-Consumer (F2C) Connection Platform - Database

This repository contains the PostgreSQL database schema and SQL scripts for the **Farmer-to-Consumer** platform. The system is designed to eliminate middlemen, ensure fair pricing for farmers, and deliver fresh produce directly to consumers.

## 🗄️ Database Structure
The database includes the following primary tables:

1. **Users:** Stores information for both Farmers and Consumers (Role-based authentication).
2. **Products:** Manages the inventory of agricultural products uploaded by farmers.
3. **Orders:** Tracks purchase orders made by consumers.

## 🛠️ Tech Stack
* **Database Management System:** PostgreSQL 
* **Tool:** pgAdmin 4
* **Query Language:** SQL

## 🚀 How to Use
1. Download or clone this repository.
2. Open pgAdmin 4 and create a new database named `farmer_consumer_db`.
3. Open the Query Tool for the new database.
4. Copy the contents of `farmer_to_consumer_database_schema.sql` and run it to create the tables.
