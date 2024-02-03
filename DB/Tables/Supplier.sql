CREATE TABLE supplier (
	id INT IDENTITY(1,1) NOT NULL,
	supplier_name NVARCHAR (100) NOT NULL,
	active BIT DEFAULT(1) NOT NULL,
	phone NVARCHAR (15),
	supplier_address NVARCHAR (200),
	email NVARCHAR (200),
	create_at date NOT NULL,
	update_at date,
	create_user nvarchar(100) NOT NULL,
	update_user	nvarchar(100),
	CONSTRAINT PK_supplier
		PRIMARY KEY (id),
	CONSTRAINT UK_supplier_name
		UNIQUE(supplier_name),
	CONSTRAINT UK_supplier_phone
		UNIQUE (phone),
	CONSTRAINT UK_supplier_email
		UNIQUE (email)
)