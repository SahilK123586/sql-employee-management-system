# sql-employee-management-system
The project that was handed over to me in my office. 


# Database Design Overview

## Entity Relationships
- **Departments (1) -> Employees (N)**: Each staff member belongs to one hospital department.
- **Designations (1) -> Employees (N)**: Standardized medical/non-medical hierarchy roles.


## Compliance Considerations
- Includes PAN record fields (`PANNumber`) for regulatory and taxation handling within India.
- Base salary figures modeled in Indian Rupees (`INR`).
