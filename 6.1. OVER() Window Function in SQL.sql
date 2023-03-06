/*
Average Salaries

Compare each employee's salary with the average salary of the corresponding department.
Output the department, first name, and salary of employees along with the average salary of that department.
Order your output by Department and Salary Ascending

*/


-- OVER () in SQL
-- OVER ([PARTITION BY columns] [ORDER BY columns])
select * from employee;

-- AVG SALARY for each department as INNER QUERY
SELECT 
    AVG(salary) 
FROM employee
GROUP BY department;

-- RESULT
SELECT
    department,
    first_name,
    salary,
    AVG(salary) OVER(PARTITION BY department) as AVG
FROM employee
GROUP BY department,first_name,salary, id
ORDER by department,salary;
