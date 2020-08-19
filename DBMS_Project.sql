CREATE database cinema;
DROP DATABASE cinema;
USE cinema;


-- dropping all tables if they exist
DROP TABLE IF EXISTS cashier;
DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS customer;
DROP TABLE IF EXISTS movie;
DROP TABLE IF EXISTS payment;
DROP TABLE IF EXISTS vip_seat;
DROP TABLE IF EXISTS ticket;


INSERT INTO employee(emp_id,emp_name,birth_date,sex,salary) VALUE(2,"Talha",'2000-03-19','M',900000);
INSERT INTO employee(emp_id,emp_name,sex,salary) VALUE(4,"Umair",'M',750000);
INSERT INTO employee(emp_id,emp_name,sex,salary) VALUE(8,"Rizwan",'M',770000);
INSERT INTO employee(emp_id,emp_name,sex,salary) VALUE(5,"Abdulla",'M',880000);
INSERT INTO employee(emp_id,emp_name,sex) VALUE(9,"Abdulla",'M');
INSERT INTO employee VALUE(11,"Akbar",'1999-05-12','M',30000);
INSERT INTO employee VALUE(17,"Hina",'1999-07-18','F',40000);
INSERT INTO employee VALUE(13,"Fatima",'2001-04-14','F',500000);
INSERT INTO employee VALUE(16,"Ahmad",'1998-09-19','M',550000);
INSERT INTO employee VALUE(15,"Wajid",'2001-11-29','M',350000);
INSERT INTO cashier(cashier_id,name,emp_id) VALUE(1,"Wajid",15);
INSERT INTO cashier(cashier_id,name,emp_id) VALUE(2,"Hina",17);




SELECT * from employee;
SELECT * from cashier;
DESC employee;
DESC cashier;
DESC movie;
DROP database cinema;
DROP TABLE cashier;






INSERT INTO cashier(cashier_id,cashier_name,emp_id) VALUE(1,"Abdulla",5);

SELECT cashier.cashier_id,
		employee.emp_name,
		employee.emp_id,
		cashier.start_date		
		from employee INNER JOIN cashier 
		WHERE cashier.emp_id = employee.emp_id ;


		


