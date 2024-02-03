CREATE TABLE bill_orders(
	id INT IDENTITY(1,1) NOT NULL,
	bill_id INT NOT NULL,
	orders_id INT NOT NULL,
	CONSTRAINT PK_bill_orders
		PRIMARY KEY (id),
	CONSTRAINT FK_bill_orders_bill
		FOREIGN KEY (bill_id)
		REFERENCES bill(id),
	CONSTRAINT FK_bill_orders_orders
		FOREIGN KEY (orders_id)
		REFERENCES orders(id),
)