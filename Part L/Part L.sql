CREATE TABLE Area (
    Area_allocated_id INTEGER PRIMARY KEY,
    Area_Name TEXT NOT NULL,
    Area_Code TEXT NOT NULL UNIQUE,
    Target_population INTEGER NOT NULL,
    Stay_time INTEGER NOT NULL,
    Challenges TEXT,
    Service_Type TEXT
);
INSERT INTO Area (Area_allocated_id, Area_Name, Area_Code, Target_population, Stay_time, Challenges, Service_Type)
VALUES 
(127, 'Central Health District', 'CHD127', 5000, 30, 'Limited resources', 'Primary Healthcare'),
(132, 'East Health Zone', 'EHZ132', 3000, 25, 'High demand', 'Maternal and Child Health'),
(158, 'North Health Center', 'NHC158', 4500, 28, 'Staff shortage', 'Emergency Care'),
(143, 'South Community Hospital', 'SCH143', 6000, 32, 'Equipment shortages', 'General Medicine'),
(165, 'West Urban Clinic', 'WUC165', 3500, 20, 'Overcrowded', 'Outpatient Services'),
(199, 'Northeast Health Hub', 'NHH199', 2500, 18, 'High infection rate', 'Primary Healthcare'),
(121, 'Southeast Rural Clinic', 'SRC121', 2000, 22, 'Limited medication', 'Maternal Care'),
(177, 'Midtown Family Clinic', 'MFC177', 1500, 15, 'Funding issues', 'Family Medicine'),
(113, 'Uptown Wellness Center', 'UWC113', 4000, 24, 'Lack of specialists', 'Preventive Care'),
(187, 'East River Hospital', 'ERH187', 5000, 30, 'High patient turnover', 'Surgical Services');

CREATE TABLE Stakeholder (
    Stakeholder_ID INTEGER PRIMARY KEY,
    Full_name TEXT NOT NULL,
    Emails TEXT NOT NULL,
    Phone_No TEXT,
    Contribution_Type TEXT
);

INSERT INTO Stakeholder (Stakeholder_ID, Full_name, Emails, Phone_No, Contribution_Type)
VALUES 
(308, 'Dr. Sarah Lewis', 'sarah.lewis@healthorg.org', '+1234567890', 'Medical Consultant'),
(322, 'John Doe', 'john.doe@ngo.org', '+1987654321', 'Community Volunteer'),
(315, 'Alice Brown', 'alice.brown@healthagency.gov', '+1122334455', 'Policy Advisor'),
(376, 'David Smith', 'david.smith@ngo.org', '+2233445566', 'Field Supervisor'),
(334, 'Emily Johnson', 'emily.johnson@clinic.org', '+3344556677', 'Healthcare Trainer'),
(389, 'Michael Robinson', 'michael.robinson@aidgroup.org', '+4455667788', 'Logistics Coordinator'),
(302, 'Sandra Lee', 'sandra.lee@ruralhealth.org', '+5566778899', 'Mental Health Advocate'),
(345, 'Tom White', 'tom.white@wellnessgroup.com', '+6677889900', 'Nutrition Specialist'),
(358, 'Rachel Adams', 'rachel.adams@volunteer.org', '+7788990011', 'Community Educator'),
(366, 'James Green', 'james.green@researchgroup.org', '+8899001122', 'Public Health Researcher');

CREATE TABLE Client (
    Client_ID INTEGER PRIMARY KEY,
    Contact_No TEXT NOT NULL UNIQUE,
    First_Name TEXT NOT NULL,
    Last_Name TEXT NOT NULL
);

INSERT INTO Client (Client_ID, Contact_No, First_Name, Last_Name)
VALUES 
(413, '+1112223333', 'Jane', 'Smith'),
(425, '+4445556666', 'Michael', 'Johnson'),
(437, '+7778889999', 'Sarah', 'Williams'),
(452, '+1231231234', 'David', 'Miller'),
(465, '+4564564567', 'Emily', 'Brown'),
(478, '+7897897890', 'James', 'Taylor'),
(481, '+1010101010', 'Patricia', 'Anderson'),
(492, '+1212121212', 'Robert', 'Thomas'),
(409, '+1313131313', 'Linda', 'Martinez'),
(435, '+1414141414', 'Charles', 'Hernandez');

CREATE TABLE Medicine (
    Medicine_Id INT PRIMARY KEY,
    Client_Id INT NOT NULL,
    Records_id INT,
    Dosage TEXT,
    Supplements TEXT,
    Medicine_name TEXT,
    FOREIGN KEY (Client_Id) REFERENCES Client(Client_ID),
	FOREIGN KEY (Records_Id) REFERENCES Records(Records_Id)
);
INSERT INTO Medicine (Medicine_Id, Client_Id, Records_id, Dosage, Supplements, Medicine_name)
VALUES 
(520, 413, 634, '500mg daily', 'Vitamin C', 'Amoxicillin'),
(531, 425, 645, '250mg twice daily', 'Zinc', 'Ibuprofen'),
(548, 437, 657, '1 tablet per day', 'Calcium', 'Paracetamol'),
(553, 452, 668, '50mg twice daily', 'Magnesium', 'Aspirin'),
(562, 465, 679, '100mg at night', 'Iron', 'Metformin'),
(578, 478, 688, '250mg daily', 'Vitamin D', 'Penicillin'),
(599, 481, 692, '200mg once daily', 'Omega-3', 'Lisinopril'),
(585, 492, 705, '500mg every 8 hours', 'Probiotics', 'Ciprofloxacin'),
(534, 409, 717, '10mg in the morning', 'Multivitamins', 'Amlodipine'),
(559, 435, 729, '2 tablets per day', 'CoQ10', 'Prednisone');

CREATE TABLE Department (
    Department_Id INTEGER PRIMARY KEY,
    Department_Name TEXT NOT NULL,
    Department_Type TEXT NOT NULL,
    Team_Size INTEGER NOT NULL
);

INSERT INTO Department (Department_Id, Department_Name, Department_Type, Team_Size)
VALUES 
(220, 'Pediatrics', 'Healthcare', 10),
(235, 'Nutrition', 'Support Services', 5),
(245, 'Emergency', 'Healthcare', 15),
(257, 'Mental Health', 'Healthcare', 8),
(260, 'Surgery', 'Healthcare', 12),
(278, 'Oncology', 'Specialty', 7),
(299, 'Cardiology', 'Specialty', 10),
(213, 'Radiology', 'Support Services', 6),
(224, 'Pharmacy', 'Support Services', 5),
(238, 'General Medicine', 'Healthcare', 10);

CREATE TABLE Primary_Stakeholder (
    Program_Managers TEXT NOT NULL,
    Community_Health_Workers TEXT NOT NULL,
    Nutritionists TEXT
);


INSERT INTO Primary_Stakeholder (Program_Managers, Community_Health_Workers, Nutritionists)
VALUES 
('Alice Brown', 'Tom White', 'Dr. Emily Green'),
('Michael Black', 'Sara Davis', 'Dr. John White'),
('Linda Gray', 'Carlos Mendez', 'Nancy Blue'),
('David Young', 'Amy Foster', 'Paul Johnson'),
('Rachel Green', 'Timothy Black', 'Sarah Young'),
('James Collins', 'Elizabeth Brown', 'Dr. Anna Smith'),
('Henry King', 'Nina Perez', 'Chris Long'),
('Charles Robinson', 'Jessica Clark', 'Karen Martinez'),
('Angela Wright', 'Jerry Ross', 'Patricia Bell'),
('Bruce Turner', 'Kimberly Scott', 'Diane Carter');

CREATE TABLE Secondary_Stakeholder (
    Government_Health_Agencies TEXT NOT NULL,
    NGOs TEXT NOT NULL,
    Community_Members TEXT
);

INSERT INTO Secondary_Stakeholder (Government_Health_Agencies, NGOs, Community_Members)
VALUES 
('Health Ministry', 'Red Cross', 'Local Volunteers'),
('Public Health Department', 'Doctors Without Borders', 'Community Leaders'),
('National Health Institute', 'World Vision', 'Youth Group'),
('City Health Agency', 'Oxfam', 'School Teachers'),
('Provincial Health Office', 'Save the Children', 'Religious Leaders'),
('Regional Health Bureau', 'CARE International', 'Women’s Union'),
('Health Services Authority', 'Mercy Corps', 'Community Elders'),
('Community Health Bureau', 'UNICEF', 'Student Volunteers'),
('National Health Services', 'PATH', 'Retirees'),
('City Health Initiative', 'Plan International', 'Business Owners'); 

CREATE TABLE Register (
    Register_No INTEGER PRIMARY KEY,
    Client_Name TEXT NOT NULL,
    Address TEXT,
    Phone_No TEXT,
    Date_Of_Birth DATE NOT NULL,
    Age INTEGER
);

INSERT INTO Register (Register_No, Client_Name, Address, Phone_No, Date_Of_Birth, Age)
VALUES 
(309, 'Jane Smith', '123 Main St', '+1112223333', '1990-05-15', 34),
(315, 'Michael Johnson', '456 Elm St', '+4445556666', '1985-10-20', 39),
(328, 'Sarah Williams', '789 Pine St', '+7778889999', '1995-08-12', 29),
(337, 'David Miller', '321 Oak St', '+1231231234', '1992-12-05', 32),
(344, 'Emily Brown', '654 Maple St', '+4564564567', '1988-03-14', 36),
(353, 'James Taylor', '987 Cedar St', '+7897897890', '1993-07-25', 31),
(365, 'Patricia Anderson', '159 Birch St', '+1010101010', '1991-11-17', 33),
(371, 'Robert Thomas', '753 Spruce St', '+1212121212', '1986-09-10', 38),
(388, 'Linda Martinez', '951 Poplar St', '+1313131313', '1987-01-30', 37),
(399, 'Charles Hernandez', '357 Aspen St', '+1414141414', '1990-04-22', 34);

CREATE TABLE Records (
    Records_Id INTEGER PRIMARY KEY,
    Client_Id INTEGER NOT NULL,
    Follow_Up_Date DATE,
    Medical_Prescription TEXT,
    Stakeholders_Id INTEGER NOT NULL,
    Diagnosis TEXT,
    Screening TEXT,
    FOREIGN KEY (Client_Id) REFERENCES Client(Client_ID),
    FOREIGN KEY (Stakeholders_Id) REFERENCES Stakeholder(Stakeholder_ID)
);

INSERT INTO Records (Records_Id, Client_Id, Follow_Up_Date, Medical_Prescription, Stakeholders_Id, Diagnosis, Screening)
VALUES 
(634, 413, '2024-08-01', 'Continue with dosage', 308, 'Hypertension', 'Blood pressure screening'),
(645, 425, '2024-08-15', 'Pain management plan', 322, 'Back pain', 'X-ray'),
(657, 437, '2024-09-10', 'Antibiotic course', 315, 'Bacterial infection', 'Blood test'),
(668, 452, '2024-09-20', 'Antiviral treatment', 376, 'Viral infection', 'PCR test'),
(679, 465, '2024-10-05', 'Weekly checkups', 334, 'Diabetes', 'Blood sugar test'),
(688, 478, '2024-10-18', 'Monitor dosage', 389, 'Heart disease', 'ECG'),
(692, 481, '2024-11-03', 'Follow up on therapy', 302, 'Mental health condition', 'Counseling'),
(705, 492, '2024-11-12', 'Physiotherapy', 345, 'Injury recovery', 'Physical assessment'),
(717, 409, '2024-12-01', 'Adjust prescription', 358, 'Arthritis', 'X-ray'),
(729, 435, '2024-12-10', 'New medication trial', 366, 'Autoimmune disease', 'Blood test');

--Showing clients and their medication and dosage
SELECT C.First_Name,C.Last_Name,M.dosage,M.Medicine_name
FROM Client C
INNER JOIN Medicine M
ON C.Client_ID=M.Client_ID;

--area name as well as challenges with the stakeholder and their contribution listed
SELECT A.Area_Name, A.Challenges,S.Full_name AS Stakeholder_Name, S.Contribution_Type
FROM  Area A
CROSS JOIN Stakeholder S;

--client showing their diagnosis and follow up date
SELECT C.First_Name,C.Last_Name,R.Diagnosis,R.Follow_Up_Date
FROM Client C
INNER JOIN Records R
ON C.Client_ID = R.Client_Id;

--departments with their shareholders
SELECT D.Department_Name,PS.Program_Managers,PS.Community_Health_Workers,PS.Nutritionists
FROM Department D
INNER JOIN Primary_Stakeholder PS
ON D.Department_Id = D.Department_Id;

--update
UPDATE Area
SET Area_Name = 'Updated Health Center'
WHERE Area_allocated_id = 127;

--Alter
ALTER TABLE Stakeholder
ADD Stakeholder_Role TEXT;

--delete
DELETE FROM Register 
WHERE age  = 34;

--list of stakeholders  showing only stakehoder_id,name and contribution
SELECT Stakeholder_ID,Full_name,Contribution_Type
FROM Stakeholder;

--list showing only record id,client-id and their folllow up dates
SELECT Records_Id, Client_Id, Follow_Up_Date
FROM Records;

--Find clients living in 321 Oak St
SELECT Register_No, Client_Name, Address
FROM Register
WHERE Address = '321 Oak St' ;

--order by pupulation in descending order
SELECT Area_Name, Target_population
FROM Area
ORDER BY Target_population DESC;

--areas with a target population of more than 2500
SELECT Area_allocated_id, Area_Name, Area_Code, Target_population
FROM Area
WHERE Target_population > 2500;

--total areas grouped by service_type
SELECT Service_Type, COUNT(*) AS Total_Areas
FROM Area
GROUP BY Service_Type;

--find a client using a specific number
SELECT First_Name, Last_Name, Contact_No
FROM Client
WHERE Contact_No LIKE '+1010%';

--outer join
SELECT Client.First_Name, Client.Last_Name, Medicine.Medicine_name
FROM Client
LEFT JOIN Medicine
ON Client.Client_ID = Medicine.Client_Id;

--OUTER JOiN
SELECT Client.First_Name, Client.Last_Name, Medicine.Medicine_name
FROM Client
RIGHT JOIN Medicine
ON Client.Client_ID = Medicine.Client_Id;

--intersection of clients who have diabetes and their screening is x-ray
SELECT Client_ID
FROM Records
WHERE Diagnosis = 'Diabetes'
INTERSECT
SELECT Client_ID
FROM Records
WHERE Screening = 'X-ray';

--to show if there are any clients without prescribed medicine
SELECT Client_ID
FROM Client
EXCEPT
SELECT Client_Id
FROM Medicine;

--union of clients who have j in either their first or last name
SELECT First_Name, Last_Name
FROM Client
WHERE First_Name LIKE 'J%'
UNION
SELECT First_Name, Last_Name
FROM Client
WHERE Last_Name LIKE 'J%';

