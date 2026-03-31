# Perform the Following Queries\

#  1. Display empno, ename, dept name instead of deptno
SELECT
    e.empno,
    e.ename,
    CASE e.deptno
        WHEN 10 THEN 'RESEARCH'
        WHEN 20 THEN 'ACCOUNTING'
        WHEN 30 THEN 'SALES'
        WHEN 40 THEN 'OPERATIONS'
    END AS department
FROM employee e;

#  2. Display your age in days
SELECT DATEDIFF(CURDATE(), '2006-06-13') AS age_in_days;

#  3. Display your age in months
SELECT TIMESTAMPDIFF(MONTH, '2006-06-13', CURDATE()) AS age_in_months;

#  4. Display current date as 15th August Friday Nineteen Ninety-Seven
SELECT DATE_FORMAT(CURDATE(), '%d %M %W %Y') AS formatted_date;

#  5. Display formatted output for each employee as Scott joined company on Wednesday 13th August Nineteen Ninety
SELECT CONCAT(
        ename,' has joined the company on ',
        DATE_FORMAT(hiredate,'%W %D %M %Y')
    ) AS joining_info FROM employee
WHERE ename = 'SCOTT';

#  6. Find nearest Saturday after current date
SELECT DATE_ADD(CURDATE(), INTERVAL (7 - DAYOFWEEK(CURDATE())) % 7 DAY) AS nearest_saturday;

#  7. Display current time
SELECT CURTIME() AS current_time;

#  8. Display the date three months before current date
SELECT DATE_SUB(CURDATE(), INTERVAL 3 MONTH) AS date_three_months_ago;

#  9. Employees who joined in the month of December
SELECT ename, hiredate FROM employee
WHERE MONTH(hiredate) = 12;

#  10. Employees whose first 2 characters of hiredate = last 2 characters of salary
SELECT ename, hiredate, sal FROM employee
WHERE LEFT(hiredate, 2) = RIGHT(sal, 2);

#  11. Employees whose 10% salary = year of joining
SELECT ename, sal, YEAR(hiredate) AS year_of_joining FROM employee
WHERE sal * 0.1 = YEAR(hiredate);

#  12. Employees who joined before 15th of the month
SELECT ename, hiredate FROM employee
WHERE DAY(hiredate) < 15;

#  13. Employees whose joining date is available in deptno
SELECT ename, hiredate, deptno FROM employee
WHERE deptno IN (SELECT DAY(hiredate) FROM employee);

