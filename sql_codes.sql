
SHOW TABLES ;

CREATE TABLE student (
	student_id INT auto_increment,
    name VARCHAR(15) NOT NULL,
    major VARCHAR(15),
    gpa DECIMAL(3,2),
    PRIMARY KEY(student_id)
);

DROP TABLE student;
describe student;

ALTER TABLE student ADD gpa DECIMAL(3,2);



-- INSERT INTO student VALUES(1,"Talha","Comp_Sci",2.94);
-- INSERT INTO student(student_id,name,major) VALUES(2,"Rizwan","Comp_Sci");
-- INSERT INTO student VALUES(3,"Umair","Comp_Sci",3.42);
-- INSERT INTO student VALUES(4,"Zaid","Comp_Sci",3.20);
-- INSERT INTO student(student_id,name,gpa) VALUES(5,"Abdullah",2.94);

INSERT INTO student VALUES(26,"Talha","Comp_Sci",2.94);
INSERT INTO student(name,major) VALUES("Rizwan","Comp_Sci");
INSERT INTO student VALUES(19,"Umair","Comp_Sci",3.42);
INSERT INTO student VALUES(12,"Zaid","Comp_Sci",3.20);
INSERT INTO student(name,gpa,major) VALUES("Abdullah",2.94,"Comp_Sci");

select *
from student;

UPDATE student 
set major = 'BSCS' 
WHERE student_id = 26;

DELETE FROM student 
WHERE name = 'Talha';

SELECT COUNT(emp_id)
FROM employee
WHERE sex = 'F';

SELECT AVG(salary)
FROM employee;

select count(sex), sex
from employee
group by sex;

select sum(total_sales), client_id
from works_with
group by client_id;

select *
from branch_supplier 
WHERE supplier_name LIKE '% Label%';


