# JPACRUDProject

## 🏔️ Favorite Ski Run Web App

This project is a web application for managing a collection of ski runs. It supports full CRUD operations (Create, Read, Update, Delete) with a MySQL database backend and a Spring Boot + JSP frontend.

---

## ✨ Functionality

- ✅ Show all ski runs  
- 🔍 Search for a ski run by ID  
- 🔎 Search for ski runs by keyword  
- ➕ Add a new ski run  
- 📋 View ski run details (including an image and Google Map using latitude/longitude)  
- ✏️ Update ski run details  
- ❌ Delete a ski run  

---

## ⚙️ Technologies Used

- Java 21  
- Spring Boot  
- Spring MVC  
- JPA (Jakarta Persistence)  
- MySQL  
- Gradle  
- JSP (Jakarta Server Pages)  

---

## 📁 File Structure

JPACRUDProject/
│ 
│
├── DB/
│ │
│ └── skirunsdb.mwb
│
├── src/
│ │ 
│ ├── main/
│ │ 
│ │ ├── java/
│ │ │ │ 
│ │ │ └── com.skilldistillery.jpacrud/...
│ │ │ 
│ │ ├── resources/
│ │ │ │ 
│ │ │ └── META-INF/persistence.xml
│ │ │
│ │ └── webapp/
│ │ │
│ │ ├── WEB-INF/
│ │ │
│ │ └── static/
│ │
│ └── test/
│ │
│ └── java/
│ │
│ └── ...
│
└── build.gradle



---

## 📚 Lessons Learned

- **MySQL Workbench** allows "forward engineering" to generate SQL scripts to build and populate a database schema.  
- **JPQL (Java Persistence Query Language)** provides a Java-based way to write SQL queries that work across databases and ORM entities.  
- **Spring Boot** simplifies the setup of JPA and helps bind backend logic to browser-facing features.  
- **DAO pattern (coding to interfaces)** separates implementation logic from data access logic, improving testability and structure.  

---

## 🧩 Main Classes

- `SkiRunApplication` – Entry point of the application  
- `SkiRunController` – Handles HTTP requests and maps them to views  
- `SkiRunDAO` – Interface that defines database access methods  
- `SkiRunDaoImpl` – Implementation of the DAO interface using JPA  
- `SkiRun` – Entity class representing a ski run  
- `SkiRunsApplicationTests` – JUnit test class for verifying the application context and DAO behavior  

---

## 👤 Author

**Michael Francavilla**  
📍 [@ColoradoMF](https://github.com/ColoradoMF)  
💻 Skill Distillery Cohort #46
