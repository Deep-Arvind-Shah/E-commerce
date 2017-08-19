CREATE TABLE category (

	id IDENTITY,
	name varchar(50),
	description varchar(255),
	image_url varchar(50),
	is_active boolean,
	
	CONSTRAINT pk_category_id PRIMARY KEY (id)

);

INSERT INTO Category (name,description,image_url,is_active) VALUES ('Mobile','description for mobile','CAT_3.png',true);


CREATE TABLE user_detail(

id IDENTITY,
first_name VARCHAR(50),
last_name VARCHAR(50),
role VARCHAR(50),
enabled boolean,
email VARCHAR(100),
contact_number VARCHAR(15),
CONSTRAINT pk_user_id PRIMARY KEY(id),
);

INSERT INTO user_detail
(first_name, last_name,role,enabled,email,contact_number)
VALUES ('Deep','Shah','ADMIN',true,'deepshah794@gmail.com','9920910030');


INSERT INTO user_detail
(first_name, last_name,role,enabled,email,contact_number)
VALUES ('Krish','Shah','SUPPLIER',true,'krishshah@gmail.com','9984516489');


INSERT INTO user_detail
(first_name, last_name,role,enabled,email,contact_number)
VALUES ('Arvind','Shah','SUPPLIER',true,'arvindshah@gmail.com','9968947512');	

CREATE TABLE Product (
id IDENTITY,
code VARCHAR(20),
name VARCHAR(50),
brand VARCHAR(50), 
description VARCHAR(255),
unit_price DECIMAL(10,2),
quantity INT,
is_active BOOLEAN,
category_id INT,
supplier_id INT,
purchases INT DEFAULT 0,
views INT DEFAULT 0,
CONSTRAINT pk_product_id PRIMARY KEY (id),
CONSTRAINT fk_product_category_id FOREIGN KEY (category_id) REFERENCES category(id),
CONSTRAINT fk_product_supplier_id FOREIGN KEY (supplier_id) REFERENCES user_detail(id),
);

INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id)
VALUES ('PRDABC123DEFX', 'iPhone 5s', 'apple', 'This is one of the best phone available in the market right now!', 18000, 5, true, 3, 2 );

INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id)
VALUES ('PRDDEF123DEFX', 'Samsung s7', 'samsung', 'A smart phone by samsung!', 32000, 2, true, 3, 3 );

INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id)
VALUES ('PRDPQR123WGTX', 'Google Pixel', 'google', 'This is one of the best android smart phone available in the market right now!', 57000, 5, true, 3, 2 );

INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id)
VALUES ('PRDMNO123PQRX', ' Macbook Pro', 'apple', 'This is one of the best laptops available in the market right now!', 54000, 3, true, 1, 2 );

INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id)
VALUES ('PRDABCXYZDEFX', 'Dell Latitude E6510', 'dell', 'This is one of the best laptop series from dell that can be used!', 48000, 5, true, 1, 3 );
