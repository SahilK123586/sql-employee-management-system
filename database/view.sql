-- View: Active Medical Staff Details
CREATE VIEW vw_ActiveMedicalStaff AS
SELECT 
    e.EmployeeID,
    e.FirstName + ' ' + e.LastName AS FullName,
    d.DepartmentName,
    des.DesignationTitle,
    e.Phone,
    e.Email
FROM Employees e
INNER JOIN Departments d ON e.DepartmentID = d.DepartmentID
INNER JOIN Designations des ON e.DesignationID = des.DesignationID
WHERE e.IsActive = 1;