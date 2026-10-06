-- =========================================
-- NESTED SUBQUERY PROGRAM - STUDENTS
-- =========================================

-- 1. CREATE TABLE

CREATE TABLE student_subquery (
    student_id NUMBER,
    student_name VARCHAR2(30),
    marks NUMBER,
    class_id NUMBER
);


-- 2. INSERT VALUES

INSERT INTO student_subquery
VALUES (1, 'Meena', 75, 101);

INSERT INTO student_subquery
VALUES (2, 'Rahul', 85, 102);

INSERT INTO student_subquery
VALUES (3, 'Suresh', 95, 101);

INSERT INTO student_subquery
VALUES (4, 'Kumar', 65, 103);

INSERT INTO student_subquery
VALUES (5, 'Anu', 90, 102);

COMMIT;


-- 3. DISPLAY ALL RECORDS

SELECT * FROM student_subquery;


-- =========================================
-- 1. NESTED SUBQUERY
-- Students whose marks are greater
-- than average marks
-- =========================================

SELECT student_id, student_name, marks
FROM student_subquery
WHERE marks > (
    SELECT AVG(marks)
    FROM student_subquery
);


-- =========================================
-- 2. NESTED SUBQUERY
-- Students who belong to the same
-- class as Meena
-- =========================================

SELECT student_id, student_name, class_id
FROM student_subquery
WHERE class_id = (
    SELECT class_id
    FROM student_subquery
    WHERE student_name = 'Meena'
);


-- =========================================
-- 3. NESTED SUBQUERY
-- Student with the highest marks
-- =========================================

SELECT student_id, student_name, marks
FROM student_subquery
WHERE marks = (
    SELECT MAX(marks)
    FROM student_subquery
);


-- =========================================
-- 4. NESTED SUBQUERY
-- Student with the lowest marks
-- =========================================

SELECT student_id, student_name, marks
FROM student_subquery
WHERE marks = (
    SELECT MIN(marks)
    FROM student_subquery
);
