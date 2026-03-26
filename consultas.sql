-- 

USE alkewallet;


-- 1. Consulta para obtener el nombre de la moneda elegida por un usuario específico

SELECT DISTINCT u.nombre, m.currency_name 
FROM transaccion t
JOIN usuario u ON t.sender_user_id = u.user_id
JOIN moneda m ON t.currency_id = m.currency_id
WHERE u.user_id = 1; -- ejemplo hecho con usuario de Id = 1, cambiar para revisar otros.

-- 2. Consulta para obtener todas las transacciones registradas

SELECT * FROM transaccion;

-- Opción que agrupa tablas para mostrar nombres de usuarios

SELECT 
    t.transaction_id,
    e.nombre AS remitente,
    r.nombre AS destinatario,
    m.currency_name AS moneda,
    t.importe,
    t.transaccion_date
FROM transaccion t
JOIN usuario e ON t.sender_user_id = e.user_id
JOIN usuario r ON t.receiver_user_id = r.user_id
JOIN moneda m ON t.currency_id = m.currency_id;


-- 3. Consulta para obtener todas las transacciones realizadas por un usuario específico.

SELECT * 
FROM transaccion 
WHERE sender_user_id = 6 OR receiver_user_id = 6; 



-- 4. Sub-consulta para obtener el total de transacciones por usuario.
SELECT 
    nombre,
    (SELECT COUNT(*) 
     FROM transaccion 
     WHERE sender_user_id = usuario.user_id) AS cantidad_transacciones_enviadas
FROM usuario;

