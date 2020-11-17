create schema payroll_service;
use payroll_service;

CREATE TABLE employee_payroll (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    salary DOUBLE NOT NULL,
    start DATE NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO employee_payroll(name,salary,start) VALUES ('KANE',50000,'2020-12-30'),('KOHLI',40000,'2020-12-31'),('WARNER',60000,'2020-12-29');

SELECT * FROM employee_payroll;

SELECT salary FROM employee_payroll WHERE name = 'kane';

SELECT salary FROM employee_payroll;

SELECT * FROM employee_payroll WHERE start BETWEEN DATE(NOW()) AND CAST('2021-01-01' AS DATE);

ALTER TABLE employee_payroll ADD gender char(1) after name;

SET SQL_SAFE_UPDATES = 0;

UPDATE employee_payroll SET gender = 'M';

describe employee_payroll;

SELECT sum(salary) FROM employee_payroll WHERE gender = 'M' GROUP BY gender;
SELECT min(salary) FROM employee_payroll WHERE gender = 'M' GROUP BY gender;
SELECT max(salary) FROM employee_payroll WHERE gender = 'M' GROUP BY gender;
SELECT avg(salary) FROM employee_payroll WHERE gender = 'M' GROUP BY gender;

INSERT INTO employee_payroll(name,salary,start) VALUES ('MITHALI',400000,'2020-12-30');
INSERT INTO employee_payroll(name,salary,start) VALUES ('SMRITI',500000,'2020-11-17');
UPDATE employee_payroll SET gender = 'F' WHERE name = 'SMRITI';

SELECT gender,count(name) FROM employee_payroll GROUP BY gender;
SELECT avg(salary) FROM employee_payroll WHERE gender = 'F' GROUP BY gender;




