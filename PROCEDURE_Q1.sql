Delimiter Go
INSERT INTO PetOwner VALUES 
(1070,'Jessica','Velazquez','3861 Woodbridge Lane','Southfield','Michigan',48034),         
 (2419,'Luisa','Cuellar','1308 Shingleton Road','Kalamazoo','Michigan',49007),         
 (2863,'John','Sebastian','3221 Perry Street','Davison','Michigan',48423),          
 (3518,'Connie','Pauley','1539 Cunningham Court','BLoomfield Township','Michigan',48302),         
(3663,'Lenna','Haliburton','4217 Twin Oaks Drive','Traverse City','Michigan',48684),          
 (5289,'Patrick','Jane','2222 Dennis Drive','Southfield','Michigan',48034),         
 (6049,'Debbie','Metivier','315 Goff Avenue','Grand Rapids','Michigan',49503),          
 (7663,'Julia','Gowam','1324 Ben Street','Lansing','Michigan',48933),         
 (7896,'Meredith','Grey','Golf ages','Davison','Michigan',49007)
 GO
Delimiter Go
INSERT INTO Pet VALUES 
('J6-8562','Blackie', 'Dog','Male',11,7896),    
 ('M0-2904','Simba', 'Cat','Male',1,3518),  
 ('P2-7342','Cuddles', 'Dog','Male',13,3663),   
('Q0-2001','Roomba', 'Cat','Male',9,2863),  
 ('R3-7551','Keller', 'Parrot','Female',2,6049),  
('X0-8765','Vuitton', 'Parrot','Female',11,1070),   
 ('Z4-4045','Simba', 'Cat','Male',0,5289),
('Z4-5652','Priya', 'Cat','Female',7,7663);
Go
Delimiter Go
INSERT INTO ProcedureHistory VALUES 
('J6-8562','2016-12-01','VACCINATIONS','Galaxie(DHLPP)'),
 ('Z4-4045','2016-01-18','General Surgeries','Declaw'),
 ('Q0-2001','2016-12-14','HOSPITALIZATION','All Hospitalization'),
 ('M0-2904','2016-01-17','General Surgeries','Salivary Cyst Ex'),
 ('R3-7551','2016-12-12','VACCINATIONS','PCR'),
 ('P2-7342','2016-01-21','General Surgeries','Ear Crop')
 Go


DELIMITER $$
CREATE PROCEDURE `usp_PetProcedure_Detail`(IN procedure_type CHAR(50))
BEGIN
	SELECT ProcedureHistory.pet_id, Pet.pet_name AS 'Pet Name', PetOwner.owner_name AS 'Owner Name', ProcedureHistory.Descript
	FROM ProcedureHistory
	JOIN Pet
	JOIN PetOwner
	WHERE ProcedureHistory.pet_id=pet.pet_id AND Pet.owner_id=PetOwner.owner_id AND ProcedureHistory.procedure_type=procedure_type;
END$$

 CALL usp_PetProcedure_Detail('General Surgeries');
  CALL usp_PetProcedure_Detail('VACCINATIONS');
   CALL usp_PetProcedure_Detail('HOSPITALIZATION');
