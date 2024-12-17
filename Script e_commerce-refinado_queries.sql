SELECT * FROM Cliente_PF;
SELECT * FROM Pedido;
SELECT * FROM Filial;

SELECT * FROM Produto WHERE valor > 100;

SELECT * FROM Pedido WHERE status_pedido = 'Concluido';

SELECT * FROM Funcionario WHERE filial = 'Azul';

SELECT Pedido.idPedido, Pedido.status_pedido, Cliente_PF.nome, Cliente_PF.endereço
FROM Pedido
JOIN Cliente_PF ON Pedido.idPedido = Cliente_PF.idCliente_PF;

SELECT Pedido.idPedido, Produto.descricao, Produto.valor, Pedido.data_compra
FROM Pedido
JOIN Produto ON Pedido.descricao = Produto.idProduto;

SELECT Funcionario.nome, Funcionario.cargo, Filial.localizacao
FROM Funcionario
LEFT JOIN Filial ON Funcionario.filial = Filial.nome;

SELECT Estoque.idEstoque, Produto.descricao, Estoque.filial
FROM Estoque
RIGHT JOIN Produto ON Estoque.idProduto = Produto.idProduto;

SELECT Pedido.idPedido, Produto.descricao, Produto.valor, Pedido.data_compra
FROM Pedido
INNER JOIN Produto ON Pedido.descricao = Produto.idProduto
WHERE Pedido.status_pedido = 'Concluido';

SELECT Funcionario.nome, Funcionario.cargo, Funcionario.salario
FROM Funcionario
INNER JOIN Filial ON Funcionario.filial = Filial.nome
ORDER BY Funcionario.salario DESC;

SELECT Pedido.idPedido, Pedido.status_pedido, Pedido.data_compra
FROM Pedido
WHERE Pedido.data_compra BETWEEN '2024-10-03' AND '2024-10-30'
ORDER BY Pedido.data_compra;


-- Para saber quanto os clientes_pf e clientes_pj gastaram
SELECT 
    CASE 
        WHEN c.idCliente_PF IS NOT NULL THEN 'Cliente PF' 
        ELSE 'Cliente PJ' 
    END AS tipo_cliente,
    c.nome AS nome_cliente,
    SUM(p.valor_pago) AS total_gasto
FROM 
    Pagamento p
JOIN 
    Pedido ped ON p.idPedido = ped.idPedido
LEFT JOIN 
    Cliente_PF c ON ped.id_cliente = c.idCliente_PF
LEFT JOIN 
    Cliente_PJ pj ON ped.id_cliente = pj.idCliente_PJ
GROUP BY 
    tipo_cliente, c.nome, pj.razao_social
ORDER BY 
    total_gasto DESC;
    

-- Para saber o meio de pagamento mais usado
SELECT 
    forma_pagamento,
    COUNT(*) AS quantidade
FROM 
    Pagamento
GROUP BY 
    forma_pagamento
ORDER BY 
    quantidade DESC
LIMIT 4;

SELECT 
    forma_pagamento,
    COUNT(*) AS quantidade
FROM 
    Pagamento
GROUP BY 
    forma_pagamento
ORDER BY 
    quantidade DESC;









