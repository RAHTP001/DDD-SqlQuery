--STUDY NOTE 7

--Exercises

--Question 1
USE AdventureWorks2016
SELECT P.ProductID,R.Comments
FROM Production.Product AS P
LEFT JOIN 
Production.ProductReview AS R
ON P.ProductID = R.ProductID

--Question 2

USE AdventureWorks2016
SELECT W.ProductID,P.Name,W.OrderQty
FROM Production.Product AS P
LEFT JOIN 
Production.WorkOrder AS W
ON W.ProductID = P.ProductID
WHERE W.ProductID IS NOT null;

--Question 3

USE AdventureWorks2016
SELECT W.ProductID, P.Name, W.OrderQty
FROM Production.Product AS P
LEFT JOIN 
Production.WorkOrder AS W
ON W.ProductID = P.ProductID
WHERE W.ProductID BETWEEN 500 AND 600
ORDER BY W.ProductID ASC;

--Question 4

USE AdventureWorks2016
SELECT P.ProductID, P.Name, W.ScrappedQty, R.Name
FROM Production.WorkOrder AS W
LEFT JOIN 
Production.Product AS P
ON W.ProductID = P.ProductID
LEFT JOIN 
Production.ScrapReason AS R
ON R.ScrapReasonID = W.ScrapReasonID
ORDER BY W.ProductID ASC;