CREATE TABLE product(
	id INT IDENTITY(1,1) NOT NULL,
	category_id INT NOT NULL,
	supplier_id INT  NOT NULL,
	code INT,
	code_bars INT,
	product_name nvarchar(100) NOT NULL,
	picture_url NVARCHAR(200),
	price_buy INT NOT NULL,
	price_sale INT NOT NULL,
	create_at date NOT NULL,
	update_at date,
	create_user nvarchar(100) NOT NULL,
	update_user	nvarchar(100),
	CONSTRAINT PK_product
		PRIMARY KEY (id),
	CONSTRAINT FK_product_category
		FOREIGN KEY (category_id)
		REFERENCES category(id),
	CONSTRAINT FK_product_supplier
		FOREIGN KEY (supplier_id)
		REFERENCES supplier(id),
	CONSTRAINT UK_product_code
		UNIQUE(code),
	CONSTRAINT UK_product_code_bars
		UNIQUE (code_bars),
)