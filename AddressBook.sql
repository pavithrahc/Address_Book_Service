CREATE DATABASE address_book;
SHOW DATABASES;
USE address_book;

-----------------------------------------------------------------

CREATE TABLE address_book(First_name varchar(50),
				     Last_name varchar(50),
				     Address varchar(150),
				     City varchar(50),
				     State varchar(50),
				     Zip_code int,
				     Phone_number int,
				     Email varchar(50));

------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO address_book VALUES('pavithra','muddu','kudur',
'bangalore','Karnataka','561101','9398359','pavithraveeresh@gmail.com');
INSERT INTO address_book VALUES('Bill','Gates','New-York','America','US',
'400008','1325485','bill-gates@gmail.com');
SELECT * FROM address_book;
-----------------------------------------------------------------------------------------------------------------------------------------
 UPDATE address_book SET state = 'ka' where First_name = 'pavithra';
-----------------------------------------------------------------------------------------------------------------------------------------
/*UC-5 :-*/ 
	/* Adding record. */
INSERT INTO address_book VALUES('Elon','Musk','Star-Base','US','USA',
'400005','1845875','elon-musk@gmail.com');
	/* Deleting record. */
DELETE FROM address_book WHERE First_name = 'pavithra';

	/* Deleting record. */
DELETE FROM address_book WHERE First_name = 'Elon';

	/* Adding record. */
INSERT INTO address_book VALUES('pavithra','muddu','kudur','bangalore',
'karnataka','561101','9398359','pavithraveeresh@gmail.com');
--------------------------------------------------------------------------------------------------------------------------------------------------------
/*UC-6 :-*/ 
SELECT * FROM address_book WHERE City = 'bangalore';
SELECT * FROM address_book WHERE State = 'US';
SELECT * FROM address_book WHERE City = 'bangalore' OR State = 'US';

----------------------------------------------------------------------------------------------
/*UC-7 :-*/ 
SELECT COUNT(First_name) FROM address_book WHERE City = 'bangalore';
SELECT COUNT(First_name) FROM address_book WHERE State = 'US';
SELECT COUNT(First_name) FROM address_book WHERE City = 'bangalore' OR State = 'US';

---------------------------------------------------------------------------------------------
/*UC-8 :-*/ 
	/* Adding record. */
INSERT INTO address_book VALUES('Elon','Musk','Star-Base','US',
'US','400005','1845875','elon-musk@gmail.com');
	/* Updating City. */
UPDATE address_book SET City = 'America' where First_name = 'Elon';

	/*** SORT BY CITY. ***/
SELECT * FROM address_book ORDER BY City ASC;

-------------------------------------------------------------------------------------------------------------------------------
/*UC-9 :- */
ALTER TABLE address_book ADD Type varchar(50);
UPDATE address_book SET Type = 'Family' WHERE First_name = 'pavithra';
UPDATE address_book SET Type = 'Profession' WHERE First_name = 'Bill';
UPDATE address_book SET Type = 'Friends' WHERE First_name = 'Elon';
-------------------------------------------------------------------------------------------------------------------------------
/*UC-10 :-*/ 
SELECT COUNT(First_name) FROM address_book WHERE Type = 'Profession';
SELECT COUNT(First_name) FROM address_book WHERE Type = 'Friends';

-------------------------------------------------------------------------------------------------------------------------------
/*UC-11 :-*/ 
INSERT INTO address_book VALUES('Elon','Musk','Star-Base','America',
    'US',400005,1845875,'elon-musk@gmail.com','Family');

-------------------------------------------------------------------------------------------------------------------------------------
/*UC-12 :-*/ 
CREATE TABLE person_info(personID INT PRIMARY KEY,
First_name varchar(50),Last_name varchar(50),
Address varchar(150),City varchar(30),Zip_code INT(10),
State varchar(50),Phone_number INT(20),Email varchar(50));
show tables;
desc tables;
INSERT INTO person_info VALUES(1,'Bill','Gates','New-York','America',
'400008','US','1325485','bill-gates@gmail.com');
INSERT INTO person_info VALUES(2,'pavithra','muddu','kudur',
'bangalore','561101','karnataka','9398359','pavithraveeresh.com');
INSERT INTO person_info VALUES(3,'Elon','Musk','Star-Base','America',
'400005','US','1845875','elon-musk@gmail.com');

CREATE TABLE person_type(type_ID INT PRIMARY KEY,type_name VARCHAR(50));
INSERT INTO person_type VALUES(10,'Profession');
INSERT INTO person_type VALUES(20,'Family');
INSERT INTO person_type VALUES(30,'Friend');
select * from person_type;
CREATE TABLE type(personID INT,FOREIGN KEY(personID) references 
person_info(personID),type_ID INT,FOREIGN KEY(type_ID) references person_type(type_ID));
INSERT INTO type VALUES(1,10);
INSERT INTO type VALUES(2,20);
INSERT INTO type VALUES(3,30);

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/*UC-13 :-*/ 
SELECT * FROM person_info WHERE city = 'bangalore' OR state = 'US';
SELECT COUNT(First_name) FROM person_info WHERE City = 'bangalore' OR State = 'US';
SELECT * FROM person_info ORDER BY City ASC;    
SELECT COUNT(First_name) FROM address_book WHERE Type = 'Friends';