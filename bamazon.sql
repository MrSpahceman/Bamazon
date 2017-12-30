DROP DATABASE IF EXISTS `products_db`;
CREATE DATABASE `products_db`;

USE `products_db`;

DROP table if exists `products`;
CREATE TABLE `products` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `product_name` VARCHAR(45) NULL,
    `department_name` VARCHAR(45) NULL,
    `stock_quantity` INTEGER(45) NOT NULL,
    `price` decimal(11, 2) NOT NUll,
    PRIMARY KEY(`id`)
);
INSERT INTO `products` (product_name, department_name, stock_quantity, price)
values('Hammer', 'Tools', 2, 34);
select product_name, department_name, stock_quantity, price
from products;