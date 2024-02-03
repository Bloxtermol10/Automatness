CREATE TABLE permission_module_role(
	id INT IDENTITY(1,1) NOT NULL,
	permission_id INT NOT NULL,
	module_id INT NOT NULL,
	roles_id INT NOT NULL,
	create_at date NOT NULL,
	update_at date,
	create_user nvarchar(100) NOT NULL,
	update_user	nvarchar(100),
	CONSTRAINT PK_permission_module_role
		PRIMARY KEY(id),
	CONSTRAINT FK_permission_module_role_permission
		FOREIGN KEY (permission_id)
		REFERENCES permission(id),
	CONSTRAINT FK_permission_module_role_module
		FOREIGN KEY (module_id)
		REFERENCES module(id),
	CONSTRAINT FK_permission_module_role_roles
		FOREIGN KEY (roles_id)
		REFERENCES roles(id)
)
