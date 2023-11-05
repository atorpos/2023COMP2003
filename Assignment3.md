## Question 1

 *Question 1 (10 marks)
 
 a) Create two tables with the same numbers of columns and datatypes (mininum 3 columns in each table) (3 marks)
 
 b) Populate that table with data (3 marks)
 
 c) Create a SELECT statement for each table and UNION them together (4 marks)
**
 
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

| DEPTNO | DEPTNAME | MGRNO | ADMRDEPT | LOCATION |
| :--- | :--- | :--- | :--- | :--- |
| A00 | SPIFFY COMPUTER SERVICE DIV. | 000010 | A00 |  |
| B01 | PLANNING | 000020 | A00 |  |
| C01 | INFORMATION CENTER | 000030 | A00 |  |
| D01 | DEVELOPMENT CENTER |  | A00 |  |
| D11 | MANUFACTURING SYSTEMS | 000060 | D01 |  |
| D21 | ADMINISTRATION SYSTEMS | 000070 | D01 |  |
| E01 | SUPPORT SERVICES | 000050 | A00 |  |
| E11 | OPERATIONS | 000090 | E01 |  |
| E21 | SOFTWARE SUPPORT | 000100 | E01 |  |
| F22 | BRANCH OFFICE F2 |  | E01 |  |
| G22 | BRANCH OFFICE G2 |  | E01 |  |
| H22 | BRANCH OFFICE H2 |  | E01 |  |
| I22 | BRANCH OFFICE I2 |  | E01 |  |
| J22 | BRANCH OFFICE J2 |  | E01 |  |

## Question 2

**Write a statement to SELECT all of the columns in the EMPLOYEE table but only return 5 rows   ( 5 marks )**

```
select * from EMPLOYEE limit 5;
```

| EMPNO | FIRSTNME | MIDINIT | LASTNAME | WORKDEPT | PHONENO | HIREDATE | JOB | EDLEVEL | GENDER | BIRTHDATE | SALARY | BONUS | COMM |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| 000010 | CHRISTINE | I | HAAS | A00 | 3978 | 1995-01-01 | PRES | 18 | F | 1963-08-24 | 152750.00 | 1000.00 | 4220.00 |
| 000020 | MICHAEL | L | THOMPSON | B01 | 3476 | 2003-10-10 | MANAGER | 18 | M | 1978-02-02 | 94250.00 | 800.00 | 3300.00 |
| 000030 | SALLY | A | KWAN | C01 | 4738 | 2005-04-05 | MANAGER | 20 | F | 1971-05-11 | 98250.00 | 800.00 | 3060.00 |
| 000050 | JOHN | B | GEYER | E01 | 6789 | 1979-08-17 | MANAGER | 16 | M | 1955-09-15 | 80175.00 | 800.00 | 3214.00 |
| 000060 | IRVING | F | STERN | D11 | 6423 | 2003-09-14 | MANAGER | 16 | M | 1975-07-07 | 72250.00 | 500.00 | 2580.00 |

## Question 3

**Write a statement to SELECT all of the columns from the PROJECT table where there is more than 3 PRSTAFF  ( 5 marks )**

```
select * from PROJECT where PRSTAFF > 3;
```

| PROJNO | PROJNAME | DEPTNO | RESPEMP | PRSTAFF | PRSTDATE | PRENDATE | MAJPROJ |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| AD3100 | ADMIN SERVICES | D01 | 000010 | 6.50 | 2002-01-01 | 2003-02-01 |  |
| AD3110 | GENERAL ADMIN SYSTEMS | D21 | 000070 | 6.00 | 2002-01-01 | 2003-02-01 | AD3100 |
| MA2100 | WELD LINE AUTOMATION | D01 | 000010 | 12.00 | 2002-01-01 | 2003-02-01 |  |
| MA2110 | W L PROGRAMMING | D11 | 000060 | 9.00 | 2002-01-01 | 2003-02-01 | MA2100 |
| OP1000 | OPERATION SUPPORT | E01 | 000050 | 6.00 | 2002-01-01 | 2003-02-01 |  |
| OP1010 | OPERATION | E11 | 000090 | 5.00 | 2002-01-01 | 2003-02-01 | OP1000 |
| OP2000 | GEN SYSTEMS SERVICES | E01 | 000050 | 5.00 | 2002-01-01 | 2003-02-01 |  |
| OP2010 | SYSTEMS SUPPORT | E21 | 000100 | 4.00 | 2002-01-01 | 2003-02-01 | OP2000 |

## Question 4

**Write a statement to SELECT PROJNO and RESPEMP AND the date fields from the PROJECT table where the project was still running on July 1 2002 (5 marks)**

```
select `PROJNO`, `RESPEMP` from PROJECT WHERE  PRENDATE > '2002-07-01';
```

| PROJNO | RESPEMP |
| :--- | :--- |
| AD3100 | 000010 |
| AD3110 | 000070 |
| AD3111 | 000230 |
| AD3112 | 000250 |
| AD3113 | 000270 |
| IF1000 | 000030 |
| IF2000 | 000030 |
| MA2100 | 000010 |
| MA2110 | 000060 |
| OP1000 | 000050 |
| OP1010 | 000090 |
| OP2000 | 000050 |
| OP2010 | 000100 |
| OP2011 | 000320 |
| OP2012 | 000330 |
| OP2013 | 000340 |
| PL2100 | 000020 |

## Question 5

**Write a statement to SELECT PROJNO, PROJNAME AND DEPTNO from the PROJECT table where PROJNAME has the word PROGRAMMING in it   ( 5 marks )**

```
Select `PROJNO`, `PROJNAME`, `DEPTNO` from PROJECT where PROJNAME like '%PROGRAMMING%';
```

| PROJNO | PROJNAME | DEPTNO |
| :--- | :--- | :--- |
| AD3111 | PAYROLL PROGRAMMING | D21 |
| AD3112 | PERSONNEL PROGRAMMING | D21 |
| AD3113 | ACCOUNT PROGRAMMING | D21 |
| MA2110 | W L PROGRAMMING | D11 |

## Question 6

**Write a statement to SELECT from the PROJECT table where MAJPROJ starts with AD and has 4 wildcard place holders   ( 5 marks )**

```
select * from PROJECT where MAJPROJ like 'AD____';
```

| PROJNO | PROJNAME | DEPTNO | RESPEMP | PRSTAFF | PRSTDATE | PRENDATE | MAJPROJ |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| AD3110 | GENERAL ADMIN SYSTEMS | D21 | 000070 | 6.00 | 2002-01-01 | 2003-02-01 | AD3100 |
| AD3111 | PAYROLL PROGRAMMING | D21 | 000230 | 2.00 | 2002-01-01 | 2003-02-01 | AD3110 |
| AD3112 | PERSONNEL PROGRAMMING | D21 | 000250 | 1.00 | 2002-01-01 | 2003-02-01 | AD3110 |
| AD3113 | ACCOUNT PROGRAMMING | D21 | 000270 | 2.00 | 2002-01-01 | 2003-02-01 | AD3110 |


## Question 7

**Write a statement to SELECT from the EMPLOYEE table where that returns all the records where the JOB name is 5 characters long (make sure to remove any spaces) ( 5 marks )**

```
select * from EMPLOYEE where LENGTH(JOB) = 5;
```
| EMPNO | FIRSTNME | MIDINIT | LASTNAME | WORKDEPT | PHONENO | HIREDATE | JOB | EDLEVEL | GENDER | BIRTHDATE | SALARY | BONUS | COMM |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| 000120 | SEAN |  | O CONNELL | A00 | 2167 | 1993-12-05 | CLERK | 14 | M | 1972-10-18 | 49250.00 | 600.00 | 2340.00 |
| 000230 | JAMES | J | JEFFERSON | D21 | 2094 | 1996-11-21 | CLERK | 14 | M | 1980-05-30 | 42180.00 | 400.00 | 1774.00 |
| 000240 | SALVATORE | M | MARINO | D21 | 3780 | 2004-12-05 | CLERK | 17 | M | 2002-03-31 | 48760.00 | 600.00 | 2301.00 |
| 000250 | DANIEL | S | SMITH | D21 | 0961 | 1999-10-30 | CLERK | 15 | M | 1969-11-12 | 49180.00 | 400.00 | 1534.00 |
| 000260 | SYBIL | P | JOHNSON | D21 | 8953 | 2005-09-11 | CLERK | 16 | F | 1976-10-05 | 47250.00 | 300.00 | 1380.00 |
| 000270 | MARIA | L | PEREZ | D21 | 9001 | 2006-09-30 | CLERK | 15 | F | 2003-05-26 | 37380.00 | 500.00 | 2190.00 |
| 200120 | GREG |  | ORLANDO | A00 | 2167 | 2002-05-05 | CLERK | 14 | M | 1972-10-18 | 39250.00 | 600.00 | 2340.00 |
| 200240 | ROBERT | M | MONTEVERDE | D21 | 3780 | 2004-12-05 | CLERK | 17 | M | 1984-03-31 | 37760.00 | 600.00 | 2301.00 |


## Question 8

**Write a statement to SELECT the EMPNO and put the  FIRSTNME AND the LASTNAME column  together with a space in between and call it FULLNAME from the EMPLOYEE table as columns  ( 5 marks ) (HINT substring functions)**

```
select EMPNO as 'employee number', CONCAT(FIRSTNME, ' ', LASTNAME) as 'fullname' FROM EMPLOYEE;

```

| employee number | fullname |
| :--- | :--- |
| 000010 | CHRISTINE HAAS |
| 000020 | MICHAEL THOMPSON |
| 000030 | SALLY KWAN |
| 000050 | JOHN GEYER |
| 000060 | IRVING STERN |
| 000070 | EVA PULASKI |
| 000090 | EILEEN HENDERSON |
| 000100 | THEODORE SPENSER |
| 000110 | VINCENZO LUCCHESSI |
| 000120 | SEAN O CONNELL |
| 000130 | DELORES QUINTANA |
| 000140 | HEATHER NICHOLLS |
| 000150 | BRUCE ADAMSON |
| 000160 | ELIZABETH PIANKA |
| 000170 | MASATOSHI YOSHIMURA |
| 000180 | MARILYN SCOUTTEN |
| 000190 | JAMES WALKER |
| 000200 | DAVID BROWN |
| 000210 | WILLIAM JONES |
| 000220 | JENNIFER LUTZ |
| 000230 | JAMES JEFFERSON |
| 000240 | SALVATORE MARINO |
| 000250 | DANIEL SMITH |
| 000260 | SYBIL JOHNSON |
| 000270 | MARIA PEREZ |
| 000280 | ETHEL SCHNEIDER |
| 000290 | JOHN PARKER |
| 000300 | PHILIP SMITH |
| 000310 | MAUDE SETRIGHT |
| 000320 | RAMLAL MEHTA |
| 000330 | WING LEE |
| 000340 | JASON GOUNOT |
| 200010 | DIAN HEMMINGER |
| 200120 | GREG ORLANDO |
| 200140 | KIM NATZ |
| 200170 | KIYOSHI YAMAMOTO |
| 200220 | REBA JOHN |
| 200240 | ROBERT MONTEVERDE |
| 200280 | EILEEN SCHWARTZ |
| 200310 | MICHELLE SPRINGER |
| 200330 | HELENA WONG |
| 200340 | ROY ALONZO |

## Question 9

**Write a statement to SELECT the EMPNO and the first 4 characters of the FIRSTNME AND the starting at the 2nd character to the end of the LASTNAME column from  the EMPLOYEE table as columns  ( 5 marks ) (HINT substring functions)**

```
select SUBSTR(FIRSTNME, 1, 4) as 'FIRST_NAME', SUBSTR(LASTNAME, 2) as 'LASTNAME' from EMPLOYEE;
```


| FIRST\_NAME | LASTNAME |
| :--- | :--- |
| CHRI | AAS |
| MICH | HOMPSON |
| SALL | WAN |
| JOHN | EYER |
| IRVI | TERN |
| EVA | ULASKI |
| EILE | ENDERSON |
| THEO | PENSER |
| VINC | UCCHESSI |
| SEAN |  CONNELL |
| DELO | UINTANA |
| HEAT | ICHOLLS |
| BRUC | DAMSON |
| ELIZ | IANKA |
| MASA | OSHIMURA |
| MARI | COUTTEN |
| JAME | ALKER |
| DAVI | ROWN |
| WILL | ONES |
| JENN | UTZ |
| JAME | EFFERSON |
| SALV | ARINO |
| DANI | MITH |
| SYBI | OHNSON |
| MARI | EREZ |
| ETHE | CHNEIDER |
| JOHN | ARKER |
| PHIL | MITH |
| MAUD | ETRIGHT |
| RAML | EHTA |
| WING | EE |
| JASO | OUNOT |
| DIAN | EMMINGER |
| GREG | RLANDO |
| KIM | ATZ |
| KIYO | AMAMOTO |
| REBA | OHN |
| ROBE | ONTEVERDE |
| EILE | CHWARTZ |
| MICH | PRINGER |
| HELE | ONG |
| ROY | LONZO |

## Question 10

**Write a statement to SELECT the EMPNO and the YEAR out of the HIRE DATE and the MONTH of out of the birthdate from the EMPLOYEE table as columns  ( 5 marks ) (HINT date functions)**

```
select EMPNO, YEAR(HIREDATE) as 'Hire date', month(BIRTHDATE) as 'Birth month' from EMPLOYEE;
```
| EMPNO | Hire date | Birth month |
| :--- | :--- | :--- |
| 000010 | 1995 | 8 |
| 000020 | 2003 | 2 |
| 000030 | 2005 | 5 |
| 000050 | 1979 | 9 |
| 000060 | 2003 | 7 |
| 000070 | 2005 | 5 |
| 000090 | 2000 | 5 |
| 000100 | 2000 | 12 |
| 000110 | 1988 | 11 |
| 000120 | 1993 | 10 |
| 000130 | 2001 | 9 |
| 000140 | 2006 | 1 |
| 000150 | 2002 | 5 |
| 000160 | 2006 | 4 |
| 000170 | 1999 | 1 |
| 000180 | 2003 | 2 |
| 000190 | 2004 | 6 |
| 000200 | 2002 | 5 |
| 000210 | 1998 | 2 |
| 000220 | 1998 | 3 |
| 000230 | 1996 | 5 |
| 000240 | 2004 | 3 |
| 000250 | 1999 | 11 |
| 000260 | 2005 | 10 |
| 000270 | 2006 | 5 |
| 000280 | 1997 | 3 |
| 000290 | 2006 | 7 |
| 000300 | 2002 | 10 |
| 000310 | 1994 | 4 |
| 000320 | 1995 | 8 |
| 000330 | 2006 | 7 |
| 000340 | 1977 | 5 |
| 200010 | 1995 | 8 |
| 200120 | 2002 | 10 |
| 200140 | 2006 | 1 |
| 200170 | 2005 | 1 |
| 200220 | 2005 | 3 |
| 200240 | 2004 | 3 |
| 200280 | 1997 | 3 |
| 200310 | 1994 | 4 |
| 200330 | 2006 | 7 |
| 200340 | 1997 | 5 |

