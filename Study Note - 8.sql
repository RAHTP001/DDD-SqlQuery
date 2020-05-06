--STUDY NOTE 8

--Exercises

--Question 1

USE AdventureWorks2016
SELECT A.City, A.AddressLine2, S.Name AS 'Province name'
FROM Person.Address AS A
INNER JOIN
Person.StateProvince AS S
ON S.StateProvinceID = A.StateProvinceID;

--Question 2

USE AdventureWorks2016
SELECT S.Name AS 'Province name', A.City, A.AddressLine2
FROM Person.Address AS A
FULL OUTER JOIN
Person.StateProvince AS S
ON S.StateProvinceID = A.StateProvinceID;


--Question 3

USE AdventureWorks2016
SELECT PS.Name AS 'Proviance Name' , PA.AddressLine1, PA.City,
       PDT.Name AS Addresstype
FROM Person.StateProvince AS PS
LEFT JOIN Person.Address AS PA
ON PS.StateProvinceID = PA.StateProvinceID
LEFT JOIN Person.BusinessEntityAddress AS PB
ON PA.AddressID = PB.AddressID
LEFT JOIN Person.AddressType AS PDT
ON PDT.AddressTypeID = PB.AddressTypeID
WHERE PDT.Name = 'Home'

--Question 4

USE AdventureWorks2016
SELECT PS.Name AS 'Proviance Name' , PA.AddressLine1, PA.City,
       PDT.Name AS Addresstype
FROM Person.StateProvince AS PS
LEFT JOIN Person.Address AS PA
ON PS.StateProvinceID = PA.StateProvinceID
LEFT JOIN Person.BusinessEntityAddress AS PB
ON PA.AddressID = PB.AddressID
LEFT JOIN Person.AddressType AS PDT
ON PDT.AddressTypeID = PB.AddressTypeID
WHERE PDT.Name is null


