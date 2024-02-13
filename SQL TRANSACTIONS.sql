Use AdventureWorks2017
Go


BEGIN TRAN	-- Begin Transaction
UPDATE Person.Person		-- Update FirstName	
SET FirstName='TOM' WHERE BusinessEntityID = 2
SAVE TRAN SaveFirstName		-- Savepoint for First Name

UPDATE Person.Person		-- Update MiddleName	
SET MiddleName = 'Z' WHERE BusinessEntityID = 2
SAVE TRAN SaveMiddleName	-- Savepoint for Middle Name

UPDATE Person.Person		-- Update LastName	
SET LastName = 'Walker' WHERE BusinessEntityID = 2
SAVE TRAN SaveLastName		-- Savepoint for Last Name

ROLLBACK TRAN SaveMiddleName
ROLLBACK
COMMIT

SELECT * FROM Person.Person