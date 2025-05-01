CREATE DATABASE my_project_db;
USE my_project_db;
CREATE TABLE airlines_info (
    airline_id INT,
    airline_name VARCHAR(100),
    country VARCHAR(50),
    founded_year INT,
    is_active BOOLEAN
);

CREATE TABLE country_info (
    country_id INT,
    country_name VARCHAR(100),
    iso_code CHAR(2),
    capital VARCHAR(100),
    population BIGINT
);

CREATE TABLE state_info (
    state_id INT,
    state_name VARCHAR(100),
    country_name VARCHAR(100),
    area_sq_km INT,
    population BIGINT
);

ALTER TABLE airlines_info ADD ceo_name VARCHAR(100);
ALTER TABLE airlines_info ADD fleet_size INT;
ALTER TABLE airlines_info ADD alliance VARCHAR(50);

ALTER TABLE country_info ADD continent VARCHAR(50);
ALTER TABLE country_info ADD currency VARCHAR(50);
ALTER TABLE country_info ADD official_language VARCHAR(50);

ALTER TABLE state_info ADD capital_city VARCHAR(100);
ALTER TABLE state_info ADD literacy_rate DECIMAL(5,2);
ALTER TABLE state_info ADD state_code VARCHAR(10);

ALTER TABLE airlines_info RENAME COLUMN airline_name TO name;
ALTER TABLE airlines_info RENAME COLUMN founded_year TO year_established;
ALTER TABLE airlines_info RENAME COLUMN country TO origin_country;

ALTER TABLE country_info RENAME COLUMN country_name TO name;
ALTER TABLE country_info RENAME COLUMN iso_code TO country_code;
ALTER TABLE country_info RENAME COLUMN capital TO capital_city;

ALTER TABLE state_info RENAME COLUMN state_name TO name;
ALTER TABLE state_info RENAME COLUMN area_sq_km TO area;
ALTER TABLE state_info RENAME COLUMN country_name TO country;

ALTER TABLE airlines_info MODIFY fleet_size SMALLINT;
ALTER TABLE airlines_info MODIFY ceo_name TEXT;
ALTER TABLE airlines_info MODIFY alliance VARCHAR(100);

ALTER TABLE country_info MODIFY currency VARCHAR(100);
ALTER TABLE country_info MODIFY population INT;
ALTER TABLE country_info MODIFY official_language TEXT;

ALTER TABLE state_info MODIFY area BIGINT;
ALTER TABLE state_info MODIFY population INT;
ALTER TABLE state_info MODIFY state_code CHAR(5);

INSERT INTO airlines_info VALUES
(1, 'Air India', 'India', 1932, TRUE, 'Campbell Wilson', 120, 'Star Alliance'),
(2, 'IndiGo', 'India', 2006, TRUE, 'Pieter Elbers', 300, 'None'),
(3, 'Emirates', 'UAE', 1985, TRUE, 'Ahmed bin Saeed', 250, 'None'),
(4, 'Qatar Airways', 'Qatar', 1993, TRUE, 'Akbar Al Baker', 200, 'Oneworld'),
(5, 'Delta Airlines', 'USA', 1929, TRUE, 'Ed Bastian', 850, 'SkyTeam'),
(6, 'Lufthansa', 'Germany', 1953, TRUE, 'Carsten Spohr', 300, 'Star Alliance'),
(7, 'Singapore Airlines', 'Singapore', 1947, TRUE, 'Goh Choon Phong', 150, 'Star Alliance'),
(8, 'United Airlines', 'USA', 1926, TRUE, 'Scott Kirby', 700, 'Star Alliance'),
(9, 'British Airways', 'UK', 1974, TRUE, 'Sean Doyle', 280, 'Oneworld'),
(10, 'Air France', 'France', 1933, TRUE, 'Anne Rigail', 250, 'SkyTeam'),
(11, 'Turkish Airlines', 'Turkey', 1933, TRUE, 'Bilal Ekşi', 370, 'Star Alliance'),
(12, 'Ryanair', 'Ireland', 1984, TRUE, 'Michael O''Leary', 450, 'None'),
(13, 'American Airlines', 'USA', 1930, TRUE, 'Robert Isom', 900, 'Oneworld'),
(14, 'Jet Airways', 'India', 1992, FALSE, 'Naresh Goyal', 0, 'None'),
(15, 'Etihad Airways', 'UAE', 2003, TRUE, 'Antonoaldo Neves', 100, 'None'),
(16, 'Southwest Airlines', 'USA', 1967, TRUE, 'Bob Jordan', 750, 'None'),
(17, 'EasyJet', 'UK', 1995, TRUE, 'Johan Lundgren', 300, 'None'),
(18, 'Vistara', 'India', 2013, TRUE, 'Vinod Kannan', 50, 'None'),
(19, 'Go First', 'India', 2005, FALSE, 'Kaushik Khona', 0, 'None'),
(20, 'SpiceJet', 'India', 2005, TRUE, 'Ajay Singh', 100, 'None');

INSERT INTO country_info VALUES
(1, 'India', 'IN', 'New Delhi', 1400000000, 'Asia', 'INR', 'Hindi'),
(2, 'USA', 'US', 'Washington', 331000000, 'North America', 'USD', 'English'),
(3, 'UK', 'GB', 'London', 68000000, 'Europe', 'GBP', 'English'),
(4, 'France', 'FR', 'Paris', 67000000, 'Europe', 'EUR', 'French'),
(5, 'Germany', 'DE', 'Berlin', 83000000, 'Europe', 'EUR', 'German'),
(6, 'Australia', 'AU', 'Canberra', 26000000, 'Oceania', 'AUD', 'English'),
(7, 'Canada', 'CA', 'Ottawa', 38000000, 'North America', 'CAD', 'English'),
(8, 'Japan', 'JP', 'Tokyo', 125000000, 'Asia', 'JPY', 'Japanese'),
(9, 'China', 'CN', 'Beijing', 1440000000, 'Asia', 'CNY', 'Mandarin'),
(10, 'Brazil', 'BR', 'Brasilia', 213000000, 'South America', 'BRL', 'Portuguese'),
(11, 'Russia', 'RU', 'Moscow', 146000000, 'Europe/Asia', 'RUB', 'Russian'),
(12, 'Italy', 'IT', 'Rome', 60000000, 'Europe', 'EUR', 'Italian'),
(13, 'Spain', 'ES', 'Madrid', 47000000, 'Europe', 'EUR', 'Spanish'),
(14, 'Mexico', 'MX', 'Mexico City', 126000000, 'North America', 'MXN', 'Spanish'),
(15, 'South Africa', 'ZA', 'Pretoria', 60000000, 'Africa', 'ZAR', 'English'),
(16, 'Saudi Arabia', 'SA', 'Riyadh', 35000000, 'Asia', 'SAR', 'Arabic'),
(17, 'South Korea', 'KR', 'Seoul', 52000000, 'Asia', 'KRW', 'Korean'),
(18, 'Argentina', 'AR', 'Buenos Aires', 45000000, 'South America', 'ARS', 'Spanish'),
(19, 'Nigeria', 'NG', 'Abuja', 206000000, 'Africa', 'NGN', 'English'),
(20, 'Indonesia', 'ID', 'Jakarta', 273000000, 'Asia', 'IDR', 'Indonesian');

INSERT INTO state_info VALUES
(1, 'Maharashtra', 'India', 307713, 123000000, 'Mumbai', 82.91, 'MH'),
(2, 'Texas', 'USA', 695662, 29000000, 'Austin', 81.00, 'TX'),
(3, 'California', 'USA', 423967, 39500000, 'Sacramento', 79.00, 'CA'),
(4, 'New South Wales', 'Australia', 809444, 8100000, 'Sydney', 89.50, 'NSW'),
(5, 'Bavaria', 'Germany', 70550, 13000000, 'Munich', 99.00, 'BY'),
(6, 'Île-de-France', 'France', 12012, 12100000, 'Paris', 98.00, 'IDF'),
(7, 'Quebec', 'Canada', 1542056, 8500000, 'Quebec City', 94.50, 'QC'),
(8, 'Tokyo', 'Japan', 2194, 14000000, 'Tokyo', 100.00, 'TK'),
(9, 'Beijing', 'China', 16411, 21700000, 'Beijing', 97.00, 'BJ'),
(10, 'São Paulo', 'Brazil', 248222, 46000000, 'São Paulo', 91.00, 'SP'),
(11, 'Gauteng', 'South Africa', 18178, 15000000, 'Johannesburg', 87.00, 'GP'),
(12, 'Lombardy', 'Italy', 23863, 10000000, 'Milan', 96.00, 'LO'),
(13, 'Andalusia', 'Spain', 87599, 8400000, 'Seville', 93.00, 'AN'),
(14, 'Yucatan', 'Mexico', 39524, 2300000, 'Mérida', 90.00, 'YU'),
(15, 'Riyadh', 'Saudi Arabia', 404240, 7500000, 'Riyadh', 88.00, 'RD'),
(16, 'Gyeonggi', 'South Korea', 10174, 13500000, 'Suwon', 98.00, 'GG'),
(17, 'Buenos Aires', 'Argentina', 307571, 17000000, 'La Plata', 94.00, 'BA'),
(18, 'Lagos', 'Nigeria', 3577, 21000000, 'Ikeja', 86.00, 'LG'),
(19, 'Jakarta', 'Indonesia', 661, 10000000, 'Jakarta', 96.00, 'JK'),
(20, 'West Bengal', 'India', 88752, 96000000, 'Kolkata', 77.00, 'WB');



select *from airlines_info;
UPDATE airlines_info SET ceo_name = 'New CEO 1' WHERE airline_id = 1;
UPDATE airlines_info SET fleet_size = 200 WHERE airline_id = 2;
UPDATE airlines_info SET alliance = 'Oneworld' WHERE airline_id = 3;
UPDATE airlines_info SET is_active = FALSE WHERE airline_id = 4;
UPDATE airlines_info SET year_established = 1950 WHERE airline_id = 5;
UPDATE airlines_info SET origin_country = 'Canada' WHERE airline_id = 6;
UPDATE airlines_info SET ceo_name = 'New CEO 2' WHERE airline_id = 7;
UPDATE airlines_info SET fleet_size = 500 WHERE airline_id = 8;
UPDATE airlines_info SET alliance = 'SkyTeam' WHERE airline_id = 9;
UPDATE airlines_info SET is_active = FALSE WHERE airline_id = 10;

UPDATE country_info SET currency = 'New Rupee' WHERE country_id = 1;
UPDATE country_info SET population = 999999999 WHERE country_id = 2;
UPDATE country_info SET capital_city = 'CapitalX' WHERE country_id = 3;
UPDATE country_info SET continent = 'Eurasia' WHERE country_id = 4;
UPDATE country_info SET official_language = 'LangX' WHERE country_id = 5;
UPDATE country_info SET name = 'New Australia' WHERE country_id = 6;
UPDATE country_info SET capital_city = 'Updated Ottawa' WHERE country_id = 7;
UPDATE country_info SET currency = 'New Yen' WHERE country_id = 8;
UPDATE country_info SET population = 1500000000 WHERE country_id = 9;
UPDATE country_info SET official_language = 'PortugueseX' WHERE country_id = 10;

UPDATE state_info SET capital_city = 'Updated Mumbai' WHERE state_id = 1;
UPDATE state_info SET population = 99999999 WHERE state_id = 2;
UPDATE state_info SET area = 777777 WHERE state_id = 3;
UPDATE state_info SET literacy_rate = 95.5 WHERE state_id = 4;
UPDATE state_info SET state_code = 'MHX' WHERE state_id = 5;
UPDATE state_info SET name = 'Updated Île-de-France' WHERE state_id = 6;
UPDATE state_info SET country = 'Updated Canada' WHERE state_id = 7;
UPDATE state_info SET literacy_rate = 100.00 WHERE state_id = 8;
UPDATE state_info SET area = 9999 WHERE state_id = 9;
UPDATE state_info SET population = 5555555 WHERE state_id = 10;

DELETE FROM airlines_info WHERE airline_id = 20;
DELETE FROM country_info WHERE continent = 'Asia' AND population < 50000000;
DELETE FROM state_info WHERE population > 100000000 OR literacy_rate < 80;
DELETE FROM airlines_info WHERE origin_country IN ('UK', 'France');
DELETE FROM country_info WHERE country_code NOT IN ('IN', 'US', 'CA');
DELETE FROM state_info WHERE area BETWEEN 10000 AND 20000;
DELETE FROM airlines_info WHERE year_established NOT BETWEEN 1950 AND 2020;

SELECT * FROM airlines_info WHERE origin_country = 'India';
SELECT * FROM country_info WHERE continent = 'Asia';
SELECT * FROM state_info WHERE literacy_rate > 90;
SELECT * FROM airlines_info WHERE origin_country = 'USA' AND is_active = TRUE;
SELECT * FROM country_info WHERE population > 1000000000 OR currency = 'USD';
SELECT * FROM state_info WHERE country IN ('India', 'USA', 'Canada');
SELECT * FROM airlines_info WHERE alliance NOT IN ('SkyTeam', 'Oneworld');
SELECT * FROM country_info WHERE population BETWEEN 50000000 AND 150000000;
SELECT * FROM state_info WHERE literacy_rate NOT BETWEEN 80 AND 95;
select *from airlines_info;

