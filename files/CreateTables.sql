USE scheduledb;

-- Remove Tables
    DROP TABLE IF EXISTS Schedule
    DROP TABLE IF EXISTS Shift
    DROP TABLE IF EXISTS Staff
    DROP TABLE IF EXISTS Role
    DROP TABLE IF EXISTS Department

-- Departments
    CREATE TABLE Department (
        department_id INT PRIMARY KEY IDENTITY(1,1),
        department_name VARCHAR(50)
    );

-- Shifts
    CREATE TABLE Shift (
        shift_id INT PRIMARY KEY IDENTITY(1,1),
        start_time time,
        end_time time,
        shift_name VARCHAR(32)
    );
    
-- Roles
    CREATE TABLE Role (
        role_id INT PRIMARY KEY IDENTITY(1,1),
        position VARCHAR(32)
    );

-- Staff
    CREATE TABLE Staff (
        staff_id INT PRIMARY KEY IDENTITY(1,1),
        first_name VARCHAR(50),
        last_name VARCHAR(50),
        role_id INT,
        department_id INT,
        contact_number VARCHAR(20)
    );
        
-- Schedule
    CREATE TABLE Schedule (
        schedule_id INT PRIMARY KEY IDENTITY(1,1),
        staff_id INT,
        role_id INT,
        shift_id INT,
        shift_date DATE,
        department_id INT
    );

-- FK Constraints
    ALTER TABLE Staff     ADD FOREIGN KEY (department_id) REFERENCES Department(department_id)
    ALTER TABLE Staff     ADD FOREIGN KEY (role_id)       REFERENCES Role(role_id)
    ALTER TABLE Schedule  ADD FOREIGN KEY (department_id) REFERENCES Department(department_id)
    ALTER TABLE Schedule  ADD FOREIGN KEY (department_id) REFERENCES Department(department_id)
    ALTER TABLE Schedule  ADD FOREIGN KEY (department_id) REFERENCES Department(department_id)
    ALTER TABLE Schedule  ADD FOREIGN KEY (role_id)       REFERENCES Role(role_id)
