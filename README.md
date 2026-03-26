# Alke Wallet - Base de Datos Relacional

Este repositorio contiene el diseño, creación y manipulación de una base de datos relacional para **Alke Wallet**, un sistema de billetera virtual. El proyecto permite gestionar usuarios, almacenar sus fondos y registrar un historial detallado de transacciones utilizando distintas monedas.

##  Contenido del Repositorio

*    **`alkewallet.sql`**: Script DDL con la creación de la base de datos y las tablas principales.
*    **`insert.sql`**: Script DML con la inserción de datos de prueba (10 casos por tabla).
*    **`consultas.sql` / `sentencias.sql`**: Consultas operativas (JOINs, sub-consultas) y sentencias de actualización/eliminación (UPDATE/DELETE).
*    **`ER.pdf`**: Diagrama Entidad-Relación que ilustra visualmente el modelo de datos.
*    **`Documentacion.pdf`**: Archivo con los detalles del proyecto.

---

##  Estructura de la Base de Datos

El modelo relacional está compuesto por 3 tablas principales diseñadas para evitar la redundancia de datos y mantener la integridad referencial:

### 1. Tabla `usuario`
Almacena la información de los clientes de la wallet.
*   **Campos clave:** `user_id` (PK), `nombre`, `correo` (Único), `contrasena`, `saldo`.
*   *Nota:* El saldo se actualiza para reflejar los fondos actuales del usuario.

### 2. Tabla `moneda`
Funciona como un catálogo de las divisas soportadas por la plataforma (ej. Dólar, Euro, Peso).
*   **Campos clave:** `currency_id` (PK), `currency_name`, `currency_symbol`.

### 3. Tabla `transaccion`
Es la tabla central que registra los movimientos de dinero. Relaciona a los usuarios con las monedas.
*   **Campos clave:** `transaction_id` (PK), `importe`, `transaccion_date`.
*   **Relaciones (Llaves Foráneas - FK):**
    *   `sender_user_id`: Apunta a `usuario(user_id)`. Indica quién envía el dinero.
    *   `receiver_user_id`: Apunta a `usuario(user_id)`. Indica quién recibe el dinero.
    *   `currency_id`: Apunta a `moneda(currency_id)`. Indica en qué divisa se hizo el envío.

---
