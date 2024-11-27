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