-- CREATE TABLE

CREATE TABLE department (
    dept_id NUMBER,
    dept_name VARCHAR2(30)
);

CREATE TABLE employee (
    emp_id NUMBER,
    emp_name VARCHAR2(30),
    email VARCHAR2(50),
    age NUMBER,
    dept_id NUMBER
);

-- INSERT VALUES

INSERT INTO department VALUES (201, 'IT');
INSERT INTO department VALUES (202, 'HR');

INSERT INTO employee VALUES (1, 'Arun', 'arun@gmail.com', 25, 201);
INSERT INTO employee VALUES (2, 'Kavin', 'kavin@gmail.com', 28, 202);

COMMIT;

-- PRIMARY KEY

ALTER TABLE employee
ADD CONSTRAINT pk_employee
PRIMARY KEY (emp_id);

-- UNIQUE

ALTER TABLE employee
ADD CONSTRAINT uq_employee_email
UNIQUE (email);

-- FOREIGN KEY

ALTER TABLE employee
ADD CONSTRAINT fk_employee_dept
FOREIGN KEY (dept_id)
REFERENCES department(dept_id);

-- CHECK

ALTER TABLE employee
ADD CONSTRAINT chk_employee_age
CHECK (age >= 18);

-- SELECT

SELECT * FROM employee;
