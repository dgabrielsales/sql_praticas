/*Nível 1 – Consultas Simples

Liste o nome e cidade de todos os clientes.

Mostre os produtos da categoria “Periféricos” e seus preços.

Busque todos os pedidos com status = "Pago".

Liste o nome e o email dos clientes que moram no estado "SP".

Mostre os 5 pedidos mais recentes.
*/

SELECT nome, cidade FROM clientes; 
========================================

SELECT
    nome, preco 
FROM
    produtos
WHERE
    categoria = 'Periféricos';
    
=========================================
SELECT * FROM  pedidos WHERE status = 'Pago'
/desafios/query_status_pago.png
========================================
SELECT nome, email FROM clientes WHERE estado = 'SP'

=========================================
SELECT id_pedido, data_pedido 
FROM pedidos 
ORDER BY data_pedido DESC 
LIMIT 5