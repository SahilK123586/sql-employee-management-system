-- Procedure: Calculate Net Salary with Indian EPF Deduction (12% Base)
CREATE PROCEDURE sp_CalculateMonthlyPayroll
    @EmpID INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        e.EmployeeID,
        e.FirstName + ' ' + e.LastName AS EmployeeName,
        e.BaseSalaryINR AS GrossMonthly,
        (e.BaseSalaryINR * 0.12) AS PF_Deduction,
        (e.BaseSalaryINR - (e.BaseSalaryINR * 0.12)) AS NetSalaryINR
    FROM Employees e
    WHERE e.EmployeeID = @EmpID AND e.IsActive = 1;
END;