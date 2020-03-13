-- Create a MySQL Database called bamazon.

DROP DATABASE IF EXISTS bamazon;

CREATE database bamazon;

USE bamazon;

-- Then create a Table inside of that database called products
-- item_id (unique id for each product)

-- product_name (Name of product)

-- department_name

-- price (cost to customer)

-- stock_quantity (how much of the product is available in stores)

CREATE TABLE products (
    item_id INT(3) NOT NULL,
    product_name VARCHAR(250) NOT NULL,
    department_name VARCHAR(250) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    stock_quantity INT(10) NOT NULL,
    PRIMARY KEY (item_id)
);

-- Populate this database with around 10 different products.

SELECT * FROM products;

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (001, "half day 4 pack", "inshore", 250, 365),
        (002, "half day 4 pack", "offshore", 300, 365),
        (003, "full day 4 pack", "inshore", 500, 365),
        (004, "full day 4 pack", "offshore", 600, 365),
        (005, "half day 6 pack", "inshore", 350, 365),
        (006, "half day 6 pack", "offshore", 450, 365),
        (007, "full day 6 pack", "inshore", 700, 365),
        (008, "half day 4 pack", "inshore", 900, 365),
        (009, "fishing pole", "rental", 20, 365),
        (010, "jumbo shrimp(12)", "bait", 8, 365)

