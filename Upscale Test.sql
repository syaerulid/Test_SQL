USE UPSCALE;

SELECT *
FROM TEST1;
-- 1.RATA-RATA USIA
SELECT 
	ROUND(AVG (Age)) as Rata_Rata_Usia
FROM TEST1; 
-- 2. MEDIAN
-- 2.1 SORTED
-- COUNT
SELECT
    *
FROM TEST1
ORDER BY Income;
-- MEDIAN
SELECT
	COUNT(ID) / 2 as Median
FROM TEST1
ORDER BY Income;
-- MEDIAN IS
SELECT
Income as Median
FROM TEST1
WHERE Income = 75000
-- 3. Persentase Laki-Laki
SELECT
	COUNT(*)
FROM TEST1
WHERE Gender = 'Male';
-- Persentase
SELECT
	COUNT(*) / 10 * 100 as Percentage_Male
FROM TEST1
WHERE Gender = 'Male';
-- 4. Percentage Master
SELECT
	COUNT(*)
FROM TEST1
WHERE Education = 'Master';
-- 4.1
SELECT
	COUNT(*) / 10 * 100 as Percentage_Master
FROM TEST1
WHERE Education = 'Master';
-- 5. Rata-Rata usia orang PhD
SELECT
	ROUND(AVG(Age)) as Rata_PhD
FROM TEST1
WHERE Education = 'PhD';


