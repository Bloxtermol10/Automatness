CREATE TABLE module(
	id INT IDENTITY(1,1) NOT NULL,
	module_name NVARCHAR(50) NOT NULL,
	create_at date NOT NULL,
	update_at date,
	create_user nvarchar(100) NOT NULL,
	update_user	nvarchar(100),
	CONSTRAINT PK_module
		PRIMARY KEY (id),
	CONSTRAINT UK_module_name
		UNIQUE (module_name)
)