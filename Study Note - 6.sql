--STUDY NOTE --3

--Excersise 1

--Question 1
USE AdventureWorks2016
SELECT E.NationalIDNumber, DATEDIFF(YEAR, E.BirthDate, GETDATE()) AS Age
FROM HumanResources.Employee AS E;

--Question 2
USE AdventureWorks2016
SELECT E.NationalIDNumber, DATEDIFF(YEAR, E.BirthDate, E.HireDate) AS Age
FROM HumanResources.Employee AS E;

--Question 3
USE AdventureWorks2016
SELECT E.NationalIDNumber, DATEDIFF(YEAR, E.BirthDate, E.HireDate) AS younghire
FROM HumanResources.Employee AS E
ORDER BY younghire ASC;

--Question 4
USE AdventureWorks2016
SELECT E.NationalIDNumber, DATEDIFF(YEAR, E.BirthDate, E.HireDate) AS younghire
FROM HumanResources.Employee AS E
ORDER BY younghire DESC;

--Exercise 2

--Question 1

USE AdventureWorks2016
SELECT DISTINCT(E.JobTitle)
FROM HumanResources.Employee AS E;

--Question 2

USE AdventureWorks2016
SELECT E.JobTitle
FROM HumanResources.Employee AS E
GROUP BY E.JobTitle;


--Question 3

USE AdventureWorks2016
SELECT E.JobTitle
FROM HumanResources.Employee AS E
WHERE E.JobTitle LIKE '%Manager%'
GROUP BY E.JobTitle;

--Question 4

USE AdventureWorks2016
SELECT  E.BirthDate,E.JobTitle
FROM HumanResources.Employee AS E
WHERE E.JobTitle LIKE '%Manager%' AND E.BirthDate > '1975-01-01'
GROUP BY E.JobTitle,E.BirthDate;

--Question 5

USE AdventureWorks2016
SELECT *
FROM HumanResources.JobCandidate 

--Question 6

USE AdventureWorks2016
SELECT JC.ModifiedDate,COUNT(JC.Resume) AS CountofResume
FROM HumanResources.JobCandidate AS JC
GROUP BY JC.ModifiedDate;

--Question 7

USE AdventureWorks2016
SELECT JC.ModifiedDate,COUNT(JC.Resume) AS CountofResume
FROM HumanResources.JobCandidate AS JC
GROUP BY JC.ModifiedDate
HAVING COUNT(JC.Resume) > 1;

--Question 8

USE AdventureWorks2016
SELECT SalesPersonID, SUM(TotalDue) AS TotalSales
FROM SALES.SalesOrderHeader 
GROUP BY SalesPersonID;

--Question 9

USE AdventureWorks2016
SELECT SO.SalesPersonID, SUM(SO.TotalDue) AS TotalSales, 
       AVG(SO.SubTotal) AS AverageSale
FROM SALES.SalesOrderHeader AS SO
GROUP BY SO.SalesPersonID;

--Question 10

USE AdventureWorks2016
SELECT SO.SalesPersonID, MIN(SO.TotalDue) AS MinSales, 
       MAX(SO.SubTotal) AS MaxSale
FROM SALES.SalesOrderHeader AS SO
GROUP BY SO.SalesPersonID;