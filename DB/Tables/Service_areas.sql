CREATE TABLE service_areas(
	id INT IDENTITY(1,1) NOT NULL,
	service_areas_name NVARCHAR (50) NOT NULL,
	active BIT DEFAULT(1) NOT NULL,
	create_at DATE NOT NULL,
	update_at DATE ,
	create_user NVARCHAR (100) NOT NULL,
	update_user NVARCHAR (100),
	CONSTRAINT PK_service_areas
		PRIMARY KEY (id),
	CONSTRAINT UK_service_areas_name
		UNIQUE(service_areas_name) 
)