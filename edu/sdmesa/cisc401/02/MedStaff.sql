
-- Create a new Database
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'NotRealDoctors')
BEGIN
    CREATE DATABASE NotRealDoctors;
END;



-- Create a new Table in the Database
use NotRealDoctors;
DROP TABLE IF EXISTS MedicalStaff;

CREATE TABLE MedicalStaff (
    personnel_id INT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    role_name VARCHAR(50) NOT NULL,
    specialty_name VARCHAR(100) NULL,
    hospital_name VARCHAR(100) NOT NULL,
    show_movie VARCHAR(100) NOT NULL,
    location VARCHAR(100) NOT NULL
);


-- Insert data records into the new Table
INSERT INTO MedicalStaff (personnel_id, full_name, role_name, specialty_name, hospital_name, show_movie, location)
VALUES
(1, 'Dr. Bob Kelso', 'Administrator', NULL, 'Sacred Heart Hospital', 'Scrubs', 'San DiFrangeles, California'),
(2, 'Dr. John "J.D." Dorian', 'Doctor', 'Internal Medicine', 'Sacred Heart Hospital', 'Scrubs', 'San DiFrangeles, California'),
(3, 'Dr. Perry Cox', 'Doctor', 'Internal Medicine', 'Sacred Heart Hospital', 'Scrubs', 'San DiFrangeles, California'),
(4, 'Dr. Elliot Reid', 'Doctor', 'Endocrinology', 'Sacred Heart Hospital', 'Scrubs', 'San DiFrangeles, California'),
(5, 'Dr. Christopher Turk', 'Doctor', 'Surgery', 'Sacred Heart Hospital', 'Scrubs', 'San DiFrangeles, California'),
(6, 'Nurse Carla Espinosa', 'Nurse', NULL, 'Sacred Heart Hospital', 'Scrubs', 'San DiFrangeles, California'),
(7, 'Nurse Laverne Roberts', 'Nurse', NULL, 'Sacred Heart Hospital', 'Scrubs', 'San DiFrangeles, California'),
(8, 'Dr. Richard Webber', 'Administrator', NULL, 'Seattle Grace Hospital / Grey Sloan Memorial Hospital', 'Grey''s Anatomy', 'Seattle, Washington'),
(9, 'Dr. Meredith Grey', 'Doctor', NULL, 'Seattle Grace Hospital / Grey Sloan Memorial Hospital', 'Grey''s Anatomy', 'Seattle, Washington'),
(10, 'Dr. Derek Shepherd', 'Doctor', 'Neurosurgery', 'Seattle Grace Hospital / Grey Sloan Memorial Hospital', 'Grey''s Anatomy', 'Seattle, Washington'),
(11, 'Dr. Cristina Yang', 'Doctor', 'Cardiothoracic Surgery', 'Seattle Grace Hospital / Grey Sloan Memorial Hospital', 'Grey''s Anatomy', 'Seattle, Washington'),
(12, 'Dr. Miranda Bailey', 'Doctor', NULL, 'Seattle Grace Hospital / Grey Sloan Memorial Hospital', 'Grey''s Anatomy', 'Seattle, Washington'),
(13, 'Nurse Olivia Harper', 'Nurse', NULL, 'Seattle Grace Hospital / Grey Sloan Memorial Hospital', 'Grey''s Anatomy', 'Seattle, Washington'),
(14, 'Nurse Tyler Christian', 'Nurse', NULL, 'Seattle Grace Hospital / Grey Sloan Memorial Hospital', 'Grey''s Anatomy', 'Seattle, Washington'),
(15, 'Dr. Lisa Cuddy', 'Administrator', NULL, 'Princeton-Plainsboro Teaching Hospital', 'House, M.D.', 'Princeton, New Jersey'),
(16, 'Dr. Gregory House', 'Doctor', NULL, 'Princeton-Plainsboro Teaching Hospital', 'House, M.D.', 'Princeton, New Jersey'),
(17, 'Dr. James Wilson', 'Doctor', 'Oncology', 'Princeton-Plainsboro Teaching Hospital', 'House, M.D.', 'Princeton, New Jersey'),
(18, 'Dr. Allison Cameron', 'Doctor', 'Immunology', 'Princeton-Plainsboro Teaching Hospital', 'House, M.D.', 'Princeton, New Jersey'),
(19, 'Dr. Robert Chase', 'Doctor', 'Intensive Care', 'Princeton-Plainsboro Teaching Hospital', 'House, M.D.', 'Princeton, New Jersey'),
(20, 'Nurse Brenda Previn', 'Nurse', NULL, 'Princeton-Plainsboro Teaching Hospital', 'House, M.D.', 'Princeton, New Jersey'),
(21, 'Nurse Jeffrey Sparkman', 'Nurse', NULL, 'Princeton-Plainsboro Teaching Hospital', 'House, M.D.', 'Princeton, New Jersey'),
(22, 'Dr. Donald Anspaugh', 'Administrator', NULL, 'County General Hospital', 'ER', 'Chicago, Illinois'),
(23, 'Dr. Mark Greene', 'Doctor', 'Emergency Medicine', 'County General Hospital', 'ER', 'Chicago, Illinois'),
(24, 'Dr. Doug Ross', 'Doctor', 'Pediatrics', 'County General Hospital', 'ER', 'Chicago, Illinois'),
(25, 'Dr. John Carter', 'Doctor', 'Surgery', 'County General Hospital', 'ER', 'Chicago, Illinois'),
(26, 'Dr. Susan Lewis', 'Doctor', 'Emergency Medicine', 'County General Hospital', 'ER', 'Chicago, Illinois'),
(27, 'Nurse Carol Hathaway', 'Nurse', NULL, 'County General Hospital', 'ER', 'Chicago, Illinois'),
(28, 'Nurse Abby Lockhart', 'Nurse', NULL, 'County General Hospital', 'ER', 'Chicago, Illinois'),
(29, 'Dr. Donald Westphall', 'Administrator', NULL, 'St. Elsewhere (St. Eligius Hospital)', 'St. Elsewhere', 'Boston, Massachusetts'),
(30, 'Dr. Mark Craig', 'Doctor', 'Cardiothoracic Surgery', 'St. Elsewhere (St. Eligius Hospital)', 'St. Elsewhere', 'Boston, Massachusetts'),
(31, 'Dr. Victor Ehrlich', 'Doctor', 'Surgery', 'St. Elsewhere (St. Eligius Hospital)', 'St. Elsewhere', 'Boston, Massachusetts'),
(32, 'Dr. Daniel Auschlander', 'Doctor', 'Hematology', 'St. Elsewhere (St. Eligius Hospital)', 'St. Elsewhere', 'Boston, Massachusetts'),
(33, 'Dr. Jack Morrison', 'Doctor', NULL, 'St. Elsewhere (St. Eligius Hospital)', 'St. Elsewhere', 'Boston, Massachusetts'),
(34, 'Nurse Christine ''Chris'' O''Neil', 'Nurse', NULL, 'St. Elsewhere (St. Eligius Hospital)', 'St. Elsewhere', 'Boston, Massachusetts'),
(35, 'Nurse Ellen O''Neill', 'Nurse', NULL, 'St. Elsewhere (St. Eligius Hospital)', 'St. Elsewhere', 'Boston, Massachusetts'),
(36, 'Dr. Phillip Watters', 'Administrator', NULL, 'Chicago Hope Hospital', 'Chicago Hope', 'Chicago, Illinois'),
(37, 'Dr. Jeffrey Geiger', 'Doctor', 'Cardiothoracic Surgery', 'Chicago Hope Hospital', 'Chicago Hope', 'Chicago, Illinois'),
(38, 'Dr. Aaron Shutt', 'Doctor', 'Neurosurgery', 'Chicago Hope Hospital', 'Chicago Hope', 'Chicago, Illinois'),
(39, 'Dr. Kate Austin', 'Doctor', 'Cardiothoracic Surgery', 'Chicago Hope Hospital', 'Chicago Hope', 'Chicago, Illinois'),
(40, 'Dr. Billy Kronk', 'Doctor', 'Trauma Surgery', 'Chicago Hope Hospital', 'Chicago Hope', 'Chicago, Illinois'),
(41, 'Nurse Laura Kincaid', 'Nurse', NULL, 'Chicago Hope Hospital', 'Chicago Hope', 'Chicago, Illinois'),
(42, 'Nurse Jo ''Joey'' Williams', 'Nurse', NULL, 'Chicago Hope Hospital', 'Chicago Hope', 'Chicago, Illinois'),
(43, 'Dr. Max Goodwin', 'Administrator', NULL, 'New Amsterdam', 'New Amsterdam', 'New York City, New York'),
(44, 'Dr. Helen Sharpe', 'Doctor', 'Oncology', 'New Amsterdam', 'New Amsterdam', 'New York City, New York'),
(45, 'Dr. Floyd Reynolds', 'Doctor', NULL, 'New Amsterdam', 'New Amsterdam', 'New York City, New York'),
(46, 'Dr. Lauren Bloom', 'Doctor', 'Emergency Medicine', 'New Amsterdam', 'New Amsterdam', 'New York City, New York'),
(47, 'Dr. Vijay Kapoor', 'Doctor', 'Neurology', 'New Amsterdam', 'New Amsterdam', 'New York City, New York'),
(48, 'Nurse Eva Vasquez', 'Nurse', NULL, 'New Amsterdam', 'New Amsterdam', 'New York City, New York'),
(49, 'Nurse Ronit Cohen', 'Nurse', NULL, 'New Amsterdam', 'New Amsterdam', 'New York City, New York'),
(50, 'Dr. Aaron Glassman', 'Administrator', NULL, 'St. Bonaventure Hospital', 'The Good Doctor', 'San Jose, California'),
(51, 'Dr. Shaun Murphy', 'Doctor', 'Surgery', 'St. Bonaventure Hospital', 'The Good Doctor', 'San Jose, California'),
(52, 'Dr. Claire Browne', 'Doctor', 'Emergency Medicine', 'St. Bonaventure Hospital', 'The Good Doctor', 'San Jose, California'),
(53, 'Dr. Lim', 'Doctor', 'Trauma Surgery', 'St. Bonaventure Hospital', 'The Good Doctor', 'San Jose, California'),
(54, 'Dr. Marcus Andrews', 'Doctor', 'Internal Medicine', 'St. Bonaventure Hospital', 'The Good Doctor', 'San Jose, California'),
(55, 'Nurse Mia Kenney', 'Nurse', NULL, 'St. Bonaventure Hospital', 'The Good Doctor', 'San Jose, California'),
(56, 'Nurse Lila Bonham', 'Nurse', NULL, 'St. Bonaventure Hospital', 'The Good Doctor', 'San Jose, California'),
(57, 'Dr. Monica Quartermaine', 'Administrator', NULL, 'General Hospital', 'General Hospital', 'Port Charles, New York'),
(58, 'Dr. Patrick Drake', 'Doctor', 'Emergency Medicine', 'General Hospital', 'General Hospital', 'Port Charles, New York'),
(59, 'Dr. Robin Scorpio', 'Doctor', 'Internal Medicine', 'General Hospital', 'General Hospital', 'Port Charles, New York'),
(60, 'Dr. Elizabeth Webber', 'Doctor', NULL, 'General Hospital', 'General Hospital', 'Port Charles, New York'),
(61, 'Dr. Lucas Jones', 'Doctor', 'Pediatrics', 'General Hospital', 'General Hospital', 'Port Charles, New York'),
(62, 'Nurse Epiphany Johnson', 'Nurse', NULL, 'General Hospital', 'General Hospital', 'Port Charles, New York'),
(63, 'Nurse Kelly Lee', 'Nurse', NULL, 'General Hospital', 'General Hospital', 'Port Charles, New York');

