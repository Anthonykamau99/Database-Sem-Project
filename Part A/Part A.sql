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