update student_data 
set Reg='G1F18BSCS0026'
WHERE student_id=26;

select * from student_data;

ALTER TABLE student_data ADD Reg VARCHAR(50);

CREATE OR REPLACE VIEW 1_View AS
SELECT *
FROM student; 

DROP VIEW my_view;

SELECT  CONCAT(name," Has GPA of ",gpa) as Results
from student
order by gpa DESC
limit 5
;
