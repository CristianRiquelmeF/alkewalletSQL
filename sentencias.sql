-- 

USE alkewallet;


--  Sentencia DML para modificar el campo correo electrónico de un usuario específico

UPDATE usuario 
SET correo = 'PRUEBACORREONUEVO@email.com' 
WHERE user_id = 2;

-- REVISAR
SELECT correo
FROM usuario
WHERE user_id = 2;


-- Sentencia para eliminar los datos de una transacción (eliminado de la fila completa)

DELETE FROM transaccion 
WHERE transaction_id = 3;


SELECT *
FROM transaccion;