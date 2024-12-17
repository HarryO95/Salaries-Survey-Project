-- Data Cleaning

SELECT *
FROM salary_survey;

CREATE TABLE salary_survey1
LIKE salary_survey;

SELECT *
FROM salary_survey1;

INSERT salary_survey1
SELECT *
FROM salary_survey;

SELECT *
FROM salary_survey1;

-- Standardize Data

SELECT *
FROM salary_survey1
WHERE Country LIKE 'US%';

UPDATE salary_survey1
SET Country = 'USA'
WHERE Country LIKE 'US%';

SELECT *
FROM salary_survey1
WHERE Country LIKE 'United Stat%';

UPDATE salary_survey1
SET Country = 'USA'
WHERE Country LIKE 'United Stat%';

SELECT *
FROM salary_survey1
WHERE Country LIKE 'U.S%';

UPDATE salary_survey1
SET Country = 'USA'
WHERE Country LIKE 'U.S%';

SELECT *
FROM salary_survey1
WHERE Country LIKE 'United King%';

UPDATE salary_survey1
SET Country = 'UK'
WHERE Country LIKE 'United King%';

SELECT *
FROM salary_survey1;

SELECT DISTINCT Industry
FROM salary_survey1;

SELECT *
FROM salary_survey1
WHERE Industry LIKE '%"';

UPDATE salary_survey1
SET Industry = 'Government Relations'
WHERE Industry LIKE '%"';

SELECT *
FROM salary_survey1;

SELECT DISTINCT Work_City
FROM salary_survey1
ORDER BY 1;

SELECT *
FROM salary_survey1
WHERE Work_City LIKE 'buf%';

UPDATE salary_survey1
SET Work_City = 'Buffalo'
WHERE Work_City LIKE 'buf%';

SELECT DISTINCT Work_City
FROM salary_survey1
ORDER BY 1;

SELECT *
FROM salary_survey1
WHERE Work_City LIKE '%sseldorf';

UPDATE salary_survey1
SET Work_City = 'Dusseldorf'
WHERE Work_City LIKE '%sseldorf';

SELECT *
FROM salary_survey1
WHERE Work_City LIKE 'hels%';

UPDATE salary_survey1
SET Work_City = 'Helsinki'
WHERE Work_City LIKE 'hels%';

SELECT *
FROM salary_survey1
WHERE Work_City LIKE '%work remotely';

UPDATE salary_survey1
SET Work_City = 'Remotely'
WHERE Work_City LIKE '%work remotely';

SELECT *
FROM salary_survey1
WHERE USA_State LIKE '%%'
AND Work_City = 'Halifax';

UPDATE salary_survey1
SET USA_State = ' '
WHERE USA_State LIKE '%%'
AND Work_City = 'Halifax';

SELECT *
FROM salary_survey1;

SELECT *
FROM salary_survey1
WHERE Work_City LIKE 'NYC (%';

UPDATE salary_survey1
SET Work_City = 'Remotely'
WHERE Work_City LIKE 'NYC (%';

SELECT *
FROM salary_survey1
WHERE Work_City LIKE 'ROCHESTER';

UPDATE salary_survey1
SET Work_City = 'Rochester'
WHERE Work_City LIKE 'ROCHESTER';

SELECT *
FROM salary_survey1
WHERE Work_City LIKE 'work from hom%';

UPDATE salary_survey1
SET Work_City = 'Remotely'
WHERE Work_City LIKE 'work from hom%';

SELECT *
FROM salary_survey1;

SELECT DISTINCT Country
FROM salary_survey1
ORDER BY 1;

SELECT *
FROM salary_survey1
WHERE Country LIKE 'ISA';

UPDATE salary_survey1
SET Country = 'USA'
WHERE Country LIKE 'ISA';

SELECT *
FROM salary_survey1
WHERE Country LIKE 'finland';

UPDATE salary_survey1
SET Country = 'Finland'
WHERE Country LIKE 'finland';

SELECT *
FROM salary_survey1
WHERE Country LIKE 'The Ne%';

UPDATE salary_survey1
SET Country = 'Netherlands'
WHERE Country LIKE 'The Ne%';

SELECT *
FROM salary_survey1
WHERE Country LIKE 'Ame%';

UPDATE salary_survey1
SET Country = 'USA'
WHERE Country LIKE 'Ame%';

SELECT *
FROM salary_survey1;

SELECT DISTINCT USA_State
FROM salary_survey1
ORDER BY 1;

SELECT *
FROM salary_survey1
WHERE Salary= '';

UPDATE salary_survey1
SET Salary = NULL
WHERE Salary = '';

SELECT *
FROM salary_survey1;

ALTER TABLE salary_survey
DROP COLUMN USA_State;

SELECT DISTINCT Job_Title
FROM salary_survey1
ORDER BY 1;

SELECT *
FROM salary_survey1
WHERE Job_Title LIKE 'Senior research assistant';

UPDATE salary_survey1
SET Job_Title = 'Senior Research Assistant'
WHERE Job_Title LIKE 'Senior research assistant)';

SELECT gender, AVG(salary), MAX(salary), MIN(salary), COUNT(salary)
FROM salary_survey1
GROUP BY gender;

SELECT *
FROM salary_survey1;

SELECT DISTINCT Race
FROM salary_survey1
ORDER BY 1;

SELECT *
FROM salary_survey1
WHERE Race LIKE 'Man';

UPDATE salary_survey1
SET Race = 'White'
WHERE Race LIKE 'Man';

