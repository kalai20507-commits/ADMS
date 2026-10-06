-- CREATE TABLES

CREATE TABLE student (
    student_id NUMBER,
    student_name VARCHAR2(30),
    class_id NUMBER
);

CREATE TABLE class (
    class_id NUMBER,
    class_name VARCHAR2(30)
);

-- INSERT VALUES

INSERT INTO student VALUES (1, 'Meena', 101);
INSERT INTO student VALUES (2, 'Rahul', 102);
INSERT INTO student VALUES (3, 'Suresh', 103);
INSERT INTO student VALUES (4, 'Divya', 104);

INSERT INTO class VALUES (101, 'Computer Science');
INSERT INTO class VALUES (102, 'Commerce');
INSERT INTO class VALUES (103, 'Mathematics');
INSERT INTO class VALUES (105, 'Physics');

COMMIT;

-- DISPLAY TABLES

SELECT * FROM student;

SELECT * FROM class;


-- 1. INNER JOIN

SELECT student.student_id,
       student.student_name,
       class.class_name
FROM student
INNER JOIN class
ON student.class_id = class.class_id;


-- 2. LEFT JOIN

SELECT student.student_id,
       student.student_name,
       class.class_name
FROM student
LEFT JOIN class
ON student.class_id = class.class_id;


-- 3. RIGHT JOIN

SELECT student.student_id,
       student.student_name,
       class.class_name
FROM student
RIGHT JOIN class
ON student.class_id = class.class_id;


-- 4. FULL OUTER JOIN

SELECT student.student_id,
       student.student_name,
       class.class_name
FROM student
FULL OUTER JOIN class
ON student.class_id = class.class_id;
