--STUDY NOTE 5

--Exercise 1

--Question 1

USE AdventureWorks2016
SELECT MIN(P.Weight) AS MinWeight,AVG(P.Weight) AS AverageWeight
FROM Production.Product AS P;


--Question 2

USE AdventureWorks2016
SELECT COUNT( P.ProductId) AS NumberOfProduct
FROM Production.Product AS P;

--Exercise 2

--Question 1

SELECT P.ProductID,P.Name, P.StandardCost, P.ListPrice,
       P.ListPrice - P.StandardCost AS GrossProfit
FROM Production.Product AS P;

--Question 2

SELECT P.ProductID,P.Name, P.StandardCost, P.ListPrice, P.DaysToManufacture,
       P.ListPrice - P.StandardCost AS GrossProfit
FROM Production.Product AS P
WHERE P.DaysToManufacture =1;

--Question 3

USE AdventureWorks2016
SELECT PH.BusinessEntityID,SUM(ABS(DATEDIFF(HOUR, SH.StartTime,SH.EndTime))) AS HOUR
FROM HumanResources.EmployeePayHistory AS PH
INNER JOIN HumanResources.EmployeeDepartmentHistory AS DH
ON PH.BusinessEntityID = DH.BusinessEntityID
INNER JOIN HumanResources.Shift AS SH
ON SH.ShiftID = DH.ShiftID
GROUP BY PH.BusinessEntityID
--Incomplete

--Question 4

USE AdventureWorks2016
SELECT CONCAT( P.FirstName,' ', P.MiddleName,' ', P.LastName) AS Fullname
FROM Person.Person AS P;

--Question 5

USE AdventureWorks2016
SELECT SD.ProductID,SD.OrderQty,SD.UnitPrice, SD.UnitPrice * SD.OrderQty AS Totalcost
FROM sales.SalesOrderDetail AS SD

USE AdventureWorks2016
SELECT SD.ProductID,SD.OrderQty,SD.UnitPrice, (SD.UnitPrice - SD.UnitPriceDiscount) * SD.OrderQty AS Totalcost
FROM sales.SalesOrderDetail AS SD

USE AdventureWorks2016
SELECT SD.ProductID,SD.OrderQty,SD.UnitPrice, SD.LineTotal,
(SD.UnitPrice - SD.UnitPriceDiscount) * SD.OrderQty AS Totalcost
FROM sales.SalesOrderDetail AS SD
WHERE SD.LineTotal = (SD.UnitPrice - SD.UnitPriceDiscount) * SD.OrderQty