Question 1:
SELECT *FROM facilities;

Question 2:
SELECT name, membercost FROM facilities;

Question 3:
SELECT * FROM facilities WHERE membercost > 0;

Question 4:
SELECT facid, name, membercost, monthlymaintenance FROM facilities WHERE membercost > 0 AND membercost < monthlymaintenance/50;

Question 5:
SELECT * FROM facilities WHERE name LIKE '%Tennis%';

Question 6:
SELECT * FROM facilities WHERE facid IN (1,5);

Question 7:
SELECT * FROM members WHERE joindate >= '2012-09-01';

Question 8:
SELECT DISTINCT surname FROM members ORDER BY surname ASC LIMIT 10;

Question 9:
SELECT max(joindate) FROM members;

Question 10:
SELECT COUNT(*) FROM facilities WHERE guestcost >= 10;

Question 11:
select facid, sum(slots) as "Total Slots" from bookings where starttime >= '2012-09-01' and starttime < '2012-10-01' group by facid order by sum(slots);

Question 12:
SELECT facid, SUM(slots) AS Total_Number_of_Slots FROM bookings GROUP BY facid HAVING SUM(slots) > 1000 ORDER BY facid;

Question 13:
SELECT starttime, name FROM bookings INNER JOIN facilities ON facilities.facid = bookings.facid WHERE name LIKE '%Tennis Court%' AND starttime BETWEEN '2012-09-21 00:00:00' AND '2012-09-21 23:59:59' ORDER BY starttime;

QUESTION 14:
SELECT starttime FROM bookings INNER JOIN members ON members.memid = bookings.memid WHERE surname LIKE '%Farrell%' AND firstname LIKE '%David%' ORDER BY starttime;


SQL DATABASE

----- Creating database named students.

CREATE DATABASE STUDENTS;


----- Creating students table and having columns for student_id, first_name,last_name, homeroom_number, phone,email, and graduation year.

CREATE TABLE students(
student_id serial PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
homeroom_number integer,
phone VARCHAR(25) NOT NULL UNIQUE,
email VARCHAR(50) UNIQUE,
grad_year integer
);

----- Creating teachers table and having columns for teacher_id, first_name, last_name, homeroom_number, department, email, and phone.

CREATE TABLE teachers(
teacher_id serial PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
homeroom_number integer,
department VARCHAR(50),
phone VARCHAR(25) UNIQUE,
email VARCHAR(50) UNIQUE
);

-----Inserting a student named Mark Watney (student_id=1) who has a phone number of 777-555-1234 and doesn't have an email. He graduates in 2035 and has 5 as a homeroom number.


INSERT INTO students (student_id, first_name, last_name, homeroom_number, phone, grad_year)
VALUES (1, 'Mark', 'Watney', 5, '777-555-1234', 2035);


-----Inserting a teacher names Jonas Salk (teacher_id = 1) who as a homeroom number of 5 and is from the Biology department. His contact info is: jsalk@school.org and a phone number of 777-555-4321.


INSERT INTO teachers (teacher_id, first_name, last_name, homeroom_number, department, phone,  email)
VALUES (1, 'Jonas', 'Salk', 5, 'Biology',  '777-555-4321', 'jsalk@school.org');









