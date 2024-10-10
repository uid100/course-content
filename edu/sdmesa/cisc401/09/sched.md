### Student Exercise: Creating a Hospital Staffing Schedule with SQL

#### **Objective**:
The goal of this exercise is for students to design and implement SQL tables and queries to create a staffing schedule for a hospital. This includes managing shifts for doctors and nurses, assigning departments, and tracking schedules over time.

---

### **Exercise Overview**:

You will:
1. Create the necessary SQL tables to manage staff, departments, shifts, and schedules.
2. Write SQL queries to populate the tables with sample data.
3. Write SQL queries to generate a weekly staffing schedule for a specific department.
4. Write a query to find staff who have overlapping shifts and may require adjustments.

---

### **Step-by-Step Instructions**:

#### **Step 1: Create the SQL Tables**
You need to design the following tables:

1. **Staff**:
   - Stores information about hospital staff (doctors, nurses, etc.)
   - Columns: `staff_id`, `first_name`, `last_name`, `role` (e.g., 'Doctor', 'Nurse'), `department_id`, `contact_number`

2. **Department**:
   - Stores department details (e.g., Emergency, Pediatrics).
   - Columns: `department_id`, `department_name`

3. **Shifts**:
   - Stores details about shift timings.
   - Columns: `shift_id`, `start_time`, `end_time`, `shift_name` (e.g., 'Day Shift', 'Night Shift')

4. **Schedule**:
   - Manages the schedule, assigning staff to shifts.
   - Columns: `schedule_id`, `staff_id`, `shift_id`, `shift_date`, `department_id`

---

#### **Step 2: Create Tables with SQL**

Using the table structures defined above, create the SQL tables in your database:

```sql
-- Create the Staff table
CREATE TABLE Staff (
    staff_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    role VARCHAR(50),  -- Example: 'Doctor', 'Nurse'
    department_id INT,
    contact_number VARCHAR(20),
    FOREIGN KEY (department_id) REFERENCES Department(department_id)
);

-- Create the Department table
CREATE TABLE Department (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(100)
);

-- Create the Shifts table
CREATE TABLE Shifts (
    shift_id INT PRIMARY KEY AUTO_INCREMENT,
    start_time TIME,
    end_time TIME,
    shift_name VARCHAR(50)  -- Example: 'Day Shift', 'Night Shift'
);

-- Create the Schedule table
CREATE TABLE Schedule (
    schedule_id INT PRIMARY KEY AUTO_INCREMENT,
    staff_id INT,
    shift_id INT,
    shift_date DATE,
    department_id INT,
    FOREIGN KEY (staff_id) REFERENCES Staff(staff_id),
    FOREIGN KEY (shift_id) REFERENCES Shifts(shift_id),
    FOREIGN KEY (department_id) REFERENCES Department(department_id)
);
```

---

#### **Step 3: Insert Sample Data**

Now that your tables are set up, populate them with some sample data. You will insert a few rows into each table to represent departments, staff members, shifts, and schedules.

```sql
-- Insert sample data into the Department table
INSERT INTO Department (department_name) VALUES
('Emergency'), ('Pediatrics'), ('Surgery');

-- Insert sample data into the Staff table
INSERT INTO Staff (first_name, last_name, role, department_id, contact_number) VALUES
('John', 'Doe', 'Doctor', 1, '123-456-7890'),
('Jane', 'Smith', 'Nurse', 1, '987-654-3210'),
('Alice', 'Johnson', 'Doctor', 2, '555-444-3333'),
('Bob', 'Brown', 'Nurse', 3, '777-888-9999');

-- Insert sample data into the Shifts table
INSERT INTO Shifts (start_time, end_time, shift_name) VALUES
('08:00:00', '16:00:00', 'Day Shift'),
('16:00:00', '00:00:00', 'Evening Shift'),
('00:00:00', '08:00:00', 'Night Shift');

-- Insert sample data into the Schedule table
INSERT INTO Schedule (staff_id, shift_id, shift_date, department_id) VALUES
(1, 1, '2024-10-11', 1),
(2, 2, '2024-10-11', 1),
(3, 1, '2024-10-11', 2),
(4, 3, '2024-10-11', 3),
(1, 2, '2024-10-12', 1),
(2, 3, '2024-10-12', 1);
```

---

#### **Step 4: Generate the Staffing Schedule**

Write an SQL query to generate a staffing schedule for a specific department (e.g., Emergency) over a given week.

```sql
-- Query to generate the staffing schedule for the Emergency department over the week
SELECT 
    s.first_name, s.last_name, s.role, d.department_name, sh.shift_name, sc.shift_date
FROM 
    Schedule sc
JOIN 
    Staff s ON sc.staff_id = s.staff_id
JOIN 
    Department d ON sc.department_id = d.department_id
JOIN 
    Shifts sh ON sc.shift_id = sh.shift_id
WHERE 
    d.department_name = 'Emergency'
ORDER BY 
    sc.shift_date, sh.start_time;
```

---

#### **Step 5: Find Overlapping Shifts**

Write an SQL query to find staff members who have overlapping shifts (e.g., if a doctor is assigned to multiple departments at the same time).

```sql
-- Query to find staff with overlapping shifts
SELECT 
    s1.staff_id, s1.first_name, s1.last_name, sc1.shift_date, sh1.shift_name, sh2.shift_name
FROM 
    Schedule sc1
JOIN 
    Schedule sc2 ON sc1.staff_id = sc2.staff_id 
    AND sc1.shift_date = sc2.shift_date
    AND sc1.shift_id != sc2.shift_id
JOIN 
    Staff s1 ON sc1.staff_id = s1.staff_id
JOIN 
    Shifts sh1 ON sc1.shift_id = sh1.shift_id
JOIN 
    Shifts sh2 ON sc2.shift_id = sh2.shift_id
WHERE 
    sh1.start_time < sh2.end_time AND sh1.end_time > sh2.start_time;
```

---

### **Conclusion**:
In this exercise, you created SQL tables to manage hospital staff, departments, shifts, and schedules. You then wrote queries to populate the tables with data, generate a staffing schedule, and identify potential scheduling conflicts.

This approach can be adapted to real-world hospital scheduling systems, where large teams of healthcare professionals must be efficiently managed across various departments and shifts.
