-- Step 1: Create the database
CREATE DATABASE BloodDonationDB;

-- Step 2: Use the database
USE BloodDonationDB;

-- Step 3: Create the table
CREATE TABLE BloodDonors (
    DonorID INT AUTO_INCREMENT PRIMARY KEY,
    FullName VARCHAR(100) NOT NULL,
    Address VARCHAR(255) NOT NULL,
    PhoneNumber VARCHAR(15) NOT NULL,
    BloodGroup VARCHAR(5) NOT NULL,
    BloodHealthStatus VARCHAR(50) NOT NULL, -- e.g., 'Healthy', 'Needs Attention'
    DonationStatus VARCHAR(50) NOT NULL,   -- e.g., 'Completed', 'Pending'
    LastDonationDate DATE
);

-- Step 4: Insert 10 sample records
INSERT INTO BloodDonors (FullName, Address, PhoneNumber, BloodGroup, BloodHealthStatus, DonationStatus, LastDonationDate)
VALUES
    ('Arjun Sharma', '123 Main St, Delhi', '123456', 'A+', 'Healthy', 'Completed', '2024-11-01'),
    ('Priya Gupta', '456 Park Ave, Mumbai', '654123', 'B+', 'Healthy', 'Completed', '2024-10-20'),
    ('Rahul Verma', '789 Elm St, Bangalore', '258963', 'O+', 'Healthy', 'Pending', NULL),
    ('Sneha Patil', '101 Lake Rd, Pune', '369852', 'AB+', 'Healthy', 'Completed', '2024-09-15'),
    ('Ravi Kumar', '202 Hill St, Hyderabad', '159753', 'A-', 'Needs Attention', 'Pending', NULL),
    ('Anjali Singh', '303 River Ln, Jaipur', '753951', 'B-', 'Healthy', 'Completed', '2024-08-10'),
    ('Manoj Yadav', '404 Pine Dr, Chennai', '951357', 'O-', 'Healthy', 'Pending', NULL),
    ('Neha Jaiswal', '505 Oak Blvd, Kolkata', '357159', 'AB-', 'Needs Attention', 'Pending', NULL),
    ('Amit Tiwari', '606 Maple Ct, Ahmedabad', '789456', 'A+', 'Healthy', 'Completed', '2024-07-01'),
    ('Pooja Reddy', '707 Cedar St, Cochin', '654789', 'B+', 'Healthy', 'Completed', '2024-06-20');


-- Step 5: Query to display all records
SELECT * FROM BloodDonors;

-- Step 6: Example query for machine learning: Get healthy donors ready to donate again
SELECT FullName, PhoneNumber, BloodGroup, LastDonationDate
FROM BloodDonors
WHERE BloodHealthStatus = 'Healthy' AND DonationStatus = 'Completed'
AND (LastDonationDate IS NULL OR DATEDIFF(CURDATE(), LastDonationDate) >= 90);

