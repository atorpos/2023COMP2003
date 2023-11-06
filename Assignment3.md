## Question 1

 **Question 1 (10 marks)**
 
 **a) Create two tables with the same numbers of columns and datatypes (mininum 3 columns in each table) (3 marks)**
 
 **b) Populate that table with data (3 marks)**
 
 **c) Create a SELECT statement for each table and UNION them together (4 marks)**
 
 ```
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
 ```
 ```
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
 ```
 ```
 Select label, type from es_table01 union select label, type from es_table02;
 ```

| label | type |
| :--- | :--- |
| Anaheim Ducks | 4 |
| Arizona Coyotes | 3 |
| Boston Bruins | 1 |
| Buffalo Sabres | 1 |
| Calgary Flames | 4 |
| Carolina Hurricanes | 2 |
| Chicago Blackhawks | 3 |
| Colorado Avalanche | 3 |
| Columbus Blue Jackets | 2 |
| Dallas Stars | 3 |
| Detroit Red Wings | 1 |
| Edmonton Oilers | 4 |
| Florida Panthers | 1 |
| Los Angeles Kings | 4 |
| Minnesota Wild | 3 |
| Montreal Canadiens | 1 |
| Nashville Predators | 3 |
| New Jersey Devils | 2 |
| New York Islanders | 2 |
| New York Rangers | 2 |
| Ottawa Senators | 1 |
| Philadelphia Flyers | 2 |
| Pittsburgh Penguins | 2 |
| San Jose Sharks | 4 |
| Seattle Kraken | 4 |
| St. Louis Blues | 3 |
| Tampa Bay Lightning | 1 |
| Toronto Maple Leafs | 1 |
| Vancouver Canucks | 4 |
| Vegas Golden Knights | 4 |
| Washington Capitals | 2 |
| Winnipeg Jets | 3 |


## Question 2

**Create a query that lists the department number, employee number, and salaries of all employees in department D11.**
**UNION the same information , but this time sum up all the salaries to create a one line summary entry for the D11 department (hint sum the salary).  Sort the list by Salary.**

```
select WORKDEPT as `department_number`, EMPNO as `employee_number`, SALARY from EMPLOYEE where WORKDEPT= 'D11';
```

| department\_number | employee\_number | SALARY |
| :--- | :--- | :--- |
| D11 | 000060 | 72250.00 |
| D11 | 000150 | 55280.00 |
| D11 | 000160 | 62250.00 |
| D11 | 000170 | 44680.00 |
| D11 | 000180 | 51340.00 |
| D11 | 000190 | 50450.00 |
| D11 | 000200 | 57740.00 |
| D11 | 000210 | 68270.00 |
| D11 | 000220 | 49840.00 |
| D11 | 200170 | 64680.00 |
| D11 | 200220 | 69840.00 |


## Question 3

**a )  Write a query that uses NATURAL JOIN TO connect the EMPLOYEE and EMPPROJACT table.   Include the Employee number , First and Last name, Salary, Salary increased by 3% and Project number      ( 3 marks )**
 
**b) Use INNER JOIN OR JOIN with the same query with USING statement   ( 3 marks )**

 
**c) Use INNER JOIN OR JOIN with the same query with joined columns (hint a = a )    ( 4 marks )**

```
select e.EMPNO, e.FIRSTNME, e.LASTNAME, e.SALARY, (e.SALARY * 1.03) AS `increased_salary`, epj.PROJNO from EMPLOYEE e NATURAL JOIN EMPPROJACT epj;
```
| EMPNO | FIRSTNME | LASTNAME | SALARY | increased\_salary | PROJNO |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 000010 | CHRISTINE | SMITH | 152750.00 | 157332.5000 | AD3100 |
| 000070 | EVA | SMITH | 96170.00 | 99055.1000 | AD3110 |
| 000230 | JAMES | SMITH | 42180.00 | 43445.4000 | AD3111 |
| 000230 | JAMES | SMITH | 42180.00 | 43445.4000 | AD3111 |
| 000230 | JAMES | SMITH | 42180.00 | 43445.4000 | AD3111 |
| 000230 | JAMES | SMITH | 42180.00 | 43445.4000 | AD3111 |
| 000230 | JAMES | SMITH | 42180.00 | 43445.4000 | AD3111 |
| 000240 | SALVATORE | SMITH | 48760.00 | 50222.8000 | AD3111 |
| 000240 | SALVATORE | SMITH | 48760.00 | 50222.8000 | AD3111 |
| 000250 | DANIEL | SMITH | 49180.00 | 50655.4000 | AD3112 |
| 000250 | DANIEL | SMITH | 49180.00 | 50655.4000 | AD3112 |
| 000250 | DANIEL | SMITH | 49180.00 | 50655.4000 | AD3112 |
| 000250 | DANIEL | SMITH | 49180.00 | 50655.4000 | AD3112 |
| 000250 | DANIEL | SMITH | 49180.00 | 50655.4000 | AD3112 |
| 000250 | DANIEL | SMITH | 49180.00 | 50655.4000 | AD3112 |
| 000250 | DANIEL | SMITH | 49180.00 | 50655.4000 | AD3112 |
| 000250 | DANIEL | SMITH | 49180.00 | 50655.4000 | AD3112 |
| 000250 | DANIEL | SMITH | 49180.00 | 50655.4000 | AD3112 |
| 000260 | SYBIL | SMITH | 47250.00 | 48667.5000 | AD3113 |
| 000260 | SYBIL | SMITH | 47250.00 | 48667.5000 | AD3113 |
| 000260 | SYBIL | SMITH | 47250.00 | 48667.5000 | AD3113 |
| 000260 | SYBIL | SMITH | 47250.00 | 48667.5000 | AD3113 |
| 000260 | SYBIL | SMITH | 47250.00 | 48667.5000 | AD3113 |
| 000260 | SYBIL | SMITH | 47250.00 | 48667.5000 | AD3113 |
| 000260 | SYBIL | SMITH | 47250.00 | 48667.5000 | AD3113 |
| 000270 | MARIA | SMITH | 37380.00 | 38501.4000 | AD3113 |
| 000270 | MARIA | SMITH | 37380.00 | 38501.4000 | AD3113 |
| 000270 | MARIA | SMITH | 37380.00 | 38501.4000 | AD3113 |
| 000270 | MARIA | SMITH | 37380.00 | 38501.4000 | AD3113 |
| 000270 | MARIA | SMITH | 37380.00 | 38501.4000 | AD3113 |
| 000270 | MARIA | SMITH | 37380.00 | 38501.4000 | AD3113 |
| 000270 | MARIA | SMITH | 37380.00 | 38501.4000 | AD3113 |
| 000030 | SALLY | SMITH | 98250.00 | 101197.5000 | IF1000 |
| 000130 | DELORES | SMITH | 73800.00 | 76014.0000 | IF1000 |
| 000130 | DELORES | SMITH | 73800.00 | 76014.0000 | IF1000 |
| 000140 | HEATHER | SMITH | 68420.00 | 70472.6000 | IF1000 |
| 000030 | SALLY | SMITH | 98250.00 | 101197.5000 | IF2000 |
| 000140 | HEATHER | SMITH | 68420.00 | 70472.6000 | IF2000 |
| 000140 | HEATHER | SMITH | 68420.00 | 70472.6000 | IF2000 |
| 000140 | HEATHER | SMITH | 68420.00 | 70472.6000 | IF2000 |
| 000140 | HEATHER | SMITH | 68420.00 | 70472.6000 | IF2000 |
| 000010 | CHRISTINE | SMITH | 152750.00 | 157332.5000 | MA2100 |
| 000110 | VINCENZO | SMITH | 66500.00 | 68495.0000 | MA2100 |
| 000010 | CHRISTINE | SMITH | 152750.00 | 157332.5000 | MA2110 |
| 000200 | DAVID | SMITH | 57740.00 | 59472.2000 | MA2111 |
| 000200 | DAVID | SMITH | 57740.00 | 59472.2000 | MA2111 |
| 000220 | JENNIFER | SMITH | 49840.00 | 51335.2000 | MA2111 |
| 000150 | BRUCE | SMITH | 55280.00 | 56938.4000 | MA2112 |
| 000150 | BRUCE | SMITH | 55280.00 | 56938.4000 | MA2112 |
| 000170 | MASATOSHI | SMITH | 44680.00 | 46020.4000 | MA2112 |
| 000170 | MASATOSHI | SMITH | 44680.00 | 46020.4000 | MA2112 |
| 000190 | JAMES | SMITH | 50450.00 | 51963.5000 | MA2112 |
| 000190 | JAMES | SMITH | 50450.00 | 51963.5000 | MA2112 |
| 000160 | ELIZABETH | SMITH | 62250.00 | 64117.5000 | MA2113 |
| 000170 | MASATOSHI | SMITH | 44680.00 | 46020.4000 | MA2113 |
| 000180 | MARILYN | SMITH | 51340.00 | 52880.2000 | MA2113 |
| 000210 | WILLIAM | SMITH | 68270.00 | 70318.1000 | MA2113 |
| 000210 | WILLIAM | SMITH | 68270.00 | 70318.1000 | MA2113 |
| 000050 | JOHN | SMITH | 80175.00 | 82580.2500 | OP1000 |
| 000090 | EILEEN | SMITH | 89750.00 | 92442.5000 | OP1010 |
| 000280 | ETHEL | SMITH | 36250.00 | 37337.5000 | OP1010 |
| 000290 | JOHN | SMITH | 35340.00 | 36400.2000 | OP1010 |
| 000300 | PHILIP | SMITH | 37750.00 | 38882.5000 | OP1010 |
| 000310 | MAUDE | SMITH | 35900.00 | 36977.0000 | OP1010 |
| 000050 | JOHN | SMITH | 80175.00 | 82580.2500 | OP2010 |
| 000100 | THEODORE | SMITH | 86150.00 | 88734.5000 | OP2010 |
| 000320 | RAMLAL | SMITH | 39950.00 | 41148.5000 | OP2011 |
| 000320 | RAMLAL | SMITH | 39950.00 | 41148.5000 | OP2011 |
| 000330 | WING | SMITH | 45370.00 | 46731.1000 | OP2012 |
| 000330 | WING | SMITH | 45370.00 | 46731.1000 | OP2012 |
| 000340 | JASON | SMITH | 43840.00 | 45155.2000 | OP2013 |
| 000340 | JASON | SMITH | 43840.00 | 45155.2000 | OP2013 |
| 000020 | MICHAEL | SMITH | 94250.00 | 97077.5000 | PL2100 |

```
select e.EMPNO, e.FIRSTNME, e.LASTNAME, e.SALARY, (e.SALARY * 1.03) AS `increased_salary`, epj.PROJNO from EMPLOYEE e INNER JOIN EMPPROJACT epj USING (EMPNO);
```
| EMPNO | FIRSTNME | LASTNAME | SALARY | increased\_salary | PROJNO |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 000010 | CHRISTINE | SMITH | 152750.00 | 157332.5000 | AD3100 |
| 000070 | EVA | SMITH | 96170.00 | 99055.1000 | AD3110 |
| 000230 | JAMES | SMITH | 42180.00 | 43445.4000 | AD3111 |
| 000230 | JAMES | SMITH | 42180.00 | 43445.4000 | AD3111 |
| 000230 | JAMES | SMITH | 42180.00 | 43445.4000 | AD3111 |
| 000230 | JAMES | SMITH | 42180.00 | 43445.4000 | AD3111 |
| 000230 | JAMES | SMITH | 42180.00 | 43445.4000 | AD3111 |
| 000240 | SALVATORE | SMITH | 48760.00 | 50222.8000 | AD3111 |
| 000240 | SALVATORE | SMITH | 48760.00 | 50222.8000 | AD3111 |
| 000250 | DANIEL | SMITH | 49180.00 | 50655.4000 | AD3112 |
| 000250 | DANIEL | SMITH | 49180.00 | 50655.4000 | AD3112 |
| 000250 | DANIEL | SMITH | 49180.00 | 50655.4000 | AD3112 |
| 000250 | DANIEL | SMITH | 49180.00 | 50655.4000 | AD3112 |
| 000250 | DANIEL | SMITH | 49180.00 | 50655.4000 | AD3112 |
| 000250 | DANIEL | SMITH | 49180.00 | 50655.4000 | AD3112 |
| 000250 | DANIEL | SMITH | 49180.00 | 50655.4000 | AD3112 |
| 000250 | DANIEL | SMITH | 49180.00 | 50655.4000 | AD3112 |
| 000250 | DANIEL | SMITH | 49180.00 | 50655.4000 | AD3112 |
| 000260 | SYBIL | SMITH | 47250.00 | 48667.5000 | AD3113 |
| 000260 | SYBIL | SMITH | 47250.00 | 48667.5000 | AD3113 |
| 000260 | SYBIL | SMITH | 47250.00 | 48667.5000 | AD3113 |
| 000260 | SYBIL | SMITH | 47250.00 | 48667.5000 | AD3113 |
| 000260 | SYBIL | SMITH | 47250.00 | 48667.5000 | AD3113 |
| 000260 | SYBIL | SMITH | 47250.00 | 48667.5000 | AD3113 |
| 000260 | SYBIL | SMITH | 47250.00 | 48667.5000 | AD3113 |
| 000270 | MARIA | SMITH | 37380.00 | 38501.4000 | AD3113 |
| 000270 | MARIA | SMITH | 37380.00 | 38501.4000 | AD3113 |
| 000270 | MARIA | SMITH | 37380.00 | 38501.4000 | AD3113 |
| 000270 | MARIA | SMITH | 37380.00 | 38501.4000 | AD3113 |
| 000270 | MARIA | SMITH | 37380.00 | 38501.4000 | AD3113 |
| 000270 | MARIA | SMITH | 37380.00 | 38501.4000 | AD3113 |
| 000270 | MARIA | SMITH | 37380.00 | 38501.4000 | AD3113 |
| 000030 | SALLY | SMITH | 98250.00 | 101197.5000 | IF1000 |
| 000130 | DELORES | SMITH | 73800.00 | 76014.0000 | IF1000 |
| 000130 | DELORES | SMITH | 73800.00 | 76014.0000 | IF1000 |
| 000140 | HEATHER | SMITH | 68420.00 | 70472.6000 | IF1000 |
| 000030 | SALLY | SMITH | 98250.00 | 101197.5000 | IF2000 |
| 000140 | HEATHER | SMITH | 68420.00 | 70472.6000 | IF2000 |
| 000140 | HEATHER | SMITH | 68420.00 | 70472.6000 | IF2000 |
| 000140 | HEATHER | SMITH | 68420.00 | 70472.6000 | IF2000 |
| 000140 | HEATHER | SMITH | 68420.00 | 70472.6000 | IF2000 |
| 000010 | CHRISTINE | SMITH | 152750.00 | 157332.5000 | MA2100 |
| 000110 | VINCENZO | SMITH | 66500.00 | 68495.0000 | MA2100 |
| 000010 | CHRISTINE | SMITH | 152750.00 | 157332.5000 | MA2110 |
| 000200 | DAVID | SMITH | 57740.00 | 59472.2000 | MA2111 |
| 000200 | DAVID | SMITH | 57740.00 | 59472.2000 | MA2111 |
| 000220 | JENNIFER | SMITH | 49840.00 | 51335.2000 | MA2111 |
| 000150 | BRUCE | SMITH | 55280.00 | 56938.4000 | MA2112 |
| 000150 | BRUCE | SMITH | 55280.00 | 56938.4000 | MA2112 |
| 000170 | MASATOSHI | SMITH | 44680.00 | 46020.4000 | MA2112 |
| 000170 | MASATOSHI | SMITH | 44680.00 | 46020.4000 | MA2112 |
| 000190 | JAMES | SMITH | 50450.00 | 51963.5000 | MA2112 |
| 000190 | JAMES | SMITH | 50450.00 | 51963.5000 | MA2112 |
| 000160 | ELIZABETH | SMITH | 62250.00 | 64117.5000 | MA2113 |
| 000170 | MASATOSHI | SMITH | 44680.00 | 46020.4000 | MA2113 |
| 000180 | MARILYN | SMITH | 51340.00 | 52880.2000 | MA2113 |
| 000210 | WILLIAM | SMITH | 68270.00 | 70318.1000 | MA2113 |
| 000210 | WILLIAM | SMITH | 68270.00 | 70318.1000 | MA2113 |
| 000050 | JOHN | SMITH | 80175.00 | 82580.2500 | OP1000 |
| 000090 | EILEEN | SMITH | 89750.00 | 92442.5000 | OP1010 |
| 000280 | ETHEL | SMITH | 36250.00 | 37337.5000 | OP1010 |
| 000290 | JOHN | SMITH | 35340.00 | 36400.2000 | OP1010 |
| 000300 | PHILIP | SMITH | 37750.00 | 38882.5000 | OP1010 |
| 000310 | MAUDE | SMITH | 35900.00 | 36977.0000 | OP1010 |
| 000050 | JOHN | SMITH | 80175.00 | 82580.2500 | OP2010 |
| 000100 | THEODORE | SMITH | 86150.00 | 88734.5000 | OP2010 |
| 000320 | RAMLAL | SMITH | 39950.00 | 41148.5000 | OP2011 |
| 000320 | RAMLAL | SMITH | 39950.00 | 41148.5000 | OP2011 |
| 000330 | WING | SMITH | 45370.00 | 46731.1000 | OP2012 |
| 000330 | WING | SMITH | 45370.00 | 46731.1000 | OP2012 |
| 000340 | JASON | SMITH | 43840.00 | 45155.2000 | OP2013 |
| 000340 | JASON | SMITH | 43840.00 | 45155.2000 | OP2013 |
| 000020 | MICHAEL | SMITH | 94250.00 | 97077.5000 | PL2100 |

```
select e.EMPNO, e.FIRSTNME, e.LASTNAME, e.SALARY, (e.SALARY * 1.03) AS `increased_salary`, epj.PROJNO from EMPLOYEE e INNER JOIN EMPPROJACT epj ON e.EMPNO = epj.EMPNO;
```

| EMPNO | FIRSTNME | LASTNAME | SALARY | increased\_salary | PROJNO |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 000010 | CHRISTINE | SMITH | 152750.00 | 157332.5000 | AD3100 |
| 000070 | EVA | SMITH | 96170.00 | 99055.1000 | AD3110 |
| 000230 | JAMES | SMITH | 42180.00 | 43445.4000 | AD3111 |
| 000230 | JAMES | SMITH | 42180.00 | 43445.4000 | AD3111 |
| 000230 | JAMES | SMITH | 42180.00 | 43445.4000 | AD3111 |
| 000230 | JAMES | SMITH | 42180.00 | 43445.4000 | AD3111 |
| 000230 | JAMES | SMITH | 42180.00 | 43445.4000 | AD3111 |
| 000240 | SALVATORE | SMITH | 48760.00 | 50222.8000 | AD3111 |
| 000240 | SALVATORE | SMITH | 48760.00 | 50222.8000 | AD3111 |
| 000250 | DANIEL | SMITH | 49180.00 | 50655.4000 | AD3112 |
| 000250 | DANIEL | SMITH | 49180.00 | 50655.4000 | AD3112 |
| 000250 | DANIEL | SMITH | 49180.00 | 50655.4000 | AD3112 |
| 000250 | DANIEL | SMITH | 49180.00 | 50655.4000 | AD3112 |
| 000250 | DANIEL | SMITH | 49180.00 | 50655.4000 | AD3112 |
| 000250 | DANIEL | SMITH | 49180.00 | 50655.4000 | AD3112 |
| 000250 | DANIEL | SMITH | 49180.00 | 50655.4000 | AD3112 |
| 000250 | DANIEL | SMITH | 49180.00 | 50655.4000 | AD3112 |
| 000250 | DANIEL | SMITH | 49180.00 | 50655.4000 | AD3112 |
| 000260 | SYBIL | SMITH | 47250.00 | 48667.5000 | AD3113 |
| 000260 | SYBIL | SMITH | 47250.00 | 48667.5000 | AD3113 |
| 000260 | SYBIL | SMITH | 47250.00 | 48667.5000 | AD3113 |
| 000260 | SYBIL | SMITH | 47250.00 | 48667.5000 | AD3113 |
| 000260 | SYBIL | SMITH | 47250.00 | 48667.5000 | AD3113 |
| 000260 | SYBIL | SMITH | 47250.00 | 48667.5000 | AD3113 |
| 000260 | SYBIL | SMITH | 47250.00 | 48667.5000 | AD3113 |
| 000270 | MARIA | SMITH | 37380.00 | 38501.4000 | AD3113 |
| 000270 | MARIA | SMITH | 37380.00 | 38501.4000 | AD3113 |
| 000270 | MARIA | SMITH | 37380.00 | 38501.4000 | AD3113 |
| 000270 | MARIA | SMITH | 37380.00 | 38501.4000 | AD3113 |
| 000270 | MARIA | SMITH | 37380.00 | 38501.4000 | AD3113 |
| 000270 | MARIA | SMITH | 37380.00 | 38501.4000 | AD3113 |
| 000270 | MARIA | SMITH | 37380.00 | 38501.4000 | AD3113 |
| 000030 | SALLY | SMITH | 98250.00 | 101197.5000 | IF1000 |
| 000130 | DELORES | SMITH | 73800.00 | 76014.0000 | IF1000 |
| 000130 | DELORES | SMITH | 73800.00 | 76014.0000 | IF1000 |
| 000140 | HEATHER | SMITH | 68420.00 | 70472.6000 | IF1000 |
| 000030 | SALLY | SMITH | 98250.00 | 101197.5000 | IF2000 |
| 000140 | HEATHER | SMITH | 68420.00 | 70472.6000 | IF2000 |
| 000140 | HEATHER | SMITH | 68420.00 | 70472.6000 | IF2000 |
| 000140 | HEATHER | SMITH | 68420.00 | 70472.6000 | IF2000 |
| 000140 | HEATHER | SMITH | 68420.00 | 70472.6000 | IF2000 |
| 000010 | CHRISTINE | SMITH | 152750.00 | 157332.5000 | MA2100 |
| 000110 | VINCENZO | SMITH | 66500.00 | 68495.0000 | MA2100 |
| 000010 | CHRISTINE | SMITH | 152750.00 | 157332.5000 | MA2110 |
| 000200 | DAVID | SMITH | 57740.00 | 59472.2000 | MA2111 |
| 000200 | DAVID | SMITH | 57740.00 | 59472.2000 | MA2111 |
| 000220 | JENNIFER | SMITH | 49840.00 | 51335.2000 | MA2111 |
| 000150 | BRUCE | SMITH | 55280.00 | 56938.4000 | MA2112 |
| 000150 | BRUCE | SMITH | 55280.00 | 56938.4000 | MA2112 |
| 000170 | MASATOSHI | SMITH | 44680.00 | 46020.4000 | MA2112 |
| 000170 | MASATOSHI | SMITH | 44680.00 | 46020.4000 | MA2112 |
| 000190 | JAMES | SMITH | 50450.00 | 51963.5000 | MA2112 |
| 000190 | JAMES | SMITH | 50450.00 | 51963.5000 | MA2112 |
| 000160 | ELIZABETH | SMITH | 62250.00 | 64117.5000 | MA2113 |
| 000170 | MASATOSHI | SMITH | 44680.00 | 46020.4000 | MA2113 |
| 000180 | MARILYN | SMITH | 51340.00 | 52880.2000 | MA2113 |
| 000210 | WILLIAM | SMITH | 68270.00 | 70318.1000 | MA2113 |
| 000210 | WILLIAM | SMITH | 68270.00 | 70318.1000 | MA2113 |
| 000050 | JOHN | SMITH | 80175.00 | 82580.2500 | OP1000 |
| 000090 | EILEEN | SMITH | 89750.00 | 92442.5000 | OP1010 |
| 000280 | ETHEL | SMITH | 36250.00 | 37337.5000 | OP1010 |
| 000290 | JOHN | SMITH | 35340.00 | 36400.2000 | OP1010 |
| 000300 | PHILIP | SMITH | 37750.00 | 38882.5000 | OP1010 |
| 000310 | MAUDE | SMITH | 35900.00 | 36977.0000 | OP1010 |
| 000050 | JOHN | SMITH | 80175.00 | 82580.2500 | OP2010 |
| 000100 | THEODORE | SMITH | 86150.00 | 88734.5000 | OP2010 |
| 000320 | RAMLAL | SMITH | 39950.00 | 41148.5000 | OP2011 |
| 000320 | RAMLAL | SMITH | 39950.00 | 41148.5000 | OP2011 |
| 000330 | WING | SMITH | 45370.00 | 46731.1000 | OP2012 |
| 000330 | WING | SMITH | 45370.00 | 46731.1000 | OP2012 |
| 000340 | JASON | SMITH | 43840.00 | 45155.2000 | OP2013 |
| 000340 | JASON | SMITH | 43840.00 | 45155.2000 | OP2013 |
| 000020 | MICHAEL | SMITH | 94250.00 | 97077.5000 | PL2100 |

## Question 4

**a) Create three tables.  Two of the tables will have PRIMARY KEYS (mininum 3 columns in each table) and the third table will have two columns that are the foreign keys to each of the PRIMARY KEYS (6 marks)**
 
**b) Populate these table with data (5 marks)**
 
**c) Create a SELECT statement using NATURAL JOINS to connect the three tables together (7 marks)**
 
**d) Run the Reverse Engineer function in MySQL workbench on these tables and provide the .MWB file in your submission ( 7 marks )**

```
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

Select t1.team_name, t1.division, t2.team_player, t2.position from q4_table1 t1 NATURAL JOIN q4_table3 t3 NATURAL JOIN q4_table2 t2;
```

| team\_name | division | team\_player | position |
| :--- | :--- | :--- | :--- |
| Chicago Blackhawks | 3 | Corner Bednar | 1 |
| Colorado Avalanche | 3 | Nath MacKinnon | 1 |
| Columbus Blue Jackets | 2 | Bojke Jeanner | 2 |


## Question 5

**Write a query that uses INNER JOIN TO connect the EMPLOYEE, EMPPROJACT, PROJACT and PROJECT tables.   Include the Project number , Department number, Project start and end date and AC STAFF  
WHERE They belong to department D11 , Salary is more than or equal to 65 percent of $15,000 AND Salary is less than or equal to 130 percent of $40,000 **

```
SELECT *
FROM EMPLOYEE as E
         INNER JOIN EMPPROJACT as EP ON E.EMPNO = EP.EMPNO
         INNER JOIN PROJACT as PA ON EP.PROJNO = PA.PROJNO
         INNER JOIN PROJECT as P on PA.PROJNO = P.PROJNO
WHERE E.WORKDEPT = 'D11'
  and E.SALARY >= 15000 * 0.65
  and E.SALARY <= 40000 * 1.3;
```

| EMPNO | FIRSTNME | MIDINIT | LASTNAME | WORKDEPT | PHONENO | HIREDATE | JOB | EDLEVEL | GENDER | BIRTHDATE | SALARY | BONUS | COMM | EMPNO | PROJNO | ACTNO | EMPTIME | EMSTDATE | EMENDATE | PROJNO | ACTNO | ACSTAFF | ACSTDATE | ACENDATE | PROJNO | PROJNAME | DEPTNO | RESPEMP | PRSTAFF | PRSTDATE | PRENDATE | MAJPROJ |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| 000220 | JENNIFER | K | SMITH | D11 | 0672 | 1998-08-29 | DESIGNER | 18 | F | 1978-03-19 | 49840.00 | 600.00 | 2387.00 | 000220 | MA2111 | 40 | 1.00 | 2002-01-01 | 2003-02-01 | MA2111 | 40 | 0.00 | 2002-01-01 | 2900-01-01 | MA2111 | W L PROGRAM DESIGN | D11 | 000220 | 2.00 | 2002-01-01 | 1982-12-01 | MA2110 |
| 000220 | JENNIFER | K | SMITH | D11 | 0672 | 1998-08-29 | DESIGNER | 18 | F | 1978-03-19 | 49840.00 | 600.00 | 2387.00 | 000220 | MA2111 | 40 | 1.00 | 2002-01-01 | 2003-02-01 | MA2111 | 50 | 0.00 | 2002-01-01 | 2900-01-01 | MA2111 | W L PROGRAM DESIGN | D11 | 000220 | 2.00 | 2002-01-01 | 1982-12-01 | MA2110 |
| 000220 | JENNIFER | K | SMITH | D11 | 0672 | 1998-08-29 | DESIGNER | 18 | F | 1978-03-19 | 49840.00 | 600.00 | 2387.00 | 000220 | MA2111 | 40 | 1.00 | 2002-01-01 | 2003-02-01 | MA2111 | 60 | 0.00 | 2002-06-15 | 2900-01-01 | MA2111 | W L PROGRAM DESIGN | D11 | 000220 | 2.00 | 2002-01-01 | 1982-12-01 | MA2110 |
| 000170 | MASATOSHI | J | SMITH | D11 | 2890 | 1999-09-15 | DESIGNER | 16 | M | 1981-01-05 | 44680.00 | 500.00 | 1974.00 | 000170 | MA2112 | 60 | 1.00 | 2002-01-01 | 2003-06-01 | MA2112 | 60 | 0.00 | 2002-01-01 | 2900-01-01 | MA2112 | W L ROBOT DESIGN | D11 | 000150 | 3.00 | 2002-01-01 | 1982-12-01 | MA2110 |
| 000170 | MASATOSHI | J | SMITH | D11 | 2890 | 1999-09-15 | DESIGNER | 16 | M | 1981-01-05 | 44680.00 | 500.00 | 1974.00 | 000170 | MA2112 | 60 | 1.00 | 2002-01-01 | 2003-06-01 | MA2112 | 70 | 0.00 | 2002-01-01 | 2900-01-01 | MA2112 | W L ROBOT DESIGN | D11 | 000150 | 3.00 | 2002-01-01 | 1982-12-01 | MA2110 |
| 000170 | MASATOSHI | J | SMITH | D11 | 2890 | 1999-09-15 | DESIGNER | 16 | M | 1981-01-05 | 44680.00 | 500.00 | 1974.00 | 000170 | MA2112 | 60 | 1.00 | 2002-01-01 | 2003-06-01 | MA2112 | 70 | 0.00 | 2002-06-01 | 2900-01-01 | MA2112 | W L ROBOT DESIGN | D11 | 000150 | 3.00 | 2002-01-01 | 1982-12-01 | MA2110 |
| 000170 | MASATOSHI | J | SMITH | D11 | 2890 | 1999-09-15 | DESIGNER | 16 | M | 1981-01-05 | 44680.00 | 500.00 | 1974.00 | 000170 | MA2112 | 60 | 1.00 | 2002-01-01 | 2003-06-01 | MA2112 | 80 | 0.00 | 2002-10-01 | 2900-01-01 | MA2112 | W L ROBOT DESIGN | D11 | 000150 | 3.00 | 2002-01-01 | 1982-12-01 | MA2110 |
| 000170 | MASATOSHI | J | SMITH | D11 | 2890 | 1999-09-15 | DESIGNER | 16 | M | 1981-01-05 | 44680.00 | 500.00 | 1974.00 | 000170 | MA2112 | 60 | 1.00 | 2002-01-01 | 2003-06-01 | MA2112 | 180 | 0.00 | 2002-07-15 | 2900-01-01 | MA2112 | W L ROBOT DESIGN | D11 | 000150 | 3.00 | 2002-01-01 | 1982-12-01 | MA2110 |
| 000170 | MASATOSHI | J | SMITH | D11 | 2890 | 1999-09-15 | DESIGNER | 16 | M | 1981-01-05 | 44680.00 | 500.00 | 1974.00 | 000170 | MA2112 | 70 | 1.00 | 2002-06-01 | 2003-02-01 | MA2112 | 60 | 0.00 | 2002-01-01 | 2900-01-01 | MA2112 | W L ROBOT DESIGN | D11 | 000150 | 3.00 | 2002-01-01 | 1982-12-01 | MA2110 |
| 000170 | MASATOSHI | J | SMITH | D11 | 2890 | 1999-09-15 | DESIGNER | 16 | M | 1981-01-05 | 44680.00 | 500.00 | 1974.00 | 000170 | MA2112 | 70 | 1.00 | 2002-06-01 | 2003-02-01 | MA2112 | 70 | 0.00 | 2002-01-01 | 2900-01-01 | MA2112 | W L ROBOT DESIGN | D11 | 000150 | 3.00 | 2002-01-01 | 1982-12-01 | MA2110 |
| 000170 | MASATOSHI | J | SMITH | D11 | 2890 | 1999-09-15 | DESIGNER | 16 | M | 1981-01-05 | 44680.00 | 500.00 | 1974.00 | 000170 | MA2112 | 70 | 1.00 | 2002-06-01 | 2003-02-01 | MA2112 | 70 | 0.00 | 2002-06-01 | 2900-01-01 | MA2112 | W L ROBOT DESIGN | D11 | 000150 | 3.00 | 2002-01-01 | 1982-12-01 | MA2110 |
| 000170 | MASATOSHI | J | SMITH | D11 | 2890 | 1999-09-15 | DESIGNER | 16 | M | 1981-01-05 | 44680.00 | 500.00 | 1974.00 | 000170 | MA2112 | 70 | 1.00 | 2002-06-01 | 2003-02-01 | MA2112 | 80 | 0.00 | 2002-10-01 | 2900-01-01 | MA2112 | W L ROBOT DESIGN | D11 | 000150 | 3.00 | 2002-01-01 | 1982-12-01 | MA2110 |
| 000170 | MASATOSHI | J | SMITH | D11 | 2890 | 1999-09-15 | DESIGNER | 16 | M | 1981-01-05 | 44680.00 | 500.00 | 1974.00 | 000170 | MA2112 | 70 | 1.00 | 2002-06-01 | 2003-02-01 | MA2112 | 180 | 0.00 | 2002-07-15 | 2900-01-01 | MA2112 | W L ROBOT DESIGN | D11 | 000150 | 3.00 | 2002-01-01 | 1982-12-01 | MA2110 |
| 000190 | JAMES | H | SMITH | D11 | 2986 | 2004-07-26 | DESIGNER | 16 | M | 1982-06-25 | 50450.00 | 400.00 | 1636.00 | 000190 | MA2112 | 70 | 1.00 | 2002-01-01 | 2002-10-01 | MA2112 | 60 | 0.00 | 2002-01-01 | 2900-01-01 | MA2112 | W L ROBOT DESIGN | D11 | 000150 | 3.00 | 2002-01-01 | 1982-12-01 | MA2110 |
| 000190 | JAMES | H | SMITH | D11 | 2986 | 2004-07-26 | DESIGNER | 16 | M | 1982-06-25 | 50450.00 | 400.00 | 1636.00 | 000190 | MA2112 | 70 | 1.00 | 2002-01-01 | 2002-10-01 | MA2112 | 70 | 0.00 | 2002-01-01 | 2900-01-01 | MA2112 | W L ROBOT DESIGN | D11 | 000150 | 3.00 | 2002-01-01 | 1982-12-01 | MA2110 |
| 000190 | JAMES | H | SMITH | D11 | 2986 | 2004-07-26 | DESIGNER | 16 | M | 1982-06-25 | 50450.00 | 400.00 | 1636.00 | 000190 | MA2112 | 70 | 1.00 | 2002-01-01 | 2002-10-01 | MA2112 | 70 | 0.00 | 2002-06-01 | 2900-01-01 | MA2112 | W L ROBOT DESIGN | D11 | 000150 | 3.00 | 2002-01-01 | 1982-12-01 | MA2110 |
| 000190 | JAMES | H | SMITH | D11 | 2986 | 2004-07-26 | DESIGNER | 16 | M | 1982-06-25 | 50450.00 | 400.00 | 1636.00 | 000190 | MA2112 | 70 | 1.00 | 2002-01-01 | 2002-10-01 | MA2112 | 80 | 0.00 | 2002-10-01 | 2900-01-01 | MA2112 | W L ROBOT DESIGN | D11 | 000150 | 3.00 | 2002-01-01 | 1982-12-01 | MA2110 |
| 000190 | JAMES | H | SMITH | D11 | 2986 | 2004-07-26 | DESIGNER | 16 | M | 1982-06-25 | 50450.00 | 400.00 | 1636.00 | 000190 | MA2112 | 70 | 1.00 | 2002-01-01 | 2002-10-01 | MA2112 | 180 | 0.00 | 2002-07-15 | 2900-01-01 | MA2112 | W L ROBOT DESIGN | D11 | 000150 | 3.00 | 2002-01-01 | 1982-12-01 | MA2110 |
| 000190 | JAMES | H | SMITH | D11 | 2986 | 2004-07-26 | DESIGNER | 16 | M | 1982-06-25 | 50450.00 | 400.00 | 1636.00 | 000190 | MA2112 | 80 | 1.00 | 2002-10-01 | 2003-10-01 | MA2112 | 60 | 0.00 | 2002-01-01 | 2900-01-01 | MA2112 | W L ROBOT DESIGN | D11 | 000150 | 3.00 | 2002-01-01 | 1982-12-01 | MA2110 |
| 000190 | JAMES | H | SMITH | D11 | 2986 | 2004-07-26 | DESIGNER | 16 | M | 1982-06-25 | 50450.00 | 400.00 | 1636.00 | 000190 | MA2112 | 80 | 1.00 | 2002-10-01 | 2003-10-01 | MA2112 | 70 | 0.00 | 2002-01-01 | 2900-01-01 | MA2112 | W L ROBOT DESIGN | D11 | 000150 | 3.00 | 2002-01-01 | 1982-12-01 | MA2110 |
| 000190 | JAMES | H | SMITH | D11 | 2986 | 2004-07-26 | DESIGNER | 16 | M | 1982-06-25 | 50450.00 | 400.00 | 1636.00 | 000190 | MA2112 | 80 | 1.00 | 2002-10-01 | 2003-10-01 | MA2112 | 70 | 0.00 | 2002-06-01 | 2900-01-01 | MA2112 | W L ROBOT DESIGN | D11 | 000150 | 3.00 | 2002-01-01 | 1982-12-01 | MA2110 |
| 000190 | JAMES | H | SMITH | D11 | 2986 | 2004-07-26 | DESIGNER | 16 | M | 1982-06-25 | 50450.00 | 400.00 | 1636.00 | 000190 | MA2112 | 80 | 1.00 | 2002-10-01 | 2003-10-01 | MA2112 | 80 | 0.00 | 2002-10-01 | 2900-01-01 | MA2112 | W L ROBOT DESIGN | D11 | 000150 | 3.00 | 2002-01-01 | 1982-12-01 | MA2110 |
| 000190 | JAMES | H | SMITH | D11 | 2986 | 2004-07-26 | DESIGNER | 16 | M | 1982-06-25 | 50450.00 | 400.00 | 1636.00 | 000190 | MA2112 | 80 | 1.00 | 2002-10-01 | 2003-10-01 | MA2112 | 180 | 0.00 | 2002-07-15 | 2900-01-01 | MA2112 | W L ROBOT DESIGN | D11 | 000150 | 3.00 | 2002-01-01 | 1982-12-01 | MA2110 |
| 000170 | MASATOSHI | J | SMITH | D11 | 2890 | 1999-09-15 | DESIGNER | 16 | M | 1981-01-05 | 44680.00 | 500.00 | 1974.00 | 000170 | MA2113 | 80 | 1.00 | 2002-01-01 | 2003-02-01 | MA2113 | 60 | 0.00 | 2002-07-15 | 2900-01-01 | MA2113 | W L PROD CONT PROGS | D11 | 000160 | 3.00 | 2002-02-15 | 1982-12-01 | MA2110 |
| 000170 | MASATOSHI | J | SMITH | D11 | 2890 | 1999-09-15 | DESIGNER | 16 | M | 1981-01-05 | 44680.00 | 500.00 | 1974.00 | 000170 | MA2113 | 80 | 1.00 | 2002-01-01 | 2003-02-01 | MA2113 | 70 | 0.00 | 2002-04-01 | 2900-01-01 | MA2113 | W L PROD CONT PROGS | D11 | 000160 | 3.00 | 2002-02-15 | 1982-12-01 | MA2110 |
| 000170 | MASATOSHI | J | SMITH | D11 | 2890 | 1999-09-15 | DESIGNER | 16 | M | 1981-01-05 | 44680.00 | 500.00 | 1974.00 | 000170 | MA2113 | 80 | 1.00 | 2002-01-01 | 2003-02-01 | MA2113 | 80 | 0.00 | 2002-01-01 | 2900-01-01 | MA2113 | W L PROD CONT PROGS | D11 | 000160 | 3.00 | 2002-02-15 | 1982-12-01 | MA2110 |
| 000170 | MASATOSHI | J | SMITH | D11 | 2890 | 1999-09-15 | DESIGNER | 16 | M | 1981-01-05 | 44680.00 | 500.00 | 1974.00 | 000170 | MA2113 | 80 | 1.00 | 2002-01-01 | 2003-02-01 | MA2113 | 80 | 0.00 | 2002-10-01 | 2900-01-01 | MA2113 | W L PROD CONT PROGS | D11 | 000160 | 3.00 | 2002-02-15 | 1982-12-01 | MA2110 |
| 000170 | MASATOSHI | J | SMITH | D11 | 2890 | 1999-09-15 | DESIGNER | 16 | M | 1981-01-05 | 44680.00 | 500.00 | 1974.00 | 000170 | MA2113 | 80 | 1.00 | 2002-01-01 | 2003-02-01 | MA2113 | 180 | 0.00 | 2002-10-01 | 2900-01-01 | MA2113 | W L PROD CONT PROGS | D11 | 000160 | 3.00 | 2002-02-15 | 1982-12-01 | MA2110 |
| 000180 | MARILYN | S | SMITH | D11 | 1682 | 2003-07-07 | DESIGNER | 17 | F | 1979-02-21 | 51340.00 | 500.00 | 1707.00 | 000180 | MA2113 | 70 | 1.00 | 2002-04-01 | 2002-06-15 | MA2113 | 60 | 0.00 | 2002-07-15 | 2900-01-01 | MA2113 | W L PROD CONT PROGS | D11 | 000160 | 3.00 | 2002-02-15 | 1982-12-01 | MA2110 |
| 000180 | MARILYN | S | SMITH | D11 | 1682 | 2003-07-07 | DESIGNER | 17 | F | 1979-02-21 | 51340.00 | 500.00 | 1707.00 | 000180 | MA2113 | 70 | 1.00 | 2002-04-01 | 2002-06-15 | MA2113 | 70 | 0.00 | 2002-04-01 | 2900-01-01 | MA2113 | W L PROD CONT PROGS | D11 | 000160 | 3.00 | 2002-02-15 | 1982-12-01 | MA2110 |
| 000180 | MARILYN | S | SMITH | D11 | 1682 | 2003-07-07 | DESIGNER | 17 | F | 1979-02-21 | 51340.00 | 500.00 | 1707.00 | 000180 | MA2113 | 70 | 1.00 | 2002-04-01 | 2002-06-15 | MA2113 | 80 | 0.00 | 2002-01-01 | 2900-01-01 | MA2113 | W L PROD CONT PROGS | D11 | 000160 | 3.00 | 2002-02-15 | 1982-12-01 | MA2110 |
| 000180 | MARILYN | S | SMITH | D11 | 1682 | 2003-07-07 | DESIGNER | 17 | F | 1979-02-21 | 51340.00 | 500.00 | 1707.00 | 000180 | MA2113 | 70 | 1.00 | 2002-04-01 | 2002-06-15 | MA2113 | 80 | 0.00 | 2002-10-01 | 2900-01-01 | MA2113 | W L PROD CONT PROGS | D11 | 000160 | 3.00 | 2002-02-15 | 1982-12-01 | MA2110 |
| 000180 | MARILYN | S | SMITH | D11 | 1682 | 2003-07-07 | DESIGNER | 17 | F | 1979-02-21 | 51340.00 | 500.00 | 1707.00 | 000180 | MA2113 | 70 | 1.00 | 2002-04-01 | 2002-06-15 | MA2113 | 180 | 0.00 | 2002-10-01 | 2900-01-01 | MA2113 | W L PROD CONT PROGS | D11 | 000160 | 3.00 | 2002-02-15 | 1982-12-01 | MA2110 |


## Question 6

**Create a query that lists empno, projno, emptime, emendate.  Left join the project to the empprojact table using projno and left join the act table using actno and then right join employee table using empno. 
 Where projno is AD3113 and empno is 000270 and emptime is greater than 0.5**

```
SELECT * from EMPPROJACT as EPA LEFT JOIN PROJECT as P ON EPA.PROJNO = P.PROJNO LEFT JOIN ACT as A ON EPA.ACTNO = A.ACTNO RIGHT JOIN EMPLOYEE as E on EPA.EMPNO = E.EMPNO WHERE EPA.PROJNO = 'AD3113' AND E.EMPNO = '000270' AND EPA.EMPTIME > 0.5;
```

| EMPNO | PROJNO | ACTNO | EMPTIME | EMSTDATE | EMENDATE | PROJNO | PROJNAME | DEPTNO | RESPEMP | PRSTAFF | PRSTDATE | PRENDATE | MAJPROJ | ACTNO | ACTKWD | ACTDESC | EMPNO | FIRSTNME | MIDINIT | LASTNAME | WORKDEPT | PHONENO | HIREDATE | JOB | EDLEVEL | GENDER | BIRTHDATE | SALARY | BONUS | COMM |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| 000270 | AD3113 | 60 | 1.00 | 2002-04-01 | 2002-09-01 | AD3113 | ACCOUNT PROGRAMMING | D21 | 000270 | 2.00 | 2002-01-01 | 2003-02-01 | AD3110 | 60 | LOGIC | DESCRIBE LOGIC | 000270 | MARIA | L | SMITH | D21 | 9001 | 2006-09-30 | CLERK | 15 | F | 2003-05-26 | 37380.00 | 500.00 | 2190.00 |
| 000270 | AD3113 | 70 | 0.75 | 2002-09-01 | 2002-10-15 | AD3113 | ACCOUNT PROGRAMMING | D21 | 000270 | 2.00 | 2002-01-01 | 2003-02-01 | AD3110 | 70 | CODE | CODE PROGRAMS | 000270 | MARIA | L | SMITH | D21 | 9001 | 2006-09-30 | CLERK | 15 | F | 2003-05-26 | 37380.00 | 500.00 | 2190.00 |
| 000270 | AD3113 | 70 | 1.00 | 2002-10-15 | 2003-02-01 | AD3113 | ACCOUNT PROGRAMMING | D21 | 000270 | 2.00 | 2002-01-01 | 2003-02-01 | AD3110 | 70 | CODE | CODE PROGRAMS | 000270 | MARIA | L | SMITH | D21 | 9001 | 2006-09-30 | CLERK | 15 | F | 2003-05-26 | 37380.00 | 500.00 | 2190.00 |
| 000270 | AD3113 | 80 | 1.00 | 2002-01-01 | 2002-03-01 | AD3113 | ACCOUNT PROGRAMMING | D21 | 000270 | 2.00 | 2002-01-01 | 2003-02-01 | AD3110 | 80 | TEST | TEST PROGRAMS | 000270 | MARIA | L | SMITH | D21 | 9001 | 2006-09-30 | CLERK | 15 | F | 2003-05-26 | 37380.00 | 500.00 | 2190.00 |


## Question 7

**Describe all of the relationships between the tables in the attached image file TableRelationships.jpg**

  **a) describe all the foreign key and primary keys, either by detailing them 1 by 1 or define the CREATE table statements for all the tables (10 marks)**
  **b) describe the relationship between each table ( 1..1 (exactly one match)  1..n (one or more matches)) (5 marks)**

```
reate table contacttype
(
    id    int auto_increment
        primary key,
    label varchar(255) null
);

create table person
(
    id        int auto_increment
        primary key,
    firstname varchar(255) null,
    lastname  varchar(255) null,
    dob       date         null,
    managerid int          null,
    notes     text         null,
    created   timestamp    null
);

create table contact
(
    pid   int  null,
    ctid  int  null,
    value text null,
    constraint contact_ibfk_1
        foreign key (ctid) references contacttype (id),
    constraint contact_ibfk_2
        foreign key (pid) references person (id)
);

create index ctid
    on contact (ctid);

create index pid
    on contact (pid);

create table project
(
    id     int          not null
        primary key,
    label  varchar(255) null,
    budget double       null
);

create table role
(
    id    int          not null
        primary key,
    label varchar(255) null
);

create table projectperson
(
    prid int null,
    pid  int null,
    rid  int null,
    constraint projectperson_ibfk_1
        foreign key (pid) references person (id),
    constraint projectperson_ibfk_2
        foreign key (rid) references role (id),
    constraint projectperson_ibfk_3
        foreign key (prid) references project (id)
);

create index pid
    on projectperson (pid);

create index prid
    on projectperson (prid);

create index rid
    on projectperson (rid);
```

