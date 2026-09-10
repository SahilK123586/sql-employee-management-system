-- Create Departments Table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY IDENTITY(1,1),
    DepartmentName VARCHAR(100) NOT NULL,
);

-- Create Designations Table
CREATE TABLE Designations (
    DesignationID INT PRIMARY KEY IDENTITY(1,1),
    DesignationTitle VARCHAR(100) NOT NULL,
    Category VARCHAR(50) CHECK (Category IN ('Medical', 'Nursing', 'Administrative', 'Support'))
);

-- Create Employees Table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY IDENTITY(1001,1),
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Phone VARCHAR(15) NOT NULL,
    PANNumber CHAR(10) UNIQUE NOT NULL,
    DepartmentID INT FOREIGN KEY REFERENCES Departments(DepartmentID),
    DesignationID INT FOREIGN KEY REFERENCES Designations(DesignationID),
    JoiningDate DATE NOT NULL DEFAULT GETDATE(),
    BaseSalaryINR DECIMAL(10, 2) NOT NULL,
);

