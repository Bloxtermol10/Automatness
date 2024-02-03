CREATE TABLE orders(
	id INT IDENTITY(1,1) NOT NULL,
	product_id INT NOT NULL,
	service_areas_id INT NOT NULL,
	order_id INT NOT NULL,
	active BIT DEFAULT(1) NOT NULL,
	quantity INT NOT NULL,
	total_amount INT NOT NULL,
	create_at DATE NOT NULL,
	update_at DATE,
	create_user NVARCHAR (100) NOT NULL,
	update_user NVARCHAR (100),
	CONSTRAINT PK_orders
		PRIMARY KEY (id),
	CONSTRAINT FK_orders_product
		FOREIGN KEY (product_id)
		REFERENCES product(id),
	CONSTRAINT FK_orders_service_areas
		FOREIGN KEY (service_areas_id)
		REFERENCES service_areas(id),
)