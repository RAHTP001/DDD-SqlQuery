--STUDY NOTE -- 9

--Exercises

--Question 1

USE AdventureWorks2016
SELECT ProductID, StartDate 
FROM Production.WorkOrder
UNION ALL
SELECT Productid, ActualStartDate 
fROM Production.WorkOrderRouting;

--Question 2

USE AdventureWorks2016
SELECT PW.ProductID, StartDate , P.Name
FROM Production.WorkOrder AS PW
INNER JOIN Production.Product AS P
ON 
PW.ProductID =P.ProductID
UNION
SELECT WR.Productid, WR.ActualStartDate, P.Name
FROM Production.WorkOrderRouting AS WR
INNER JOIN Production.Product AS P
ON WR.ProductID =P.ProductID;

--Question 3

SELECT PL.LocationID AS ID, PL.Name AS Name
FROM Production.Location AS PL
UNION ALL
SELECT PP.ProductID,PP.Name
FROM Production.Product AS PP;

--Question 4

SELECT PI.ProductID,PI.LocationID,PI.Shelf, PI.Bin, PI.Quantity, P.Name
FROM Production.ProductInventory AS PI
INNER JOIN Production.Product AS P
ON 
P.ProductID = PI.ProductID;

