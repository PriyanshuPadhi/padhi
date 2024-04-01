create database airlines; 
show databases; 
use airlines;
CREATE TABLE Users (
  User_id INT PRIMARY KEY,
  User_name VARCHAR(255) NOT NULL,
  User_mobile VARCHAR(255) NOT NULL,
  User_email VARCHAR(255) NOT NULL,
  User_address VARCHAR(255) NOT NULL
);
 
CREATE TABLE Roles (
  Role_id INT PRIMARY KEY,
  Role_name VARCHAR(255) NOT NULL,
  Role_desc VARCHAR(255) NOT NULL
);
 
CREATE TABLE Login (
  Login_id INT PRIMARY KEY,
  Login_username VARCHAR(255) NOT NULL,
  Login_password VARCHAR(255) NOT NULL,
  User_id INT,
  FOREIGN KEY (User_id) REFERENCES Users(User_id)
);
 
CREATE TABLE Employee (
  Employee_id INT PRIMARY KEY,
  Employee_name VARCHAR(255) NOT NULL,
  Employee_age INT NOT NULL,
  Employee_address VARCHAR(255) NOT NULL,
  User_id INT,
  FOREIGN KEY (User_id) REFERENCES Users(User_id)
);
 
CREATE TABLE Permission (
  Per_id INT PRIMARY KEY,
  Per_name VARCHAR(255) NOT NULL,
  Per_address VARCHAR(255) NOT NULL
);
 
CREATE TABLE Roles_Permission (
  Role_id INT,
  Per_id INT,
  PRIMARY KEY (Role_id, Per_id),
  FOREIGN KEY (Role_id) REFERENCES Roles(Role_id),
  FOREIGN KEY (Per_id) REFERENCES Permission(Per_id)
);
 
CREATE TABLE Ticket_booking (
  Ticket_id INT PRIMARY KEY,
  Ticket_date DATE NOT NULL,
  Ticket_describe VARCHAR(255) NOT NULL,
  Employee_id INT,
  FOREIGN KEY (Employee_id) REFERENCES Employee(Employee_id)
);
 
CREATE TABLE Airlines_Booking (
  AB_id INT PRIMARY KEY,
  AB_date DATE NOT NULL,
  AB_describe VARCHAR(255) NOT NULL,
  Employee_id INT,
  FOREIGN KEY (Employee_id) REFERENCES Employee(Employee_id)
);
 
CREATE TABLE Airline_Enquiry (
  AE_id INT PRIMARY KEY,
  AE_title VARCHAR(255) NOT NULL,
  AE_date DATE NOT NULL,
  AE_type VARCHAR(255) NOT NULL
);

INSERT INTO Users (User_id, User_name, User_mobile, User_email, User_address) VALUES
(1, 'John Doe', '1234567890', 'john@example.com', '123 Main Street'),
(2, 'Jane Smith', '9876543210', 'jane@example.com', '456 Elm Street'),
(3, 'Alice Johnson', '5551234567', 'alice@example.com', '789 Oak Street'),
(4, 'Bob Brown', '5559876543', 'bob@example.com', '101 Pine Street'),
(5, 'Eve Davis', '5557891234', 'eve@example.com', '202 Maple Street'),
(6, 'Michael Clark', '5554567890', 'michael@example.com', '303 Cedar Street'),
(7, 'Sarah Lee', '5553219876', 'sarah@example.com', '404 Walnut Street'),
(8, 'David Wilson', '5556782345', 'david@example.com', '505 Pineapple Street'),
(9, 'Emily Taylor', '5558901234', 'emily@example.com', '606 Orange Street'),
(10, 'James Anderson', '5552345678', 'james@example.com', '707 Peach Street');
 
INSERT INTO Roles (Role_id, Role_name, Role_desc) VALUES
(1, 'Admin', 'System Administrator'),
(2, 'User', 'Regular User'),
(3, 'Manager', 'Team Manager');
 
INSERT INTO Login (Login_id, Login_username, Login_password, User_id) VALUES
(1, 'johndoe', 'password123', 1),
(2, 'janesmith', 'letmein', 2),
(3, 'alice', 'alicepassword', 3),
(4, 'bob', 'bobpassword', 4),
(5, 'eve', 'evepassword', 5),
(6, 'michael', 'michaelpassword', 6),
(7, 'sarah', 'sarahpassword', 7),
(8, 'david', 'davidpassword', 8),
(9, 'emily', 'emilypassword', 9),
(10, 'james', 'jamespassword', 10);
 
INSERT INTO Employee (Employee_id, Employee_name, Employee_age, Employee_address, User_id) VALUES
(1, 'Mike Johnson', 30, '789 Oak Street', 3),
(2, 'Emily Brown', 25, '101 Pine Street', 4),
(3, 'Adam Davis', 35, '202 Maple Street', 5),
(4, 'Laura Clark', 40, '303 Cedar Street', 6),
(5, 'Steven Lee', 45, '404 Walnut Street', 7),
(6, 'Rachel Wilson', 50, '505 Pineapple Street', 8),
(7, 'Daniel Taylor', 55, '606 Orange Street', 9),
(8, 'Olivia Anderson', 60, '707 Peach Street', 10),
(9, 'Sophia Martinez', 28, '808 Lemon Street', 3),
(10, 'William Thomas', 32, '909 Grape Street', 4);
 
INSERT INTO Permission (Per_id, Per_name, Per_address) VALUES
(1, 'Read', '/read'),
(2, 'Write', '/write'),
(3, 'Execute', '/execute');
 
INSERT INTO Roles_Permission (Role_id, Per_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(1, 2),
(2, 1),
(3, 2),
(1, 3),
(2, 3),
(3, 1),
(3, 2);
 
INSERT INTO Ticket_booking (Ticket_id, Ticket_date, Ticket_describe, Employee_id) VALUES
(1, '2024-03-30', 'Flight to New York', 1),
(2, '2024-04-01', 'Train to Chicago', 2),
(3, '2024-04-03', 'Bus to Los Angeles', 3),
(4, '2024-04-05', 'Flight to London', 4),
(5, '2024-04-07', 'Train to Paris', 5),
(6, '2024-04-09', 'Bus to Rome', 6),
(7, '2024-04-11', 'Flight to Tokyo', 7),
(8, '2024-04-13', 'Train to Sydney', 8),
(9, '2024-04-15', 'Bus to Beijing', 9),
(10, '2024-04-17', 'Flight to Moscow', 10);
 
INSERT INTO Airlines_Booking (AB_id, AB_date, AB_describe, Employee_id) VALUES
(1, '2024-04-20', 'Flight to New York', 1),
(2, '2024-04-22', 'Flight to London', 2),
(3, '2024-04-24', 'Flight to Tokyo', 3),
(4, '2024-04-26', 'Flight to Paris', 4),
(5, '2024-04-28', 'Flight to Sydney', 5),
(6, '2024-04-30', 'Flight to Beijing', 6),
(7, '2024-05-02', 'Flight to Rome', 7),
(8, '2024-05-04', 'Flight to Moscow', 8),
(9, '2024-05-06', 'Flight to New Delhi', 9),
(10, '2024-05-08', 'Flight to Dubai', 10);
 
INSERT INTO Airline_Enquiry (AE_id, AE_title, AE_date, AE_type) VALUES
(1, 'Flight Inquiry', '2024-05-10', 'General'),
(2, 'Booking Inquiry', '2024-05-12', 'Specific'),
(3, 'Flight Inquiry', '2024-05-14', 'General'),
(4, 'Booking Inquiry', '2024-05-16', 'Specific'),
(5, 'Flight Inquiry', '2024-05-18', 'General'),
(6, 'Booking Inquiry', '2024-05-20', 'Specific'),
(7, 'Flight Inquiry', '2024-05-22', 'General'),
(8, 'Booking Inquiry', '2024-05-24', 'Specific'),
(9, 'Flight Inquiry', '2024-05-26', 'General'),
(10, 'Booking Inquiry', '2024-05-28', 'Specific');
select * from Users;
select * from Roles;
select * from Login;
select * from Employee;
select * from Permission;
select * from Roles_Permission;
select * from Ticket_booking;
select * from Airlines_booking;
select * from Airline_Enquiry;

SELECT *
FROM Users
INNER JOIN Employee ON Users.User_id = Employee.User_id;

SELECT *
FROM Users
LEFT OUTER JOIN Employee ON Users.User_id = Employee.User_id;

SELECT *
FROM Users
RIGHT OUTER JOIN Employee ON Users.User_id = Employee.User_id;

SELECT *
FROM Users
FULL OUTER JOIN Employee ON Users.User_id = Employee.User_id;


-- 1. Retrieve all users who have both a mobile number and an email address.
SELECT *
FROM Users
WHERE User_mobile IS NOT NULL AND User_email IS NOT NULL;
 
-- 2. Find the roles of employees who are aged 30 or older.
SELECT e.Employee_name, r.Role_name
FROM Employee e
JOIN Employee_User eu ON e.Employee_id = eu.Employee_id
JOIN Roles r ON eu.Role_id = r.Role_id
WHERE e.Employee_age >= 30;
 
-- 3. Display the permissions associated with the role named "Admin".
SELECT rp.Role_id, p.*
FROM Roles_Permission rp
JOIN Roles r ON rp.Role_id = r.Role_id
JOIN Permission p ON rp.Per_id = p.Per_id
WHERE r.Role_name = 'Admin';
 
-- 4. List the employees who have made airline bookings.
SELECT e.Employee_name
FROM Employee e
JOIN Airlines_Booking ab ON e.Employee_id = ab.Employee_id;
 
-- 5. Find the ticket bookings made by employees whose age is less than 30.
SELECT tb.*
FROM Ticket_booking tb
JOIN Employee e ON tb.Employee_id = e.Employee_id
WHERE e.Employee_age < 30;
 
-- 6. Retrieve the titles of airline enquiries made on or after 2024-05-10.
SELECT AE_title
FROM Airline_Enquiry
WHERE AE_date >= '2024-05-10';
 
-- 7. Display the routes with fares exceeding $100.
SELECT *
FROM route_Header
WHERE Fare > 100;
 
-- 8. List the destinations of ticket bookings made on routes with fares less than $50.
SELECT rh.Destination
FROM Ticket_booking tb
JOIN route_Header rh ON tb.route_id = rh.route_id
WHERE rh.Fare < 50;
 
-- 9. Find the employee names and their corresponding roles.
SELECT e.Employee_name, r.Role_name
FROM Employee e
JOIN Employee_User eu ON e.Employee_id = eu.Employee_id
JOIN Roles r ON eu.Role_id = r.Role_id;
 
-- 10. Display the ages of users who have both a mobile number and an email address.
SELECT User_id, User_name, User_mobile, User_email, User_address,        
    CASE WHEN User_age IS NOT NULL THEN User_age ELSE 'Unknown' END AS User_age
FROM Users
WHERE User_mobile IS NOT NULL AND User_email IS NOT NULL;
 
-- 11. Retrieve the descriptions of roles that have permissions associated with them.
SELECT r.Role_name, r.Role_desc
FROM Roles r
JOIN Roles_Permission rp ON r.Role_id = rp.Role_id;
 
-- 12. List the roles of employees who have made ticket bookings.
SELECT e.Employee_name, r.Role_name
FROM Employee e
JOIN Ticket_booking tb ON e.Employee_id = tb.Employee_id
JOIN Roles r ON e.Role_id = r.Role_id;
 
-- 13. Find the users who have made both airline bookings and ticket bookings.
SELECT u.User_id, u.User_name
FROM Users u
JOIN Ticket_booking tb ON u.User_id = tb.User_id
JOIN Airlines_Booking ab ON u.User_id = ab.User_id;
 
-- 14. Display the names of employees who are not associated with any ticket bookings.
SELECT e.Employee_name
FROM Employee e
WHERE e.Employee_id NOT IN (SELECT Employee_id FROM Ticket_booking);
 
-- 15. List the employees who have made ticket bookings and their associated roles.
SELECT e.Employee_name, r.Role_name
FROM Employee e
JOIN Ticket_booking tb ON e.Employee_id = tb.Employee_id
JOIN Roles r ON e.Role_id = r.Role_id;
 
-- 16. Retrieve the origins and destinations of routes with distances exceeding 500 miles.
SELECT origin, destination
FROM route_Header
WHERE distance > 500;
 
-- 17. Display the roles of employees who have made airline enquiries.
SELECT e.Employee_name, r.Role_name
FROM Employee e
JOIN Airline_Enquiry ae ON e.Employee_id = ae.Employee_id
JOIN Roles r ON e.Role_id = r.Role_id;
 
-- 18. Find the email addresses of users associated with employees aged 40 or older.
SELECT u.User_email
FROM Users u
JOIN Employee e ON u.User_id = e.User_id
WHERE e.Employee_age >= 40;
 
-- 19
 
SELECT User_id, User_name
FROM Users
WHERE User_id IN (
   SELECT DISTINCT User_id
   FROM (
       SELECT User_id FROM Ticket_booking
       UNION
       SELECT User_id FROM Airlines_Booking
   ) AS Bookings
);
 
-- 20
 
SELECT Users.User_id, Users.User_name, COUNT(*) AS Ticket_count
FROM Users
JOIN Ticket_booking ON Users.User_id = Ticket_booking.Employee_id
GROUP BY Users.User_id, Users.User_name;










