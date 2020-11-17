#UC1
create schema payroll_service;

use payroll_service;
CREATE TABLE employee_payroll (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    salary DOUBLE NOT NULL,
    start DATE NOT NULL,
    PRIMARY KEY (id)
);

describe employee_payroll;

insert into employee_payroll(name,salary,start) values ('KANE',50000,'2020-12-30'),('KOHLI',40000,'2020-12-31'),('WARNER',60000,'2020-12-29');

select * from employee_payroll;

select salary from employee_payroll where name='kane';

select salary from employee_payroll;

SELECT 
    *
FROM
    employee_payroll
WHERE
    start BETWEEN DATE(NOW()) AND CAST('2021-01-01' AS DATE);

alter table employee_payroll add gender char(1) after name;

SET SQL_SAFE_UPDATES = 0;

UPDATE employee_payroll 
SET 
    gender = 'M';

describe employee_payroll;

select sum(salary) from employee_payroll where gender = 'M' group by gender;
select avg(salary) from employee_payroll group by gender;
update employee_payroll set gender = 'F' where name = 'warner';
select gender,count(name) from employee_payroll group by gender;