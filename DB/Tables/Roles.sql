CREATE TABLE roles(
	id INT IDENTITY(1,1) NOT NULL,
	roles_name NVARCHAR(50) NOT NULL,
	active BIT NOT NULL DEFAULT(1),
	create_at date NOT NULL,
	update_at date,
	create_user nvarchar(100) NOT NULL,
	update_user	nvarchar(100),
	CONSTRAINT PK_roles
		PRIMARY KEY (id),
	CONSTRAINT UK_roles_name
		UNIQUE(roles_name)
)