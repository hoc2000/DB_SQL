SELECT *INTO HumanResources.Employee_NoIndex
FROM HumanResources.Employee

SELECT *INTO HumanResources.Employee_Index
FROM HumanResources.Employee
GO
CREATE INDEX Idx_Employee_Index_CustomerID
ON HumanResources.Employee_Index(BusinessEntityID)

--#1
SELECT BusinessEntityID, OrganizationLevel
FROM HumanResources.Employee_NoIndex
WHERE BusinessEntityID = 100

--#2
SELECT BusinessEntityID, OrganizationLevel
FROM HumanResources.Employee_Index
WHERE BusinessEntityID = 100