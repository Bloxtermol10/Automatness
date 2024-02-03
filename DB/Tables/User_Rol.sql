CREATE TABLE user_role (
	id INT IDENTITY(1,1) NOT NULL,
	users_id INT NOT NULL,
	roles_id INT NOT NULL,
	create_at date NOT NULL,
	update_at date,
	create_user nvarchar(100) NOT NULL,
	update_user	nvarchar(100),
	CONSTRAINT PK_user_role
		PRIMARY KEY (id),
	CONSTRAINT FK_user_role_users
		FOREIGN KEY (users_id)
		REFERENCES  users(id),
	CONSTRAINT FK_user_role_roles
		FOREIGN KEY (roles_id)
		REFERENCES roles(id),
	CONSTRAINT UK_user_role_users_id_roles_id
		UNIQUE (users_id, roles_id)
)
