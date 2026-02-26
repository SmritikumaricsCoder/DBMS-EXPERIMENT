# Perform following Queries 

#  1.Create Employee_master table with data using Employee table
CREATE TABLE employee_master AS
SELECT * FROM employee;

#  2.Delete all records from Employee_master whose DeptNo is 10
DELETE FROM employee_master
WHERE deptno = 10;

#  3.Update salary by 10% for DeptNo 20
UPDATE employee_master
SET sal = sal + (sal * 0.10)
WHERE deptno = 20;

#  4.Alter SAL with size 10,2 in Employee_master
ALTER TABLE employee_master
MODIFY sal DECIMAL(10,2);

#  5. Drop Employee_master table
DROP TABLE employee_master;

# Following are the Queries to display table
SELECT * FROM employee;
SELECT * FROM department;
SELECT * FROM employee_master;