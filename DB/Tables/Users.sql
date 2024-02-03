CREATE TABLE users (
	id  int NOT NULL IDENTITY(1,1),
	users_name nvarchar(50) NOT NULL,
	identification_id INT not null,
	number_identification nvarchar(20) NOT NULL,
	phone nvarchar(10) NOT NULL,
	users_password nvarchar(256) NOT NULL,
	create_at date NOT NULL,
	update_at date,
	create_user nvarchar(100) NOT NULL,
	update_user	nvarchar(100)
	CONSTRAINT PK_users PRIMARY KEY (id),
	CONSTRAINT FK_users_id_identification_id
		FOREIGN KEY (identification_id)
		REFERENCES identification(id),
	CONSTRAINT UK_users_number_identification 
		UNIQUE (number_identification),
	CONSTRAINT UK_user_phone
		UNIQUE (phone)
)