CREATE TABLE Patients (
    Patient_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50) NOT NULL, 
    Age INT NOT NULL,
    Gender VARCHAR(10) NOT NULL,
    Phone INT NOT NULL
);
CREATE TABLE Doctors (
    Doctor_ID INT PRIMARY KEY,
    Department_ID INT,
    Name VARCHAR(50) NOT NULL,
    Specialization VARCHAR(100) NOT NULL,
    Phone INT NOT NULL,
    FOREIGN KEY (Department_ID) REFERENCES Departments(Department_ID) ON DELETE RESTRICT ON UPDATE CASCADE
);
CREATE TABLE Appointments (
    Appointment_ID INT PRIMARY KEY,
    Patien_ID INT,
    Doctor_ID INT,
    Department_ID INT,
    Date DATE,
    Time TIME,
    Status VARCHAR(50),
    FOREIGN KEY (Patien_ID) REFERENCES Patients(Patient_ID) ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (Doctor_ID) REFERENCES Doctors(Doctor_ID) ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (Department_ID) REFERENCES Departments(Department_ID) ON DELETE RESTRICT ON UPDATE CASCADE
);
CREATE TABLE Departments (
    Department_ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Room_No INT
);

CREATE TABLE Joining_Table (
    Patien_ID INT,
    Doctor_ID INT,
    Appointment_ID INT
);

INSERT INTO patients (`Name`, `Age`, `Gender`, `Phone`) 
VALUES 
('Anamul', 19, 'Male', 01635604035),
('Sara Khan', 22, 'Female', 01785403021),
('David Smith', 34, 'Male', 01854679012),
('Emily Clark', 28, 'Female', 01974582136),
('John Doe', 45, 'Male', 01567893452),
('Sophia Lee', 31, 'Female', 01456897321),
('Michael Brown', 40, 'Male', 01798345612),
('Emma Wilson', 26, 'Female', 01698723410),
('James Anderson', 38, 'Male', 01856321478),
('Olivia Davis', 24, 'Female', 01985634120);

INSERT INTO doctors (`Doctor_ID`, `Department_ID`, `Name`, `Specialization`, `Phone`)  
VALUES 
(101, 1001, 'Dr. James Carter', 'Cardiologist', 1678912345),
(102, 1002, 'Dr. Sarah Ahmed', 'Neurologist', 1765478912),
(103, 1003, 'Dr. Michael Scott', 'Orthopedic Surgeon', 1898765432),
(104, 1004, 'Dr. Emily Taylor', 'Pediatrician', 1578943210),
(105, 1005, 'Dr. Sophia Khan', 'Oncologist', 1912345678),
(106, 1006, 'Dr. David Brown', 'Radiologist', 1623456789),
(107, 1007, 'Dr. Olivia Wilson', 'Emergency Physician', 1734567890),
(108, 1008, 'Dr. Daniel Lee', 'Urologist', 1845678901),
(109, 1009, 'Dr. Emma Davis', 'Dermatologist', 1556789012),
(110, 1010, 'Dr. Liam Anderson', 'Gynecologist', 1967890123);


INSERT INTO Appointments (`Appointment_ID`, `Patien_ID`, `Doctor_ID`, `Department_ID`, `Date`, `Time`, `Status`) 
VALUES 
(50, 1, 101, 1001, '2024-01-05', '09:00:00', 'Scheduled'),
(51, 2, 102, 1002, '2024-01-06', '10:30:00', 'Scheduled'),
(52, 3, 103, 1003, '2024-01-07', '11:15:00', 'Completed'),
(53, 4, 104, 1004, '2024-01-08', '12:00:00', 'Cancelled'),
(54, 5, 105, 1005, '2024-01-09', '13:30:00', 'Scheduled'),
(55, 6, 106, 1006, '2024-01-10', '14:00:00', 'Scheduled'),
(56, 7, 107, 1007, '2024-01-11', '15:45:00', 'Completed'),
(57, 8, 108, 1008, '2024-01-12', '16:30:00', 'Scheduled'),
(58, 9, 109, 1009, '2024-01-13', '17:15:00', 'Cancelled'),
(59, 10, 110, 1010, '2024-01-14', '18:00:00', 'Scheduled');


INSERT INTO departments (`Department_ID`, `Name`, `Room_No`) 
VALUES
(1001, 'Cardiology', 501),
(1002, 'Neurology', 502),
(1003, 'Orthopedics', 503),
(1004, 'Pediatrics', 504),
(1005, 'Oncology', 505),
(1006, 'Radiology', 506),
(1007, 'Emergency', 507),
(1008, 'Urology', 508),
(1009, 'Dermatology', 509),
(1010, 'Gynecology', 510);

INSERT INTO joining_table(`Patien_ID`, `Doctor_ID`, `Appointment_ID`) 
VALUES 
(1, 101, 50),
(2, 102, 51),
(3, 103, 52),
(4, 104, 53),
(5, 105, 54),
(6, 106, 55),
(7, 107, 56),
(8, 108, 57),
(9, 109, 58),
(10, 110, 59);
