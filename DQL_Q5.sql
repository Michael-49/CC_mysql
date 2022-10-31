CREATE DATABASE Q5DQl;
USE Q5DQL;
CREATE TABLE ExaminationMarks(
Record_id VARCHAR(20) PRIMARY KEY,
stud_id VARCHAR(20),
stud_name VARCHAR(40),
stud_standard VARCHAR(30),
stud_section VARCHAR(20),
FirstLanguage VARCHAR(20),
SecondLanguage VARCHAR(20),
ThirdLanguage VARCHAR(20),
FirstLanguage_Marks150 INT(11),
SecondLanguage_Marks100 INT(11),
ThirdLanguage_Marks100 INT(11),
GeneralScience100 INT(11),
Mathematics100 INT(11),
SocialScience100 INT(11),
Student_Total_Marks INT(11),
Student_Avg_Marks FLOAT,
Remarks VARCHAR(100)
);


INSERT INTO ExaminationMarks VALUES
('22','18','Surya','12','A','English','Malayalam','Hindi',100,90,45,75,90,86,486,81.0,'Good'),
('20','14','Vijay','12','A','English','Malayalam','Hindi',120,80,50,80,85,80,495,82.5,'Good'),
('21','13','Ajith','12','A','English','Malayalam','Hindi',140,90,45,80,90,90,535,89.16,'Very Good'),
('25','19','Karthi','12','A','English','Malayalam','Hindi',80,45,35,70,30,36,296,59.2,'Try');

Select * From ExaminationMarks;




SELECT stud_name, stud_standard, Student_Avg_Marks, GeneralScience100, Mathematics100, GeneralScience100+Mathematics100 AS ScienceMathsTotal 
FROM ExaminationMarks
WHERE Student_Avg_Marks >=75 AND GeneralScience100 >= 75 AND Mathematics100 >=75;