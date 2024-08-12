CREATE DATABASE EmployeeTaskTracker;
USE EmployeeTaskTracker;
CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    role ENUM('Associate', 'Admin'),
    username VARCHAR(50) UNIQUE,
    password VARCHAR(255)
);
CREATE TABLE Tasks (
    task_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT,
    project VARCHAR(100),
    date DATE,
    start_time TIME,
    end_time TIME,
    category VARCHAR(50),
    description TEXT,
    FOREIGN KEY (employee_id) REFERENCES Users(user_id)
);
CREATE TABLE Projects (
    project_id INT AUTO_INCREMENT PRIMARY KEY,
    project_name VARCHAR(100),
