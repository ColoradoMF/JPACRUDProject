# JPACRUDProject

Favorite Ski Run 

Functionality:
Show All Ski Runs
Search for a Ski Run By ID#
Search Ski Run By Keyword
Add New Ski Run
Show Ski Run Details (including an image and a map using lat/long properties)
Update a Ski Run's Details 
Delete Ski Run

----------------------------------------------------

Technologies Used
-Java 21

-Spring Boot

-Spring MVC

-JPA (Jakarta Persistence)

-MySQL

-Gradle

-JSP (Jakarta Server Pages)

----------------------------------------------------

File Structure:

JPACRUDProject/
│
├── DB/
│   └── skirunsdb.mwb
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   └── com.skilldistillery.jpacrud/...
│   │   ├── resources/
│   │   │   └── META-INF/persistence.xml
│   │   └── webapp/
│   │       ├── WEB-INF/
│   │       └── static/
│   └── test/
│       └── java/
│           └── ...
└── build.gradle

----------------------------------------------------

Lessons Learned:
-MySQL Workbench offers a feature to "forward engineer" a script for initializing a MySQL database and populate example data.

-JPQL (Java Persistence Query Language) allows a programatic way to construct SQL 
(Structured Query Language) queries with Java and MySQL to access DML and DDL functionality on relevant data with CRUD operations (Create, Read, Update, Delete) from a Java application.

-Spring Boot allows integrating JPA to connect browser functionality with a database-backed application.

-Coding to the interface which defines the database access methods helps separate concerns related to implementation.

----------------------------------------------------

Classes:
-SkiRunApplication : application container for Ski Runs App
-SkiRunController : defines request mappings
-SkiRunDAO : defines database methods
-SkiRunDaoImpl : implements SkiRunDAO
-SkiRun - Object for each Ski Run
-SkiRunsApplicationTests - jUnit tests

----------------------------------------------------

Author:
Michael Francavilla @ColoradoMF
Skill Distillery Cohort #46
