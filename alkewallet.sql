CREATE DATABASE IF NOT EXISTS alkewallet;
USE alkewallet;

SHOW DATABASES;

CREATE TABLE IF NOT EXISTS usuario(
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(100) NOT NULL UNIQUE,
    contrasena VARCHAR(100) NOT NULL,
    saldo DECIMAL(10, 2) DEFAULT 0
)


CREATE TABLE IF NOT EXISTS moneda (
    currency_id INT AUTO_INCREMENT PRIMARY KEY,
    currency_name VARCHAR(50) NOT NULL,
    currency_symbol VARCHAR(10) NOT NULL
)



CREATE TABLE IF NOT EXISTS transaccion (
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    sender_user_id INT,
    receiver_user_id INT,
    currency_id INT,
    importe DECIMAL(10, 2) NOT NULL,
    transaccion_date DATETIME DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (sender_user_id)REFERENCES usuario (user_id),
    FOREIGN KEY (receiver_user_id) REFERENCES usuario (user_id),
    FOREIGN KEY (currency_id) REFERENCES moneda (currency_id)
)


-- REVISIÓN DE ESTRUCTURAS CREADAS 
SHOW TABLES;

DESC usuario;
DESC moneda;
DESC transaccion;

