# ConnectEvent Management Database

## Overview

Welcome to the ConnectEvent Management Database – a robust solution for managing events seamlessly on the ConnectEvent platform. This database is designed to support organizers, participants, sponsors, and more. Read on to understand the structure, tables, and sample data to get started.

## Table Descriptions

### 1. **Lieux (Locations)**

- **Columns:**
  - **Id (Primary Key)**
  - **Nom (Name)**
  - **Adresse (Address)**
  - **Capacite (Capacity)**

### 2. **Evenements (Events)**

- **Columns:**
  - **Id (Primary Key)**
  - **Titre (Title)**
  - **Date (Date)**
  - **Lieu_id (Location ID - Foreign Key)**

### 3. **Organisateurs (Organizers)**

- **Columns:**
  - **Id (Primary Key)**
  - **Nom (Last Name)**
  - **Prenom (First Name)**
  - **Email (Email)**
  - **Telephone (Telephone)**
  - **Evenement_id (Event ID - Foreign Key)**

### 4. **Participants**

- **Columns:**
  - **Id (Primary Key)**
  - **Nom (Last Name)**
  - **Prenom (First Name)**
  - **Email (Email)**
  - **Telephone (Telephone)**

### 5. **Sponsors**

- **Columns:**
  - **Id (Primary Key)**
  - **Nom (Name)**
  - **Logo (Logo)**
  - **Site_web (Website)**

### 6. **Billets (Tickets)**

- **Columns:**
  - **Id (Primary Key)**
  - **Prix (Price)**
  - **Date_debut (Start Date)**
  - **Date_fin (End Date)**
  - **Participants_id (Participant ID - Foreign Key)**
  - **Evenement_id (Event ID - Foreign Key)**

### 7. **Evenements_Sponsors (Event Sponsors)**

- **Columns:**
  - **Evenement_Sponsor_id (Primary Key)**
  - **Evenement_id (Event ID - Foreign Key)**
  - **Sponsor_id (Sponsor ID - Foreign Key)**

### 8. **Retours (Returns)**

- **Columns:**
  - **Id (Primary Key)**
  - **Montant (Amount)**
  - **Date (Date)**
  - **Participant_id (Participant ID - Foreign Key)**
  - **Evenement_id (Event ID - Foreign Key)**

## Sample Data

Feel free to explore the provided sample data insertion statements to understand how to populate the database with information.

## Instructions

1. Execute the SQL script to create the database and tables.
2. Insert sample data to test the functionality.
3. Adhere to foreign key constraints when inserting data.
4. Customize the code and data according to your specific project requirements.

Happy organizing with ConnectEvent!
