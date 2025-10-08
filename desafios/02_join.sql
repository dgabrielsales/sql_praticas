Nível 2 – JOINs e Filtros

2.1 - Liste o nome do cliente, a data e o valor total de cada pedido (usando JOIN entre clientes e pedidos).

SELECT 
t2.nome, 
t1.data_pedido, 
t1.valor_total
FROM pedidos AS t1
INNER JOIN 
clientes t2 
ON 
t1.id_cliente = t2.id_cliente

 
2.2 - Mostre todos os itens do pedido id = 10, trazendo o nome do produto e o preço unitário.

SELECT 
    pr.nome, 
    ip.preco_unitario 
FROM 
    itens_pedido ip 
INNER JOIN produtos pr ON  ip.id_produto  = pr.id_produto

WHERE id_pedido = '10'


2.4 - Traga os clientes que não fizeram nenhum pedido (dica: LEFT JOIN + WHERE id_pedido IS NULL).

2.5 - Liste os pedidos pagos com valor acima de R$ 5.000,00, mostrando o nome do cliente.

2.6 - Traga os produtos mais vendidos (somando a quantidade em itens_pedido).

SELECT p.nome,
       SUM(ip.quantidade) AS total_venda
FROM  
produtos p 
INNER JOIN
   itens_pedidos ip ON p.id_produto = ip.id_produto
GROUP BY 
    p.nome
ORDER BY total_venda DESC 
