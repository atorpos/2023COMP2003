/*
				Assignment 6
                  Worth 10%
                Total Assignment is out of 100 marks

                Complete all of the questions in this SQL file and submit the file for grading

                Open this file in SQL Workbench to complete all of the statements

                Make sure you run the CreateDB Script to create the sample database again so you have the correct data

                You will need it to create the queries based on these tables

                There is a .jpg file which shows the tables in the database

*/

CREATE DATABASE COMP2003_AS6;
use COMP2003_AS6;
/*
 Question 1 (10 marks)

 a) Create two tables with the same numbers of columns and datatypes (mininum 3 columns in each table) (3 marks)

 b) Populate that table with data (3 marks)

 c) Create a SELECT statement for each table and UNION them together (4 marks)

*/

Create TABLE es_table01 (
    id INT auto_increment primary key ,
    label VARCHAR(255),
    type INT
);
Create Table es_table02 (
    id INT auto_increment primary key ,
    label VARCHAR(255),
    type INT
);

INSERT INTO es_table02 (label, type) VALUES
('Anaheim Ducks', 4),
('Arizona Coyotes', 3),
('Boston Bruins', 1),
('Buffalo Sabres', 1),
('Calgary Flames', 4),
('Carolina Hurricanes', 2),
('Chicago Blackhawks', 3),
('Colorado Avalanche', 3),
('Columbus Blue Jackets', 2),
('Dallas Stars', 3),
('Detroit Red Wings', 1),
('Edmonton Oilers', 4),
('Florida Panthers', 1),
('Los Angeles Kings', 4),
('Minnesota Wild', 3),
('Montreal Canadiens', 1),
('Nashville Predators', 3),
('New Jersey Devils', 2),
('New York Islanders', 2),
('New York Rangers', 2),
('Ottawa Senators', 1),
('Philadelphia Flyers', 2),
('Pittsburgh Penguins', 2),
('San Jose Sharks', 4),
('Seattle Kraken', 4),
('St. Louis Blues', 3),
('Tampa Bay Lightning', 1),
('Toronto Maple Leafs', 1),
('Vancouver Canucks', 4),
('Vegas Golden Knights', 4),
('Washington Capitals', 2),
('Winnipeg Jets', 3);

Select label, type from es_table01 union select label, type from es_table02;

/*
 Question 2 (10 marks)

 Create a query that lists the department number, employee number, and salaries of all employees in department D11.
 UNION the same information , but this time sum up all the salaries to create a one line summary entry for the D11 department (hint sum the salary).  Sort the list by Salary.

*/
use COMP2003_AS3;

select WORKDEPT as `department_number`, EMPNO as `employee_number`, SALARY from EMPLOYEE where WORKDEPT= 'D11';

/*
 Question 3 (10 marks)

a )  Write a query that uses NATURAL JOIN TO connect the EMPLOYEE and EMPPROJACT table.   Include the Employee number , First and Last name, Salary, Salary increased by 3% and Project number      ( 3 marks )

b) Use INNER JOIN OR JOIN with the same query with USING statement   ( 3 marks )


c) Use INNER JOIN OR JOIN with the same query with joined columns (hint a = a )    ( 4 marks )

*/

select e.EMPNO, e.FIRSTNME, e.LASTNAME, e.SALARY, (e.SALARY * 1.03) AS `increased_salary`, epj.PROJNO from EMPLOYEE e NATURAL JOIN EMPPROJACT epj;

select e.EMPNO, e.FIRSTNME, e.LASTNAME, e.SALARY, (e.SALARY * 1.03) AS `increased_salary`, epj.PROJNO from EMPLOYEE e INNER JOIN EMPPROJACT epj USING (EMPNO);

select e.EMPNO, e.FIRSTNME, e.LASTNAME, e.SALARY, (e.SALARY * 1.03) AS `increased_salary`, epj.PROJNO from EMPLOYEE e INNER JOIN EMPPROJACT epj ON e.EMPNO = epj.EMPNO;
/*
 Question 4 ( 25 marks )

  a) Create three tables.  Two of the tables will have PRIMARY KEYS (mininum 3 columns in each table) and the third table will have two columns that are the foreign keys to each of the PRIMARY KEYS (6 marks)

 b) Populate these table with data (5 marks)

 c) Create a SELECT statement using NATURAL JOINS to connect the three tables together (7 marks)

 d) Run the Reverse Engineer function in MySQL workbench on these tables and provide the .MWB file in your submission ( 7 marks )

*/
use COMP2003_AS6;

create table q4_table1(
    id INT auto_increment primary key,
    team_name varchar(255),
    division int,
    create_date DATE
);

create table q4_table2(
    id INT auto_increment primary key,
    team_player VARCHAR(255),
    position INT,
    create_date DATE
);

create table q4_table3(
    id int auto_increment primary key ,
    q4_table1_id INT,
    q4_table2_id INT,
    FOREIGN KEY (q4_table1_id) REFERENCES q4_table1(id),
    FOREIGN KEY (q4_table2_id) REFERENCES q4_table2(id)
);

INSERT INTO q4_table1 (team_name, division, create_date)
VALUES
    ('Boston Bruins', 1, '2023-11-04'),
    ('Buffalo Sabres', 1, '2023-11-04'),
    ('Carolina Hurricanes', 2, '2023-11-04'),
    ('Chicago Blackhawks', 3, '2023-11-04'),
    ('Colorado Avalanche', 3, '2023-11-04'),
    ('Columbus Blue Jackets', 2, '2023-11-04');

-- Populate q4_table2 with NHL players
INSERT INTO q4_table2 (team_player, position, create_date)
VALUES
    ('Patrice Bergeron', 1, '2023-11-01'),
    ('Owen Power', 4, '2023-11-02'),
    ('Tony DeAngleo', 4, '2023-11-03'),
    ('Corner Bednar', 1, '2023-11-04'),
    ('Nath MacKinnon', 1, '2023-11-04'),
    ('Bojke Jeanner', 2, '2023-11-04');

INSERT INTO q4_table3 (q4_table1_id, q4_table2_id) VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6);

select * from q4_table3;
Select t1.team_name, t1.division, t2.team_player, t2.position from q4_table1 t1 NATURAL JOIN q4_table3 t3 NATURAL JOIN q4_table2 t2;
/*
 Question 5 (15 marks)

  Write a query that uses INNER JOIN TO connect the EMPLOYEE, EMPPROJACT, PROJACT and PROJECT tables.   Include the Project number , Department number, Project start and end date and AC STAFF
WHERE They belong to department D11 , Salary is more than or equal to 65 percent of $15,000 AND Salary is less than or equal to 130 percent of $40,000


*/
Use COMP2003_AS3;

SELECT *
FROM EMPLOYEE as E
         INNER JOIN EMPPROJACT as EP ON E.EMPNO = EP.EMPNO
         INNER JOIN PROJACT as PA ON EP.PROJNO = PA.PROJNO
         INNER JOIN PROJECT as P on PA.PROJNO = P.PROJNO
WHERE E.WORKDEPT = 'D11'
  and E.SALARY >= 15000 * 0.65
  and E.SALARY <= 40000 * 1.3;

/*
 Question 6 (15 marks)

 Create a query that lists empno, projno, emptime, emendate.  Left join the project to the empprojact table using projno and left join the act table using actno and then right join employee table using empno.
 Where projno is AD3113 and empno is 000270 and emptime is greater than 0.5

*/

SELECT * from EMPPROJACT as EPA LEFT JOIN PROJECT as P ON EPA.PROJNO = P.PROJNO LEFT JOIN ACT as A ON EPA.ACTNO = A.ACTNO RIGHT JOIN EMPLOYEE as E on EPA.EMPNO = E.EMPNO WHERE EPA.PROJNO = 'AD3113' AND E.EMPNO = '000270' AND EPA.EMPTIME > 0.5;

/*
 Question 7 (15 marks)

  Describe all of the relationships between the tables in the attached image file TableRelationships.jpg

  a) describe all the foreign key and primary keys, either by detailing them 1 by 1 or define the CREATE table statements for all the tables (10 marks)
  b) describe the relationship between each table ( 1..1 (exactly one match)  1..n (one or more matches)) (5 marks)


 */
CREATE DATABASE COMP2003_AS6_7;
USE COMP2003_AS6_7;
Create table contacttype(
    id INT auto_increment primary key,
    label VARCHAR(255)
);
CREATE table contact(
    pid INT,
    ctid INT,
    value TEXT
);
Create table person(
    id INT auto_increment primary key,
    firstname VARCHAR(255),
    lastname VARCHAR(255),
    dob DATE,
    managerid INT,
    notes TEXT,
    created TIMESTAMP
);
Create table projectperson(
    prid INT,
    pid INT,
    rid INT
);

Create table role(
    id INT,
    label VARCHAR(255)
);

Create table project(
    id INT,
    label VARCHAR(255),
    budget DOUBLE
);

alter table contact add foreign key (ctid) references contacttype(id);
alter table contact add foreign key (pid) references person(id);
alter table projectperson add foreign key (pid) references person(id);
alter table projectperson add foreign key (prid) references project(id);
