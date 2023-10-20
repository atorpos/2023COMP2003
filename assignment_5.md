## Question 1

 **Write a CREATE table statement that has a PRIMARY KEY column and have that column auto generate a value on INSERT ( 5 marks )**
 
 ```
 Create Table ASSIGNMENT5 (id INT AUTO_INCREMENT primary key, type varchar(52), name varchar(52));
 ```
 
## Question 2

 **Write 5 INSERT statements that add data to the table from Question 1 but doesn't include the PRIMARY KEY to test the auto numbering ( 5 marks )**


 ```
 INSERT INTO ASSIGNMENT5 (type, name) VALUES ('name', 'Caeleb Dressel'), ('name', 'Michael Phelp'), ('name', 'Leon Marchand'),('name', 'Mikko Rantanen'), ('name', 'Cale Makar');
 ```
 
 | id | type | name |
| :--- | :--- | :--- |
| 1 | name | Caeleb Dressel |
| 2 | name | Michael Phelp |
| 3 | name | Leon Marchand |
| 4 | name | Mikko Rantanen |
| 5 | name | Cale Makar |


## Question 3

 **Write an ALTER statment to add a date column to the table from Question 1 and set a default of January 1 2020 ( 7 marks )**
 
 ```
 ALTER TABLE ASSIGNMENT5 ADD COLUMN  created_date DATE DEFAULT '2020-01-01';
 ```
 
 | id | type | name | created\_date |
| :--- | :--- | :--- | :--- |
| 1 | name | Caeleb Dressel | 2020-01-01 |
| 2 | name | Michael Phelp | 2020-01-01 |
| 3 | name | Leon Marchand | 2020-01-01 |
| 4 | name | Mikko Rantanen | 2020-01-01 |
| 5 | name | Cale Makar | 2020-01-01 |


## Question 4

**Write an ALTER statment to remove the date column you just added to your table (7 marks)**

```
ALTER TABLE ASSIGNMENT5 DROP COLUMN created_date;
```
| id | type | name |
| :--- | :--- | :--- |
| 1 | name | Caeleb Dressel |
| 2 | name | Michael Phelp |
| 3 | name | Leon Marchand |
| 4 | name | Mikko Rantanen |
| 5 | name | Cale Makar |

## Question 5

**Write a single ALTER statment to modify the name and datatype of two of your columns in your table from Question 1   ( 8 marks )**

```
ALTER TABLE ASSIGNMENT5 MODIFY COLUMN name text, MODIFY  COLUMN type longtext;
```
## Question 6

**Write a single ALTER statment to add two columns to your table from Question 1, the first column needs a DEFAULT value, the second column needs to be put in between your first and second column of the table ( 8 marks )**

```
ALTER TABLE ASSIGNMENT5 ADD COLUMN tid int DEFAULT '1', ADD COLUMN updated_time int AFTER name;
```
| id | type | name | updated\_time | tid |
| :--- | :--- | :--- | :--- | :--- |
| 1 | name | Caeleb Dressel | null | 1 |
| 2 | name | Michael Phelp | null | 1 |
| 3 | name | Leon Marchand | null | 1 |
| 4 | name | Mikko Rantanen | null | 1 |
| 5 | name | Cale Makar | null | 1 |


## Question 7

 **Write a CREATE table statment that has an ID column (with a PRIMARY KEY and an AUTO generating number) and a description column.**
  **ALTER the table from Question 1 to have that ID column added to it and make a FOREIGN KEY reference**
  **INSERT records into the new table AND UPDATE the table from Question 1 with the new ID fields( 10 marks )**
  
 ```
 CREATE TABLE ASSIGNMENT5_7 (id int auto_increment primary key , description varchar(255));
 
 ALTER TABLE ASSIGNMENT5 ADD COLUMN assignment5_7_id INT, ADD FOREIGN KEY (assignment5_7_id) REFERENCES ASSIGNMENT5_7(id);

 INSERT INTO ASSIGNMENT5_7 (description)  values ( 'Caeleb Dressel'), ( 'Michael Phelp'), ( 'Leon Marchand'),('Mikko Rantanen'), ('Cale Makar');

 UPDATE ASSIGNMENT5 AS a5 JOIN ASSIGNMENT5_7 AS a57 ON a5.name = a57.description SET a5.assignment5_7_id = a57.id;
 ```
### Table ASSIGNMENT5 

| id | type | name | updated\_time | tid | as\_id | assignment5\_7\_id |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | name | Caeleb Dressel | null | 1 | null | 6 |
| 2 | name | Michael Phelp | null | 1 | null | 7 |
| 3 | name | Leon Marchand | null | 1 | null | 8 |
| 4 | name | Mikko Rantanen | null | 1 | null | 9 |
| 5 | name | Cale Makar | null | 1 | null | 10 |

### Table ASSIGNMENT5_7

 | id | description |
| :--- | :--- |
| 1 | Colorado |
| 2 | TORONTO |
| 3 | St Louis |
| 4 | NEW YORK |
| 5 | TAMPA |
| 6 | Caeleb Dressel |
| 7 | Michael Phelp |
| 8 | Leon Marchand |
| 9 | Mikko Rantanen |
| 10 | Cale Makar |

 

