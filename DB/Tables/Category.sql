CREATE TABLE category(
	id INT IDENTITY(1,1) NOT NULL,
	category_parent_id INT DEFAULT(0) NOT NULL,
	category_name NVARCHAR NOT NULL,
	active BIT DEFAULT(1) NOT NULL,
	create_at date NOT NULL,
	update_at date,
	create_user nvarchar(100) NOT NULL,
	update_user	nvarchar(100),
	CONSTRAINT PK_category
		PRIMARY KEY (id),
	CONSTRAINT UK_category_name
		UNIQUE (category_name)
)