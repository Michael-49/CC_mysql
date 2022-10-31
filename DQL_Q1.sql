create database Q1DQL;
use Q1DQL;
create table owner(
	owner_id VARCHAR(20) NOT NULL,
	owner_name VARCHAR(20),
	address VARCHAR(20),
	phone_no BIGINT(20),
	mail_id VARCHAR(20),
    PRIMARY KEY (owner_id)
);

CREATE TABLE customer(
	cust_id VARCHAR(10) NOT NULL ,
	cust_name VARCHAR(10) NOT NULL,
	address VARCHAR(20),
	phone_no BIGINT(20),
	mail_id VARCHAR(20),
    PRIMARY KEY (cust_id)
);
CREATE TABLE laptop(
laptop_id VARCHAR(20) NOT NULL PRIMARY KEY,
laptop_name VARCHAR(20),
laptop_ostype VARCHAR(20),
owner_id VARCHAR(20),
FOREIGN KEY(owner_id) REFERENCES owner(owner_id)
);

CREATE TABLE ZeeRentals(
	Rental_id VARCHAR(10) PRIMARY KEY,
    Cust_id VARCHAR(10),
    Laptop_id VARCHAR(10),
    Pick_date DATE,
    Return_date DATE,
    Amount BIGINT(20)
);
INSERT INTO ZeeRentals VALUES
('20','CUS01','300','2020-05-21','2022-10-18',80000),
('30','CUS02','400','2020-05-13','2022-01-20',100000),
('50','CUS03','350','2020-03-27','2022-12-11',90000);
SELECT * FROM ZeeRentals;

SELECT Rental_id, Cust_id, Laptop_id, Amount, RPAD(Amount,10,"*") AS Modified_Amount 
FROM ZeeRentals
WHERE Amount > 7000 AND YEAR(Pick_Date) = 2020 AND MONTH(Pick_Date) = 05
ORDER BY Rental_id ASC;