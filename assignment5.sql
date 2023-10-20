use COMP2003_AS3;
/*

 Question 1

Write a CREATE table statement that has a PRIMARY KEY column and have that column auto generate a value on INSERT ( 5 marks )

*/

# Put your answer here

Create Table ASSIGNMENT5 (id INT AUTO_INCREMENT primary key, type varchar(52), name varchar(52));



/*
 Question 2

 Write 5 INSERT statements that add data to the table from Question 1 but doesn't include the PRIMARY KEY to test the auto numbering ( 5 marks )

*/

INSERT INTO ASSIGNMENT5 (type, name) VALUES ('name', 'Caeleb Dressel'), ('name', 'Michael Phelp'), ('name', 'Leon Marchand'),('name', 'Mikko Rantanen'), ('name', 'Cale Makar');


/*
 Question 3

 Write an ALTER statment to add a date column to the table from Question 1 and set a default of January 1 2020 ( 7 marks )

*/

ALTER TABLE ASSIGNMENT5 ADD COLUMN  created_date DATE DEFAULT '2020-01-01';
/*
 Question 4

 Write an ALTER statment to remove the date column you just added to your table (7 marks)


*/

ALTER TABLE ASSIGNMENT5 DROP COLUMN created_date;


/*
 Question 5

  Write a single ALTER statment to modify the name and datatype of two of your columns in your table from Question 1   ( 8 marks )


 */

ALTER TABLE ASSIGNMENT5 MODIFY COLUMN name text, MODIFY  COLUMN type longtext;


/*
 Question 6

  Write a single ALTER statment to add two columns to your table from Question 1, the first column needs a DEFAULT value, the second column needs to be put in between your first and second column of the table ( 8 marks )

 */

ALTER TABLE ASSIGNMENT5 ADD COLUMN tid int DEFAULT '1', ADD COLUMN updated_time int AFTER name;

/*
 Question 7

  Write a CREATE table statment that has an ID column (with a PRIMARY KEY and an AUTO generating number) and a description column.
  ALTER the table from Question 1 to have that ID column added to it and make a FOREIGN KEY reference
  INSERT records into the new table AND UPDATE the table from Question 1 with the new ID fields
  ( 10 marks )
 */

CREATE TABLE ASSIGNMENT5_7 (id int auto_increment primary key , description varchar(255));

ALTER TABLE ASSIGNMENT5
ADD COLUMN assignment5_7_id INT,
ADD FOREIGN KEY (assignment5_7_id) REFERENCES ASSIGNMENT5_7(id);

INSERT INTO ASSIGNMENT5_7 (description)  values ( 'Caeleb Dressel'), ( 'Michael Phelp'), ( 'Leon Marchand'),('Mikko Rantanen'), ('Cale Makar');

UPDATE ASSIGNMENT5 AS a5
JOIN ASSIGNMENT5_7 AS a57 ON a5.name = a57.description
SET a5.assignment5_7_id = a57.id;

