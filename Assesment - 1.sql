--Question 1

USE AdventureWorks2016
SELECT *
FROM Production.Product
ORDER BY Production.Product.Name ASC;

--Question 2

USE AdventureWorks2016
SELECT P.Name,P.ProductNumber,P.ListPrice AS Price
FROM Production.Product AS P
ORDER BY P.Name ASC;

--Question 3

USE AdventureWorks2016
SELECT P.Name,P.ProductNumber,P.ProductLine,P.DaysToManufacture
FROM Production.Product AS P
WHERE P.ProductLine = 'R' AND P.DaysToManufacture < 4
ORDER BY P.Name ASC;

--Question 4

USE AdventureWorks2016
SELECT DISTINCT E.JobTitle
FROM HumanResources.Employee AS E;

--Question 5

USE AdventureWorks2016
SELECT SO.SalesOrderID, COUNT(SO.UnitPrice) AS Count
FROM Sales.SalesOrderDetail AS SO
GROUP BY SO.SalesOrderID
ORDER BY Count ASC;

--Question 6

USE AdventureWorks2016
SELECT SO.ProductID, SO.SpecialOfferID, SUM(SO.UnitPrice) AS UnitPrice, 
       AVG(SO.UnitPrice) AS AveragePrice
FROM Sales.SalesOrderDetail AS SO
GROUP BY SO.ProductID, SO.SpecialOfferID
ORDER BY UnitPrice ASC;

--Question 7

USE AdventureWorks2016
SELECT SO.ProductID, SO.SpecialOfferID, SUM(SO.UnitPrice) AS UnitPrice, 
       AVG(SO.UnitPrice) AS AveragePrice
FROM Sales.SalesOrderDetail AS SO
WHERE UnitPrice > 1000
GROUP BY SO.ProductID, SO.SpecialOfferID
ORDER BY UnitPrice ASC;

--Question 8

USE AdventureWorks2016
SELECT P.Name, P.ProductModelID
FROM Production.Product AS P
WHERE ProductModelID IN
( SELECT ProductModelID
  FROM Production.ProductModel AS PP
  WHERE P.ProductModelID = PP.ProductModelID
  AND PP.Name LIKE 'long-sleeve logo jersey%')

--Question 9

USE AdventureWorks2016
SELECT P.FirstName,P.LastName,SP.Bonus
FROM Sales.SalesPerson AS SP
JOIN Person.Person AS P
ON SP.BusinessEntityID = P.BusinessEntityID
JOIN HumanResources.Employee AS E
ON E.BusinessEntityID = P.BusinessEntityID
WHERE SP.Bonus > 5000;

--Question 10

USE AdventureWorks2016
SELECT P.ProductModelID,P.Name
FROM Production.Product AS P 
GROUP BY P.ProductModelID,P.Name
HAVING MAX(P.ListPrice) > (SELECT 2 * AVG(p2.ListPrice)
                              FROM Production.Product AS p2
							  WHERE P.ProductModelID = p2.ProductModelID)


--Question 11
USE AdventureWorks2016
SELECT DISTINCT pp.LastName, pp.FirstName 
FROM Person.Person pp JOIN HumanResources.Employee e
ON e.BusinessEntityID = pp.BusinessEntityID WHERE pp.BusinessEntityID IN 
(SELECT SalesPersonID 
FROM Sales.SalesOrderHeader
WHERE SalesOrderID IN 
(SELECT SalesOrderID 
FROM Sales.SalesOrderDetail
WHERE ProductID IN 
(SELECT ProductID 
FROM Production.Product p 
WHERE ProductNumber = 'BK-M68B-42')));
