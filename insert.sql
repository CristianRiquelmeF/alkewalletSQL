
-- 

USE alkewallet;

-- CARGA DE DATOS 

INSERT INTO usuario (nombre, correo, contrasena, saldo) VALUES
('Carlos Silva', 'carlos@email.com', 'pass123', 1500.00),
('Ana Gomez', 'ana@email.com', 'pass456', 2000.50),
('Luis Perez', 'luis@email.com', 'pass789', 300.00),
('Maria Lopez', 'maria@email.com', 'passabc', 5000.00),
('Jorge Diaz', 'jorge@email.com', 'passdef', 120.75),
('Elena Ruiz', 'elena@email.com', 'passghi', 850.00),
('Pedro Martinez', 'pedro@email.com', 'passjkl', 50.00),
('Sofia Torres', 'sofia@email.com', 'passmno', 3200.00),
('Diego Castro', 'diego@email.com', 'passpqr', 450.25),
('Laura Vargas', 'laura@email.com', 'passstu', 980.00);


-- VERIFICACIÓN
SELECT *
FROM usuario;


INSERT INTO moneda (currency_name, currency_symbol) VALUES
('Dólar Estadounidense', 'USD'),
('Euro', 'EUR'),
('Peso Mexicano', 'MXN'),
('Libra Esterlina', 'GBP'),
('Yen Japonés', 'JPY'),
('Franco Suizo', 'CHF'),
('Dólar Canadiense', 'CAD'),
('Peso Colombiano', 'COP'),
('Peso Argentino', 'ARS'),
('Real Brasileño', 'BRL');


-- VERIFICACIÓN
SELECT *
FROM moneda;


INSERT INTO transaccion (sender_user_id, receiver_user_id, currency_id, importe) VALUES
(1, 2, 1, 50.00),     -- Carlos envía a Ana 50 USD
(3, 4, 3, 1500.00),   -- Luis envía a Maria 1500 MXN
(2, 1, 2, 25.50),     -- Ana envía a Carlos 25.50 EUR
(5, 6, 8, 50000.00),  -- Jorge envía a Elena 50000 COP
(7, 8, 1, 10.00),     -- Pedro envía a Sofia 10 USD
(9, 10, 9, 2000.00),  -- Diego envía a Laura 2000 ARS
(4, 2, 4, 100.00),    -- Maria envía a Ana 100 GBP
(10, 5, 1, 75.25),    -- Laura envía a Jorge 75.25 USD
(8, 3, 2, 200.00),    -- Sofia envía a Luis 200 EUR
(6, 1, 10, 350.00);   -- Elena envía a Carlos 350 BRL


-- VERIFICACIÓN
SELECT *
FROM transaccion;