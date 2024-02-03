CREATE TABLE bill(
	id INT IDENTITY(1,1) NOT NULL,
	total_amount INT NOT NULL,
	create_at DATE NOT NULL,
	create_user NVARCHAR NOT NULL,
	CONSTRAINT PK_bill
		PRIMARY KEY (id),
)