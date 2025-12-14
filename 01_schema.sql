-- Coffee Shop SQL Project
-- Schema definition
-- This file creates all tables and relationships

-- Drop tables if they already exist (order matters)
DROP TABLE IF EXISTS suppliers;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS shops;
DROP TABLE IF EXISTS locations;

-- =========================
-- LOCATIONS
-- =========================
CREATE TABLE locations (
  city_id INT PRIMARY KEY,
  city VARCHAR(50) NOT NULL,
  country VARCHAR(50) NOT NULL
);

-- =========================
-- SHOPS
-- =========================
CREATE TABLE shops (
  coffeeshop_id INT PRIMARY KEY,
  coffeeshop_name VARCHAR(50) NOT NULL,
  city_id INT,
  CONSTRAINT fk_city
    FOREIGN KEY (city_id)
    REFERENCES locations(city_id)
    ON DELETE SET NULL
);

-- =========================
-- EMPLOYEES
-- =========================
CREATE TABLE employees (
  employee_id INT PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  email VARCHAR(100),
  hire_date DATE NOT NULL,
  gender CHAR(1) CHECK (gender IN ('M', 'F')),
  salary INT CHECK (salary >= 0),
  coffeeshop_id INT,
  CONSTRAINT fk_shop
    FOREIGN KEY (coffeeshop_id)
    REFERENCES shops(coffeeshop_id)
    ON DELETE SET NULL
);

-- =========================
-- SUPPLIERS
-- =========================
CREATE TABLE suppliers (
  coffeeshop_id INT NOT NULL,
  supplier_name VARCHAR(40) NOT NULL,
  coffee_type VARCHAR(20) NOT NULL,
  CONSTRAINT pk_supplier PRIMARY KEY (coffeeshop_id, supplier_name),
  CONSTRAINT fk_supplier_shop
    FOREIGN KEY (coffeeshop_id)
    REFERENCES shops(coffeeshop_id)
    ON DELETE CASCADE
);
