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