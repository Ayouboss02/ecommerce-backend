SET ANSI_NULLS ON
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_WARNINGS ON
SET ANSI_PADDING ON
GO

-- Vérifier si le rôle Admin existe, sinon le créer
IF NOT EXISTS (SELECT 1 FROM AspNetRoles WHERE Name = 'Admin')
BEGIN
    INSERT INTO AspNetRoles (Id, Name, NormalizedName, ConcurrencyStamp)
    VALUES (NEWID(), 'Admin', 'ADMIN', NEWID())
END

-- Récupérer l'ID du rôle Admin
DECLARE @adminRoleId nvarchar(450)
SELECT @adminRoleId = Id FROM AspNetRoles WHERE Name = 'Admin'

-- Récupérer l'ID de l'utilisateur
DECLARE @userId nvarchar(450)
SELECT @userId = Id FROM AspNetUsers WHERE Email = 'ayoub@mail.com'

-- Ajouter l'utilisateur au rôle Admin s'il n'y est pas déjà
IF NOT EXISTS (SELECT 1 FROM AspNetUserRoles WHERE UserId = @userId AND RoleId = @adminRoleId)
BEGIN
    INSERT INTO AspNetUserRoles (UserId, RoleId)
    VALUES (@userId, @adminRoleId)
END
