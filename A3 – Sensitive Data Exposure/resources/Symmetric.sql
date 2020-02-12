-- Create Master Key
CREATE MASTER KEY ENCRYPTION BY   
	PASSWORD = 'P@assword1234'; 
GO

-- Create Master Key
CREATE CERTIFICATE DemoCert
   WITH SUBJECT = 'Customer Credit Card Numbers';  
GO  

-- Create SYMMETRIC KEY
CREATE SYMMETRIC KEY CreditCardsKey  
    WITH ALGORITHM = AES_256  
    ENCRYPTION BY CERTIFICATE DemoCert;  
GO

-- Set Database to use
USE OWASP;
GO

-- Create CreditCard Table.
-- With a column in which to store the CardNumber encrypted data.  
CREATE TABLE [CreditCard](
	[CreditCardID] [int] IDENTITY(1,1) NOT NULL,
	[CardNumber] [varchar](50) NULL,
	[CardNumber_Encrypted] [varbinary](160)
) ON [PRIMARY]

-- Insert Demo data
INSERT INTO [CreditCard] ([CardNumber]) VALUES ('4111 1111 1111 1111')
GO

-- Open the symmetric key with which to encrypt the data.  
OPEN SYMMETRIC KEY CreditCardsKey  
   DECRYPTION BY CERTIFICATE DemoCert;  

-- Encrypt the value in column CardNumber using the  
-- symmetric key CreditCardsKey.  
-- Save the result in column CardNumber_Encrypted.

UPDATE CreditCard
SET CardNumber_Encrypted = EncryptByKey(Key_GUID('CreditCardsKey'), CardNumber);  
GO 

-- Verify the encryption.  
-- First, open the symmetric key with which to decrypt the data.  
OPEN SYMMETRIC KEY CreditCardsKey  
   DECRYPTION BY CERTIFICATE DemoCert;  
GO  

-- Now list the original card number, the encrypted card number,  
-- and the decrypted ciphertext. If the decryption worked,  
-- the original number will match the decrypted number.  
SELECT 
	CardNumber,
	CardNumber_Encrypted AS 'Encrypted card number',
	CONVERT(varchar, DecryptByKey(CardNumber_Encrypted)) AS 'Decrypted card number'
	FROM CreditCard;  
GO