SHOW DATABASES;

USE college;

#create table
CREATE TABLE Student (
id INT PRIMARY KEY,
name VARCHAR(50),
age INT,
city VARCHAR(50)
)
SELECT * FROM Student;

#insert data
INSERT INTO Student VALUES
(1,"Sanjay",21,"Vellore"),
(2,"Ragul",18,"Chennai"),
(3,"Vaishu",20,"Tiruppur"),
(4,"Sandeep",21,"Chinnai");

#select
SELECT * FROM Student;

#FROM
SELECT name, city FROM student;

#where
SELECT * FROM Student WHERE city="Vellore";

#order by
SELECT * FROM Student ORDER BY age DESC;

#group by
SELECT city, COUNT(*) AS total FROM Student GROUP BY city;

#Having
SELECT city, COUNT(*) As total FROM student GROUP BY city HAVING COUNT(*) >= 1;

#Insert
INSERT INTO Student VALUES
(5,"Arun",23,"Madurai");
SELECT * FROM Student;

#Update
UPDATE Student SET city="Bangalore" WHERE id=2;
SELECT * FROM Student;

#Delect
DELETE FROM Student WHERE id=2;
SELECT * FROM Student;

CREATE TABLE Course (
course_id INT PRIMARY KEY,
id INT,
course_name VARCHAR(50)
);

INSERT INTO Course VALUES
(101,1,"Java"),
(102,2,"Python"),
(103,3,"SQL");

#inner join
SELECT Student.name,
Course.course_name
FROM Student INNER JOIN Course ON Student.id = Course.id;


