-- USING LIKE for Finding Salary and Name

select * from sf_public_salaries;

-- BASEPAY FOR ALL POLICE
SELECT basepay
FROM sf_public_salaries
WHERE jobtitle LIKE '%CAPTAIN%'
OR jobtitle LIKE '%POLICE%';

-- BASEPAY FOR ALL POLICE and their name
SELECT employeename, basepay
FROM sf_public_salaries
WHERE jobtitle LIKE '%CAPTAIN%'
OR jobtitle LIKE '%POLICE%';

