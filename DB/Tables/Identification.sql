CREATE TABLE identification (
	id  int NOT NULL IDENTITY(1,1),
	identification_name nvarchar(50),
	initials nvarchar(4),
	CONSTRAINT PK_identification
	PRIMARY KEY (id)
)