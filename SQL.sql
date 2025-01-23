CREATE TABLE weather(city VARCHAR(40),
					state VARCHAR(40),
                    high DECIMAL(10,2),
                    low DECIMAL(10,2));





INSERT INTO weather VALUES	("Phoenix", "Arizona", 105, 90),     
							("Tucson", "Arizona", 101, 92),                
							("Flagstaff", "Arizona", 88, 69),              
							("San Diego", "California", 77, 60),            
							("Albuquerque", "New Mexico", 80, 72);
 SELECT * FROM weather;
 
 CREATE TABLE emp_info(first_name VARCHAR(10),
						last_name VARCHAR(11),
						id INT PRIMARY KEY,
						age INTEGER(2),
						city VARCHAR(10),
						state VARCHAR(11));
                        
INSERT INTO emp_info VALUES("John", "Jones", 99980, 45, "Payson", "Arizona"),
							("Mary", "Jones", 99982, 25, "Payson", "Arizona"),
                            ("Eric", "Edwards", 88232, 32, "San Diego", "California"),
                            ("Mary Ann", "Edwards", 88233, 32, "Phoenix", "Arizona"),
                            ("Ginger", "Howell", 98002, 42, "Cottonwood","Arizona"),
                            ("Sebastian", "Smith", 92001, 23, "Gila Bend", "Arizona"),
                            ("Gus", "Gray", 22322, 35, "Bagdad", "Arizona"),
                            ("Mary Ann", "May", 32326, 52, "Tucson", "Arizona"),
                            ("Erica", "Williams", 32327, 60, "Show Low", "Arizona"),
                            ("Leroy", "Brown", 32380, 22, "Pinetop", "Arizona"),
                            ("Elroy", "Cleaver", 32382, 22, "Globe","Arizona");
SELECT * FROM emp_info;

SELECT first_name, last_name, city
   FROM emp_info
   WHERE first_name LIKE 'er%';       
   
SELECT first_name, last_name
   FROM emp_info
   WHERE last_name LIKE '%s';
   
SELECT * FROM emp_info
	WHERE last_name LIKE 'Eric';
    
SELECT first_name, last_name, city FROM emp_info;

SELECT last_name, age FROM emp_info
	WHERE age > 30; 
    
SELECT first_name, last_name, city FROM emp_info
	WHERE first_name LIKE "j%";
    
SELECT first_name, last_name, age FROM emp_info
       WHERE last_name LIKE '%illia%'; 
       
SELECT * FROM emp_info WHERE first_name = 'Eric';

-- Display the first name and age for everyone that’s in the table. --
SELECT first_name, age FROM emp_info;

-- Display the first name, last name, and city for everyone that’s not from Payson.--
SELECT first_name, last_name, city
		FROM emp_info
        WHERE city <> 'Payson';

-- Display all columns for everyone that is over 40 years old.--
SELECT * FROM emp_info
	WHERE age > 40;
    
-- Display the first and last names for everyone whose last name ends in an “ay” --
SELECT first_name, last_name FROM emp_info
		WHERE last_name LIKE "ay%";
        
-- Display all columns for everyone whose first name equals “Mary”. --
SELECT * FROM emp_info
	WHERE first_name LIKE "Mary";

-- Display all columns for everyone whose first name contains “Mary”--
SELECT * FROM emp_info
	WHERE first_name LIKE "%Mary%";
    
create table employee(first_name varchar(20),
 last_name varchar(20),
 age INT,
 title varchar(30),
 salary decimal (10,3));
 
 
insert into employee values 
          ("Jonie", "Weber", 28, "Secretary", 19500.00),
          ("Pots", "Weber", 32, "Programme", 45300.00),
          ("Dirk", "Smith", 45, "Programmer I", 75020.00);
		
-- Select all columns for everyone in your employee table--
select * from employee;

-- Select all columns for everyone with a salary over 30000.--
select * from employee
	where salary>30000;
    
-- Select first and last names for everyone that’s under 30 years old.
select first_name, last_name from employee
		where age<30;
        
-- Select first name, last name, and salary for anyone with “Programmer” in their title.
select first_name, last_name, salary from employee
		where title like '%rogrammer%'; 

-- Select all columns for everyone whose last name contains “ebe”.
select * from employee
	where last_name like  "%ebe%";
    
-- Select the first name for everyone whose first name equals “Potsy”.
select first_name from employee 
	where first_name like "Potsy";
    
-- Select all columns for everyone over 80 years old.
select * from employee
	where age > 80;
          
-- Select all columns for everyone whose last name ends in “ith”.
select * from employee
where last_name like "%ith";
	
                        