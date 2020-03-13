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

CREATE TABLE products {
    item_id INT(3) NOT NULL,
    product_name VARCHAR(250) NOT NULL,
    department_name VARCHAR(250) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    stock_quantity INT(10) NOT NULL,
    PRIMARY KEY (item_id)
}