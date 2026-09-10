-- Insert Departments
INSERT INTO Departments (DepartmentName) VALUES 
('Cardiology'),
('Orthopedics'),
('Emergency & Trauma'),
('Nursing Administration');

-- Insert Designations
INSERT INTO Designations (DesignationTitle, Category) VALUES 
('Senior Consultant', 'Medical'),
('Resident Doctor', 'Medical'),
('Head Nurse', 'Nursing'),
('Ward Boy', 'Support'),
('Billing Officer', 'Administrative');

-- Insert Employees (Indian Context)
INSERT INTO Employees (FirstName, LastName, Email, Phone, PANNumber, DepartmentID, DesignationID, JoiningDate, BaseSalaryINR) VALUES 
('Aarav', 'Sharma', 'aarav.sharma@hospital.in', '9820012345', 'ABCPS1234A', 1, 1, '2019-04-15', 185000.00),
('Priya', 'Deshmukh', 'priya.d@hospital.in', '9819098765', 'BKSPD5678B', 4, 3, '2020-08-01', 52000.00),
('Rajesh', 'Kulkarni', 'rajesh.k@hospital.in', '9769011223', 'CLXPK9012C', 3, 2, '2022-01-10', 95000.00),
('Sunita', 'Patil', 'sunita.p@hospital.in', '9833044556', 'DMYPP3456D', 3, 4, '2021-05-20', 28000.00),
('Amit', 'Verma', 'amit.v@hospital.in', '9920077889', 'ENZPV7890E', 2, 5, '2023-02-01', 42000.00);