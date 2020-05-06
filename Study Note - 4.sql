--STUDY NOTE 4

--Exercise 1

--Question 1

USE AdventureWorks2016
SELECT P.Title,P.FirstName,P.LastName
FROM Person.Person AS P
WHERE P.Title ='Ms.';

--Question 2

USE AdventureWorks2016
SELECT P.Title,P.FirstName,P.LastName
FROM Person.Person AS P
WHERE P.Title  != 'Ms.';

--Question 3


USE AdventureWorks2016
SELECT P.Title,P.FirstName,P.LastName
FROM Person.Person AS P
WHERE P.Title = 'Ms' OR P.Title = 'Ms.'

--Exercise 2

--Question 1

USE AdventureWorks2016
SELECT P.Title,P.FirstName,P.LastName
FROM Person.Person AS P
WHERE P.LastName LIKE 'S%'


--Question 2

USE AdventureWorks2016
SELECT P.Title,P.FirstName,P.LastName
FROM Person.Person AS P
WHERE P.LastName LIKE 'S[a-z]%'

--Question 3
USE AdventureWorks2016
SELECT DISTINCT P.Title, P.FirstName,P.LastName
FROM Person.Person AS P
WHERE P.FirstName LIKE '%B' OR P.FirstName LIKE '%b%';


--Exercise 3

--Question 1

USE AdventureWorks2016
SELECT P.FirstName,P.MiddleName,P.LastName
FROM Person.Person AS P;

--Question 2

USE AdventureWorks2016
SELECT P.LastName,P.FirstName,P.MiddleName
FROM Person.Person AS P
ORDER BY P.LastName,P.FirstName,P.MiddleName ASC

--Question 3

USE AdventureWorks2016
SELECT P.LastName,P.FirstName,P.MiddleName
FROM Person.Person AS P
ORDER BY P.LastName,P.FirstName,P.MiddleName DESC

