# Graded Challenge 3 - P1

Graded Challenge ini dibuat guna mengevaluasi pembelajaran pada Hacktiv8 Program Fulltime Golang khususnya pada pembelajaran SQL

## Assignment Objectives
Graded Challenge 3 ini dibuat guna mengevaluasi pemahaman SQL sebagai berikut:

- Mampu memahami konsep intermediate query SQL
- Mampu membuat ERD sesuai dengan requirement

## Assignment Directions

Design an ERD SQL Database for a university using MySQL. The database should include the following tables:

- **Student**: `stores student information such as name, ID, major, and enrollment date.`
- **Courses**: `stores course information such as course code, name, and credit hours.`
- **Professors**: `stores professor information such as name, department, and office number.`
- **Enrollments**: `stores enrollment information such as the course ID, student ID, and grade.`
- **Departments**: `stores department information such as name and head professor.`

### Instructions:

- Each table should have appropriate primary and foreign keys.
Relationships between tables should be established, and the correct cardinality should be used.

- Tables should be properly normalized to at least third normal form.
ERD (Entity-Relationship Diagram) must be included to visualize the database structure.

- Write SQL queries that answer the following questions:

a. What are the names of the students enrolled in a particular course?

b. What is the average grade for a particular course?

c. Which courses have not been taken by any student?

d. What is the highest grade received by a particular student?


**Additional Requirement** :

Sample Data: Prepare sample data using DML (Data Manipulation Language) to insert into the database for testing the queries.




## Assignment Submission

Push the completed assignment to your respective GitHub Classroom account. 

The submission should include the following files:

- `file.sql`: Contains DDL (Data Definition Language) and DML (Data Manipulation Language) along with the cardinality analysis.
- `queries.sql`: Contains the SQL queries that answer the provided questions.
- `ERD.png`: Entity-Relationship Diagram to visualize the database structure.
- `README.md`: A brief explanation of the database structure, how to run the script, and the answers to the provided questions.
- `data_sample.sql`: Contains the sample data used for testing the queries.



## Assignment Rubrics

Aspek : 


| **Criteria**             | **Meet Expectations**                                                  | **Points** |
|--------------------------|------------------------------------------------------------------------|------------|
| **Problem Solving - ERD**| Tables have appropriate primary and foreign keys.                      | 10 pts      |
|                          | Relationships between tables are established, and the correct cardinality is used. | 10 pts      |
|                          | Tables are properly normalized to at least third normal form.          | 10 pts      |
| **Query Solutions**      | SQL queries correctly answer the provided questions.                   | 40 pts      |
| **Readability**          | Code is well-organized and easy to read.                               | 20 pts      |
|                          | **Code includes appropriate comments and documentation.**              | 5 pts       |




### Kriteria Readability

- Ensure that your SQL code is formatted and indented properly for readability.
- Include comments to explain the purpose of complex queries or operations.
- Avoid hardcoding values that might change; use variables or parameters where appropriate.
- Handle potential errors or edge cases in your SQL queries.



Total Points : 100

Submission deadline is P1W4D1 at 18:00 WIB.

Late submissions will result in a score of 0 for GC 3.
