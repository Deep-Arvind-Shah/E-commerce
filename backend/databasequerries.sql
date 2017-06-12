CREATE TABLE category (

	id IDENTITY,
	name varchar(50),
	description varchar(255),
	image_url varchar(50),
	is_active boolean,
	
	CONSTRAINT pk_category_id PRIMARY KEY (id)

);

INSERT INTO Category (name,description,image_url,is_active) VALUES ('Mobile','description for mobile','CAT_3.png',true);
