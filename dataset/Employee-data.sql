-- Create Employee table schema
CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(100),
    Dept VARCHAR(50)
);

INSERT INTO Employee (EmpID, EmpName, Dept)
SELECT 1, 'John Doe', 'Sales' FROM dual UNION ALL
SELECT 2, 'Jane Smith', 'Marketing' FROM dual UNION ALL
SELECT 3, 'Michael Johnson', 'Sales' FROM dual UNION ALL
SELECT 4, 'Emily Brown', 'Marketing' FROM dual UNION ALL
SELECT 5, 'David Wilson', 'HR' FROM dual UNION ALL
SELECT 6, 'Sarah Lee', 'HR' FROM dual UNION ALL
SELECT 7, 'Chris Evans', 'IT' FROM dual UNION ALL
SELECT 8, 'Emma Thompson', 'IT' FROM dual UNION ALL
SELECT 9, 'Daniel Harris', 'Finance' FROM dual UNION ALL
SELECT 10, 'Olivia Martinez', 'Finance' FROM dual;

INSERT INTO Employee (EmpID, EmpName, Dept)
SELECT 11, 'Michael Brown', 'Sales' FROM dual UNION ALL
SELECT 12, 'Jennifer Davis', 'Marketing' FROM dual UNION ALL
SELECT 13, 'Matthew Wilson', 'HR' FROM dual UNION ALL
SELECT 14, 'Jessica Taylor', 'IT' FROM dual UNION ALL
SELECT 15, 'Andrew Clark', 'Finance' FROM dual UNION ALL
SELECT 16, 'Amanda White', 'Sales' FROM dual UNION ALL
SELECT 17, 'Ryan Martinez', 'Marketing' FROM dual UNION ALL
SELECT 18, 'Michelle Rodriguez', 'HR' FROM dual UNION ALL
SELECT 19, 'James Thomas', 'IT' FROM dual UNION ALL
SELECT 20, 'Melissa Harris', 'Finance' FROM dual;

INSERT INTO Employee (EmpID, EmpName, Dept)
SELECT 21, 'Nicole Walker', 'Sales' FROM dual UNION ALL
SELECT 22, 'Brandon Martinez', 'Marketing' FROM dual UNION ALL
SELECT 23, 'Kayla Adams', 'HR' FROM dual UNION ALL
SELECT 24, 'Jeremy Lee', 'IT' FROM dual UNION ALL
SELECT 25, 'Samantha Turner', 'Finance' FROM dual UNION ALL
SELECT 26, 'Eric Garcia', 'Sales' FROM dual UNION ALL
SELECT 27, 'Rachel Hernandez', 'Marketing' FROM dual UNION ALL
SELECT 28, 'Justin Rodriguez', 'HR' FROM dual UNION ALL
SELECT 29, 'Hannah Scott', 'IT' FROM dual UNION ALL
SELECT 30, 'Tyler Nguyen', 'Finance' FROM dual UNION ALL
SELECT 31, 'Alyssa King', 'Sales' FROM dual UNION ALL
SELECT 32, 'Cody Wood', 'Marketing' FROM dual UNION ALL
SELECT 33, 'Megan Evans', 'HR' FROM dual UNION ALL
SELECT 34, 'Dylan Hill', 'IT' FROM dual UNION ALL
SELECT 35, 'Madison Brooks', 'Finance' FROM dual UNION ALL
SELECT 36, 'Logan Nelson', 'Sales' FROM dual UNION ALL
SELECT 37, 'Ashley Ramirez', 'Marketing' FROM dual UNION ALL
SELECT 38, 'Austin Powell', 'HR' FROM dual UNION ALL
SELECT 39, 'Taylor Murphy', 'IT' FROM dual UNION ALL
SELECT 40, 'Jordan Torres', 'Finance' FROM dual UNION ALL
SELECT 41, 'Brittany Perez', 'Sales' FROM dual UNION ALL
SELECT 42, 'Nathan Rivera', 'Marketing' FROM dual UNION ALL
SELECT 43, 'Kaitlyn Green', 'HR' FROM dual UNION ALL
SELECT 44, 'Joshua Baker', 'IT' FROM dual UNION ALL
SELECT 45, 'Lindsey James', 'Finance' FROM dual UNION ALL
SELECT 46, 'Lauren Collins', 'Sales' FROM dual UNION ALL
SELECT 47, 'Ethan Reed', 'Marketing' FROM dual UNION ALL
SELECT 48, 'Alexis Stewart', 'HR' FROM dual UNION ALL
SELECT 49, 'Gabriel Cook', 'IT' FROM dual UNION ALL
SELECT 50, 'Victoria Morris', 'Finance' FROM dual UNION ALL
SELECT 51, 'Zachary Bailey', 'Sales' FROM dual UNION ALL
SELECT 52, 'Sydney Ward', 'Marketing' FROM dual UNION ALL
SELECT 53, 'Robert Diaz', 'HR' FROM dual UNION ALL
SELECT 54, 'Olivia Martinez', 'IT' FROM dual UNION ALL
SELECT 55, 'Christian Nelson', 'Finance' FROM dual UNION ALL
SELECT 56, 'Elizabeth Carter', 'Sales' FROM dual UNION ALL
SELECT 57, 'Kevin Adams', 'Marketing' FROM dual UNION ALL
SELECT 58, 'Paige Griffin', 'HR' FROM dual UNION ALL
SELECT 59, 'Nicholas Wright', 'IT' FROM dual UNION ALL
SELECT 60, 'Grace Watson', 'Finance' FROM dual UNION ALL
SELECT 61, 'Jonathan Murphy', 'Sales' FROM dual UNION ALL
SELECT 62, 'Taylor Turner', 'Marketing' FROM dual UNION ALL
SELECT 63, 'Emma Foster', 'HR' FROM dual UNION ALL
SELECT 64, 'Christopher Hill', 'IT' FROM dual UNION ALL
SELECT 65, 'Emily Russell', 'Finance' FROM dual UNION ALL
SELECT 66, 'Andrew Butler', 'Sales' FROM dual UNION ALL
SELECT 67, 'Jessica Stewart', 'Marketing' FROM dual UNION ALL
SELECT 68, 'Matthew Turner', 'HR' FROM dual UNION ALL
SELECT 69, 'Rebecca Clark', 'IT' FROM dual UNION ALL
SELECT 70, 'Kyle Diaz', 'Finance' FROM dual UNION ALL
SELECT 71, 'Maria Cox', 'Sales' FROM dual UNION ALL
SELECT 72, 'David Garcia', 'Marketing' FROM dual UNION ALL
SELECT 73, 'Sara Thomas', 'HR' FROM dual UNION ALL
SELECT 74, 'Brandon Foster', 'IT' FROM dual UNION ALL
SELECT 75, 'Jennifer Allen', 'Finance' FROM dual UNION ALL
SELECT 76, 'James Parker', 'Sales' FROM dual UNION ALL
SELECT 77, 'Ashley Sanchez', 'Marketing' FROM dual UNION ALL
SELECT 78, 'Tyler Ramirez', 'HR' FROM dual UNION ALL
SELECT 79, 'Kayla Hernandez', 'IT' FROM dual UNION ALL
SELECT 80, 'Daniel Reed', 'Finance' FROM dual UNION ALL
SELECT 81, 'Katherine Baker', 'Sales' FROM dual UNION ALL
SELECT 82, 'Michael Mitchell', 'Marketing' FROM dual UNION ALL
SELECT 83, 'Sarah Garcia', 'HR' FROM dual UNION ALL
SELECT 84, 'Christopher Wright', 'IT' FROM dual UNION ALL
SELECT 85, 'Amanda Phillips', 'Finance' FROM dual UNION ALL
SELECT 86, 'John Scott', 'Sales' FROM dual UNION ALL
SELECT 87, 'Nicole Flores', 'Marketing' FROM dual UNION ALL
SELECT 88, 'William Evans', 'HR' FROM dual UNION ALL
SELECT 89, 'Alexandra Taylor', 'IT' FROM dual UNION ALL
SELECT 90, 'Jacob Morris', 'Finance' FROM dual UNION ALL
SELECT 91, 'Samantha Cox', 'Sales' FROM dual UNION ALL
SELECT 92, 'Ryan Turner', 'Marketing' FROM dual UNION ALL
SELECT 93, 'Madison Thompson', 'HR' FROM dual UNION ALL
SELECT 94, 'Christopher Campbell', 'IT' FROM dual UNION ALL
SELECT 95, 'Jessica Ward', 'Finance' FROM dual UNION ALL
SELECT 96, 'Justin Price', 'Sales' FROM dual UNION ALL
SELECT 97, 'Hannah Martinez', 'Marketing' FROM dual UNION ALL
SELECT 98, 'Dylan Lee', 'HR' FROM dual UNION ALL
SELECT 99, 'Emily Carter', 'IT' FROM dual UNION ALL
SELECT 100, 'Brandon Turner', 'Finance' FROM dual;



ALTER TABLE Employee
ADD Salary DECIMAL(10, 2); -- Assuming salary is stored as a decimal number

UPDATE Employee
SET Salary = ROUND(DBMS_RANDOM.VALUE(30000, 100000)) -- Generates a random salary between 30000 and 100000
WHERE EmpID <= 100; -- Assuming you want to update the first 100 records



-- Add the GENDER column to the Employee table
ALTER TABLE Employee
ADD GENDER VARCHAR(10);

-- Update the GENDER column with random data
UPDATE Employee
SET GENDER = CASE WHEN MOD(EmpID, 2) = 0 THEN 'Male' ELSE 'Female' END;



-- Step 1: Create the Address Table
CREATE TABLE Address (
    AddressID INT PRIMARY KEY,
    EmployeeID INT,
    Street VARCHAR(255),
    City VARCHAR(100),
    State VARCHAR(100),
    PostalCode VARCHAR(20),
    Country VARCHAR(100),
    CONSTRAINT FK_EmployeeID FOREIGN KEY (EmployeeID) REFERENCES Employee(EmpID)
);

-- Step 2: Add Foreign Key Constraint
ALTER TABLE Address
ADD CONSTRAINT FK_EmployeeID FOREIGN KEY (EmployeeID) REFERENCES Employee(EmpID);



BEGIN
    FOR i IN 1..100 LOOP
        
        INSERT INTO Address (AddressID, EmployeeID, Street, City, State, PostalCode, Country)
        VALUES (i, i, 'Street ' || i, 'City ' || i, 'State ' || i, 'PostalCode ' || i, 'Country ' || i);
    END LOOP;
    COMMIT;
END;


CREATE OR REPLACE PROCEDURE update_city_by_state IS
BEGIN
    FOR i IN 1..100 LOOP
        UPDATE Address
        SET City = CASE 
                        WHEN State = 'Telangana' THEN 'Hyderabad'
                        WHEN State = 'Karnataka' THEN 'Bengaluru'
                        WHEN State = 'Andhra Pradesh' THEN 
                            CASE WHEN City IS NULL THEN 'Amaravati' ELSE City END
                        WHEN State = 'Delhi' THEN 'Delhi'
                   END
        WHERE AddressID = i;
    END LOOP;
END update_city_by_state;
/



BEGIN
    update_city_by_state;
END;
/




COMMIT;



