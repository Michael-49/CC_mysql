Create Database Q1;
Use Q1;
CREATE TABLE t_agent(
agent_id VARCHAR(25) ,
agent_name VARCHAR(100) ,
agent_email VARCHAR(50) ,
agent_city VARCHAR(100) ,
agent_phone DECIMAL(15,0) ,
TARGET_POLICY_SUM DECIMAL(15,0) ,
PRIMARY KEY (agent_id)
);
CREATE TABLE t_policy(
policy_id VARCHAR(25) ,
policy_name VARCHAR(100) ,
agent_id VARCHAR(25) ,
policy_type VARCHAR(100) ,
policy_sum DECIMAL(10,0) ,
policy_status VARCHAR(100) ,
policy_tenture DECIMAL(5,0),
PRIMARY KEY (policy_id),
FOREIGN KEY (agent_id) REFERENCES t_agent(agent_id)
);
CREATE TABLE t_member(
member_id VARCHAR(25) ,
member_name VARCHAR(100) ,
member_email VARCHAR(100) ,
member_city VARCHAR(100) ,
member_phone DECIMAL(10,0),
agent_id VARCHAR(100) ,
policy_id VARCHAR(100) ,
PRIMARY KEY (member_id),
FOREIGN KEY (agent_id) REFERENCES t_agent(agent_id),
FOREIGN KEY (policy_id) REFERENCES t_policy(policy_id)
);
insert into t_agent values
('M02','Michael','msv49@gmail.com','CHENNAI',9497651384,200000),
('M42','Srinivas','sri129@gmail.com','PUNE',9794125464,300000),
('P01','Abhiram','ab2@gmail.com','DELHI',9777651386,500000);

insert into t_policy values
('50P','Shanker','M02','Fixed','10000','Active',4),
('74M','Lyca','M02','Fixed','20000','Active',10),
('95C','Aashrivad','M42','Variable',50000,'Active',5),
('50B','Johnsons','P01','Fixed',100000,'Not Active',2);



