CREATE DATABASE payroll_service;
show databases;
use payroll_service;
----------------------------------------------------------------
CREATE TABLE employee_payroll(ID int PRIMARY KEY AUTO_INCREMENT , Name varchar(50) , 
Salary int , Start_date DATE); 
------------------------------------------------------------------------------------
INSERT INTO employee_payroll VALUES(1 , 'pavithra' , 35000 , '2021-12-20');
INSERT INTO employee_payroll VALUES(2 , 'BILL GATES' , 500000 , '1999-1-1');
INSERT INTO employee_payroll VALUES(3 , 'pranali' , 600000 , '2000-10-30');
----------------------------------------------------------------------------------
SELECT * FROM employee_payroll;
----------------------------------------------------------
SELECT Salary FROM employee_payroll WHERE Name = 'pavithra';
SELECT Salary FROM employee_payroll WHERE Start_date BETWEEN CAST('2000-01-01' AS DATE) AND DATE(NOW());
----------------------------------------------------------------------
ALTER TABLE employee_payroll ADD COLUMN Gender CHAR(1);
UPDATE employee_payroll set Gender = 'M' WHERE ID = 1 or ID = 2;
UPDATE employee_payroll set Gender = 'M' WHERE ID = 3;
--------------------------------------------------------------------------
SELECT SUM(Salary) FROM employee_payroll WHERE Gender = 'M' GROUP BY Gender;
SELECT ID , Name , AVG(Salary) FROM employee_payroll GROUP BY Gender;
SELECT MIN(Salary) FROM employee_payroll WHERE Gender = 'M' GROUP BY Gender;
SELECT ID , Name , MAX(Salary) FROM employee_payroll GROUP BY Gender;
SELECT Gender , COUNT(Gender) FROM employee_payroll GROUP BY GENDER;
SELECT Name , COUNT(Name) FROM employee_payroll GROUP BY GENDER;
------------------------------------------------------------------------
ALTER TABLE employee_payroll ADD Phone_num INT , ADD Address varchar(50)
 DEFAULT 'kA', ADD Department varchar(30) NOT NULL;
 ---------------------------------------------------------------------------------
ALTER TABLE employee_payroll ADD Basic_pay INT , ADD Deductions INT , ADD Taxable_pay INT , ADD Income_tax INT , ADD Net_pay INT;
------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO employee_payroll VALUES(4,'Terissa',50000,'2000-11-15','F',NULL,'AP','Sales',NULL,NULL,NULL,NULL,NULL);
INSERT INTO employee_payroll VALUES(5,'Terissa',50000,'2000-11-15','F',NULL,'AP','Marketing',NULL,NULL,NULL,NULL,NULL);
SELECT * FROM employee_payroll WHERE Name = 'Terissa';

------------------------------------------------------------------------------------------------------------------------------------------------
 
CREATE TABLE company(company_ID INT NOT NULL PRIMARY KEY,company_name VARCHAR(100) NOT NULL);
desc company;
CREATE TABLE employee_details(emp_ID INT PRIMARY KEY,Name VARCHAR(40) NOT NULL,company_ID INT,Phone_num VARCHAR(20) NOT NULL,Gender CHAR(1),Start DATE NOT NULL,FOREIGN KEY (company_ID) REFERENCES company (company_ID))ENGINE=INNODB;
desc employee_details;
CREATE TABLE department(dept_ID INT NOT NULL PRIMARY KEY,dept_name VARCHAR(150) NOT NULL);
desc department;

