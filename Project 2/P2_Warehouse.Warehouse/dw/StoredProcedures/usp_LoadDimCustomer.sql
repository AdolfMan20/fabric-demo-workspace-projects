CREATE   PROC [dw].[usp_LoadDimCustomer]
AS
BEGIN
/*
=========================================
STEP 1
Insert New Customers
=========================================
*/
    SET NOCOUNT ON;

    INSERT INTO dw.DimCustomer
    (
        CustomerID,
        PersonID,
        FirstName,
        LastName,
        EmailAddress,
        PhoneNumber,
        CreatedDate,
        ModifiedDate,
        IsDeleted,
        DeletedDate
    )

    SELECT
        s.CustomerID,
        s.PersonID,
        s.FirstName,
        s.LastName,
        s.EmailAddress,
        s.PhoneNumber,
        GETDATE(),
        GETDATE(),
        0,
        NULL

    FROM stg.Customer s

    WHERE NOT EXISTS
    (
        SELECT 1
        FROM dw.DimCustomer d
        WHERE d.CustomerID = s.CustomerID
    )
/*
=========================================
STEP 2
Update Existing Customers
=========================================
*/
    UPDATE d

SET
    d.PersonID = s.PersonID,
    d.FirstName = s.FirstName,
    d.LastName = s.LastName,
    d.EmailAddress = s.EmailAddress,
    d.PhoneNumber = s.PhoneNumber,
    d.ModifiedDate = GETDATE()

FROM dw.DimCustomer d

INNER JOIN stg.Customer s

ON d.CustomerID = s.CustomerID

WHERE
        d.IsDeleted = 0
AND
(
ISNULL(d.PersonID,-1) <> ISNULL(s.PersonID,-1)

OR ISNULL(d.FirstName,'') <> ISNULL(s.FirstName,'')

OR ISNULL(d.LastName,'') <> ISNULL(s.LastName,'')

OR ISNULL(d.EmailAddress,'') <> ISNULL(s.EmailAddress,'')

OR ISNULL(d.PhoneNumber,'') <> ISNULL(s.PhoneNumber,'')
);

/*
=========================================
STEP 3
Syncronizing the Delete
=========================================
*/
UPDATE d

SET
    d.IsDeleted = 1,
    d.DeletedDate = GETDATE(),
    d.ModifiedDate = GETDATE()

FROM dw.DimCustomer d

WHERE

d.IsDeleted = 0

AND NOT EXISTS
(
    SELECT 1

    FROM stg.Customer s

    WHERE s.CustomerID = d.CustomerID
);

END;