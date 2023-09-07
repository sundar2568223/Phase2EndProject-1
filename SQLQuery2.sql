create database Phase2_end_Project
use Phase2_end_project
create table Department
(DeptCode int primary key,
DeptName nvarchar(50) not null,
)

INSERT INTO Department (DeptCode, DeptName)
VALUES
    (1, 'Hotel management'),
    (2, 'Digital Marketing'),
    (3, 'stocks'),
    (4, 'IT')


CREATE TABLE Employee (
    EmpCode INT PRIMARY KEY,
    EmpName NVARCHAR(50) NOT NULL,
    Email NVARCHAR(100) NOT NULL,
    DateOfBirth DATETIME NOT NULL,
    Department_Code INT,
    FOREIGN KEY (Department_Code) REFERENCES Department(DeptCode)
)
INSERT INTO Employee (EmpCode, EmpName, Email, DateOfBirth, Department_Code)
VALUES
(1, 'Sundar', 'sundar@gmail.com', '1999-05-25', 1), 
(2, 'Sandeep', 'sandeep@gmail.com', '1998-11-11', 2),
(3, 'Shashank', 'shashank@gmail.com', '1985-08-25', 3),
(4, 'Tharun', 'tharun@example.com', '2002-09-02', 4)


select *from Department
select *from Employee
