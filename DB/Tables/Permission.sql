CREATE TABLE permission(
	id INT IDENTITY(1,1) NOT NULL,
	permission_nam NVARCHAR(50) NOT NULL,
	CONSTRAINT PK_permission
		PRIMARY KEY (id),
	CONSTRAINT UK_permission_nam
		UNIQUE (permission_nam)
)