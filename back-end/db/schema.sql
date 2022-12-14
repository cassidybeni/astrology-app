DROP DATABASE IF EXISTS astrology_db;
CREATE DATABASE astrology_db;
\c astrology_db;

DROP TABLE IF EXISTS users CASCADE;
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR (255) NOT NULL,
    user_name VARCHAR (255) UNIQUE NOT NULL,
    email VARCHAR (255) UNIQUE NOT NULL,
    birth_date DATE NOT NULL,
    birth_time TIME NOT NULL, 
    birth_place VARCHAR (255) NOT NULL
);