/*
Find all Lyft drivers who earn either equal to or less than 30k USD or equal to or more than 70k USD.
Output all details related to retrieved records.
*/

select * from lyft_drivers;
-- Less than or Equal to 30K Yearly Salary
SELECT * 
FROM lyft_drivers
WHERE yearly_salary <= 30000;

-- Greater than or Equal to 70K Yearly Salary
SELECT *
FROM lyft_drivers
WHERE yearly_salary >= 70000;

-- Combination from two
SELECT *
FROM lyft_drivers
WHERE yearly_salary >= 70000
OR yearly_salary <= 30000;
