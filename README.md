Blood Donation Database Management System 🩸

📌 About 

This project is a Blood Donation Database Management System built using MySQL. It helps manage blood donor records efficiently, allowing users to store, retrieve, and analyze donor information for blood donation programs. The database includes key donor details like blood group, health status, last donation date, and donation status.

🚀 Features

✅ Database Creation – Sets up a structured BloodDonationDB database 📂✅ Donor Management – Stores donor information including name, address, phone, blood type, and health status 🏥✅ Donation Tracking – Keeps track of last donation date & donation status 📆✅ Data Retrieval – Fetches donor details with SQL queries for easy access 📊✅ Machine Learning Ready – Provides a dataset to identify eligible blood donors for future donations 🤖

📜 Table Structure

The BloodDonors table includes the following fields:

DonorID (Primary Key) – Unique ID for each donor 🔢

FullName – Donor's full name 📝

Address – Residential address 📍

PhoneNumber – Contact number ☎️

BloodGroup – Blood type (A+, B-, O+, etc.) 🩸

BloodHealthStatus – Health condition (Healthy/Needs Attention) 🏥

DonationStatus – Status of last donation (Completed/Pending) ⏳

LastDonationDate – Date of last blood donation 📅

🔍 How to Use

1️⃣ Create the database by running the CREATE DATABASE BloodDonationDB; command.2️⃣ Use the database with USE BloodDonationDB;.3️⃣ Create the BloodDonors table with the provided schema.4️⃣ Insert sample donor records into the table.5️⃣ Run queries to retrieve donor details or identify eligible donors for the next donation.

📊 Expected Output - Finding Eligible Donors

The query retrieves healthy donors eligible for donation, displaying results like this:

| FullName     | PhoneNumber | BloodGroup | LastDonationDate |
|-------------|------------|-----------|----------------|
| Arjun Sharma | 123456     | A+        | 2024-11-01     |
| Priya Gupta  | 654123     | B+        | 2024-10-20     |
| Sneha Patil  | 369852     | AB+       | 2024-09-15     |
| Anjali Singh | 753951     | B-        | 2024-08-10     |
| Amit Tiwari  | 789456     | A+        | 2024-07-01     |


📌 Potential Use Cases

🔹 Blood Donation Campaigns – Easily identify and contact eligible donors 🏥🔹 Health Research & Analysis – Use data for healthcare insights 📊🔹 Machine Learning Models – Train models to predict donation patterns 🤖🔹 Hospital & NGO Integration – Help hospitals maintain an updated donor list 🏨

🏆 Contributing

Contributions are welcome! Feel free to submit pull requests or report issues. Let's work together to improve blood donation management systems! 🚀
