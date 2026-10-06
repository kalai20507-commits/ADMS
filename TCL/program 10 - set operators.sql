-- CREATE TABLES
CREATE TABLE employee1 (
    id NUMBER,
    name VARCHAR2(30)
);

CREATE TABLE employee2 (
    id NUMBER,
    name VARCHAR2(30)
);

-- INSERT VALUES
INSERT INTO employee1 VALUES (1, 'Deepak');
INSERT INTO employee1 VALUES (2, 'Gokul');
INSERT INTO employee1 VALUES (3, 'Ravi');

INSERT INTO employee2 VALUES (2, 'Gokul');
INSERT INTO employee2 VALUES (3, 'Ravi');
INSERT INTO employee2 VALUES (4, 'Arun');

COMMIT;

-- DISPLAY BOTH TABLES
SELECT * FROM employee1;
SELECT * FROM employee2;

-- 1. UNION
SELECT * FROM employee1
UNION
SELECT * FROM employee2;

-- 2. UNION ALL
SELECT * FROM employee1
UNION ALL
SELECT * FROM employee2;

-- 3. INTERSECT
SELECT * FROM employee1
INTERSECT
SELECT * FROM employee2;

-- 4. MINUS
SELECT * FROM employee1
MINUS
SELECT * FROM employee2;
