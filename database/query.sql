-- Total Salary Expenses Grouped by Department
SELECT 
    d.DepartmentName,
    COUNT(e.EmployeeID) AS TotalStaff,
    SUM(e.BaseSalaryINR) AS TotalMonthlyBudgetINR
FROM Departments d
LEFT JOIN Employees e ON d.DepartmentID = e.DepartmentID
GROUP BY d.DepartmentName;

