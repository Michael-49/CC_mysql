CREATE DATABASE Q4DQl;
USE Q4DQL;
CREATE TABLE customer(
cust_id VARCHAR(10),
cust_name VARCHAR(20),
cust_phone BIGINT(20),
cust_address VARCHAR(20),
PRIMARY KEY (cust_id)
);
CREATE TABLE delivery_partner(
partner_id VARCHAR(10),
partner_name VARCHAR(15),
rating BIGINT(20),
PRIMARY KEY (partner_id)
);

CREATE TABLE pizza(
	pizza_id VARCHAR(10) ,
    cust_id VARCHAR(10),
    partner_id VARCHAR(10),
    pizza_name VARCHAR(50),
    pizza_type VARCHAR(50),
    order_Date DATE,
    amount BIGINT(20),
    PRIMARY KEY (pizza_id)
);


INSERT INTO pizza VALUES
('11','24','01','Mozzarella','Regular','2020-10-17',200),
('10','5','02','Mozzarella','Large','2020-10-23',300),
('12','20','01','Margaritta','Medium','2020-10-22',250);

Select * From pizza;

SELECT Pizza_name,COUNT(Pizza_name) AS 'No.Sold' FROM Pizza GROUP BY Pizza_name;