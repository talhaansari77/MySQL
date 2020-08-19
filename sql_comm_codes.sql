USE institiute;


-- SHOW COLUMNS cammand
 SHOW COLUMNS FROM student;

-- the between operator

select name 
from student
WHERE name BETWEEN 'Talha' AND 'Umair';


-- in not in operators

select name 
from student
WHERE name IN ('Talha','Rizwan');


select name 
from student
WHERE name NOT IN ('Talha','Rizwan');


-- Concat operators 
SELECT CONCAT(name,"  ",gpa) as Names
FROM student;

-- functions upper and lower you can also use POWER ,SUM
-- AVG , SQRT for square root and average
select UPPER(name) as name
from student;

select LOWER(name) as name
from student;


-- sorting with ASC and DESC
SELECT  gpa 
FROM  student 
order by gpa DESC; 


-- creating a table

CREATE TABLE student (
	student_id INT auto_increment,
    name VARCHAR(15) NOT NULL,
    major VARCHAR(15),
    gpa DECIMAL(3,2),
    PRIMARY KEY(student_id)
);


-- Select all command
select *
from student;

ALTER TABLE student DROP COLUMN gpa;
ALTER TABLE student ADD gpa DECIMAL(3,2);


-- Inserting values into a Tables

INSERT INTO student VALUES(26,"Talha","Comp_Sci",3.04);


-- delete caommands 
DELETE FROM student 
WHERE name = 'Talha';


-- Inserting values into a Tables
INSERT INTO student(name,major) VALUES("Rizwan","Comp_Sci");
INSERT INTO student VALUES(19,"Umair","Comp_Sci",3.42);
INSERT INTO student VALUES(12,"Zaid","Comp_Sci",3.20);
INSERT INTO student(name,gpa,major) VALUES("Abdullah",2.94,"Comp_Sci");


-- group by cammand to combine same type of data
select count(sex), sex
from employee
group by sex;

select sum(total_sales), client_id
from works_with
group by client_id;

-- to look for particular formate

select *
from branch_supplier 
WHERE supplier_name LIKE '% Label%';

-- sub quries with brakets

SELECT name , gpa 
FROM student 
WHERE gpa > (SELECT AVG(gpa) FROM student) 
ORDER BY gpa DESC;

-- Updating values

UPDATE student
SET gpa = 2.74
WHERE student_id=1;

-- rename the existing names
use tape;
RENAME TABLE student TO student_data;

ALTER TABLE student_data 
CHANGE Reg student_id VARCHAR(30);



-- making views of data
create view my_view as select * from student_data;

select * from my_view;