--STUDY NOTE - 3
--Exercise 1

--Question 1

USE AdventureWorks2016
SELECT PC.Name
FROM Person.CountryRegion AS PC;

--Question 2

USE AdventureWorks2016
SELECT PC.Name
FROM Person.CountryRegion AS PC
WHERE PC.Name LIKE 'B%';

--Question 3

USE AdventureWorks2016
SELECT PC.Name
FROM Person.CountryRegion AS PC
WHERE PC.Name LIKE 'AUS%';

--Question 4

USE AdventureWorks2016
SELECT PC.CountryRegionCode
FROM Person.CountryRegion AS PC
WHERE PC.CountryRegionCode IN ('CE','TR')

--Question 5

USE AdventureWorks2016
SELECT PC.CountryRegionCode
FROM Person.CountryRegion AS PC
WHERE PC.CountryRegionCode IN ('AG', 'BB', 'HT', 'LC', 'MQ', 'PR', 'TC')

--Exercise 2

USE Adventureworks2016	
SELECT P.FirstName
FROM Person.Person AS P
WHERE P.FirstName LIKE 'Sm%_%th'

--Exercise 3

USE AdventureWorks2016
SELECT DISTINCT HE.JobTitle
FROM HumanResources.Employee AS HE