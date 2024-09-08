CREATE DATABASE ecommerce;
SELECT*FROM categories;
SELECT*FROM products;
SELECT*FROM products_categories;
SELECT*FROM products WHERE price > 20;
SELECT*FROM products ORDER BY id_products DESC;

SELECT products.name, categories.name
FROM products_categories
JOIN products ON products_categories.prod_cat_prod_id = products.id_products
JOIN categories ON products_categories.prod_cat_cat_id = id_categories;

SELECT products.name, categories.name
FROM products_categories
JOIN products ON products_categories.prod_cat_prod_id = products.id_products
JOIN categories ON products_categories.prod_cat_cat_id = id_categories
WHERE products.id_products = 1;

INSERT INTO categories (name) values ("t-shirts"), ("trousers");

ALTER TABLE products ADD name varchar(45);
ALTER TABLE products ADD price INT(5);

INSERT INTO products (name, ref, price) values ("t-shirt_A", "00A1", 10),
("t-shirt_B", "00B2", 20),
("t-shirt_C", "00C3", 30),
("t-shirt_D", "00D4", 40),
("t-shirt_E", "00E5", 50);

INSERT INTO products_categories (prod_cat_prod_id, prod_cat_cat_id) VALUES
(3, 1); 
INSERT INTO products_categories (prod_cat_prod_id, prod_cat_cat_id) VALUES
(5, 2);


UPDATE products SET name = "t-shirt_New" WHERE id_products = 5;
UPDATE products SET price = "50" WHERE id_products = 4;

ALTER TABLE products CHANGE precio price VARCHAR(45);



