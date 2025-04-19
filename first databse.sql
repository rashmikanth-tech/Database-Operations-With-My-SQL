-- 1. Create Databases
CREATE DATABASE gadget;
CREATE DATABASE flower;
CREATE DATABASE cloth;
CREATE DATABASE cars;

-- 2. Use gadget database and create table
USE gadget;
CREATE TABLE gadget_items (
    id INT,
    item VARCHAR(25),
    brand VARCHAR(30),
    price BIGINT,
    location VARCHAR(25),
    quality VARCHAR(15),
    color VARCHAR(20)
);

-- 3. Use flower database and create table
USE flower;
CREATE TABLE flower_items (
    id INT,
    flowername VARCHAR(25),
    species VARCHAR(30),
    price BIGINT,
    location VARCHAR(25),
    rating VARCHAR(15),
    color VARCHAR(20)
);

-- 4. Use cloth database and create table
USE cloth;
CREATE TABLE cloth_items (
    id INT,
    item VARCHAR(25),
    brand VARCHAR(30),
    price BIGINT,
    location VARCHAR(25),
    quality VARCHAR(15),
    color VARCHAR(20)
);

-- 5. Use cars database and create table
USE cars;
CREATE TABLE car_items (
    id INT,
    brand VARCHAR(25),
    type VARCHAR(30),
    price BIGINT,
    location VARCHAR(25),
    quality VARCHAR(15),
    color VARCHAR(20)
);
