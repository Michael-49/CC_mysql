CREATE DATABASE Q3DQL;
USE Q3DQL;
CREATE TABLE department(
dept_id INT(11) NOT NULL,
dept_name VARCHAR(25),
PRIMARY KEY(dept_id)
);
CREATE TABLE staff(
staff_id INT(11) ,
staff_name VARCHAR(25),
supervisor_id INT(11),
salary BIGINT(20),
join_date DATE,
dept_id INT(11),
PRIMARY KEY(staff_id),
FOREIGN KEY(dept_id) REFERENCES department(dept_id)
);
CREATE TABLE grade(
grade VARCHAR(3),
min_salary INT(11),
max_salary INT(11)
);
INSERT INTO department Values
(10,'IT'),
(15,'HR'),
(18,'AD');
select* fRom department;

INSERT INTO staff VALUES
(55,'Jino',50,1000000,'2020-10-19',10),
(13,'Emil',15,500000,'2021-01-21',10),
(58,'Jeffrin',49,2000000,'2020-12-01',10),
(19,'Githu',17,2000000,'2021-01-21',10),
(75,'Shaji',50,500000,'2020-11-29',15),
(56,'Jolly',15,100000,'2021-01-21',18);

select * from staff;

SELECT AVG(salary) from staff ;

SELECT staff_id,staff_name,salary,dept_id
FROM staff
WHERE salary > (select avg(salary) from staff) AND dept_id=10
ORDER BY staff_id ASC;
