CREATE TABLE employee (
    eid NUMBER,
    ename VARCHAR2(30),
    salary NUMBER
);

INSERT INTO employee VALUES (201, 'Arun', 35000);
INSERT INTO employee VALUES (202, 'Kavin', 42000);

DELETE FROM employee
WHERE eid = 202;

ROLLBACK;

SELECT * FROM employee;
