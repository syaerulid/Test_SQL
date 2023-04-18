SELECT
	AVG(Income) as Female_Income
FROM PERUSAHAAN
WHERE GENDER = 'Female';

SELECT
	AVG(Income) as Male_Income
FROM PERUSAHAAN
WHERE GENDER = 'Male';