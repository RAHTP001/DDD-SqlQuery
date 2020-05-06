--STUDY NOTE 2
--Question 1

USE AdventureWorks2016

SELECT *
FROM HumanResources.Department;

--Question 2
USE AdventureWorks2016
SELECT HE.JobTitle, HE.SickLeaveHours
FROM HumanResources.Employee AS HE
ORDER BY HE.JOBTitle;

--Question 3
USE AdventureWorks2016
SELECT HE.JobTitle, HE.SickLeaveHours
FROM HumanResources.Employee AS HE
WHERE HE.JobTitle ='Chief Financial Officer';

--Question 4
USE AdventureWorks2016
SELECT HE.JobTitle, HE.SickLeaveHours
FROM HumanResources.Employee AS HE
WHERE HE.SickLeaveHours = 20;

--Question 5
USE AdventureWorks2016
SELECT HE.JobTitle, HE.SickLeaveHours
FROM HumanResources.Employee AS HE
WHERE HE.SickLeaveHours > 67;
