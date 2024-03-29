USE VENDA_ONLINE;
SELECT * FROM CLIENTES;
INSERT INTO CLIENTES
VALUES
( NULL, 'pedro', 'example1@gmail.com', '99999945', '2009-02-01' ),
( NULL, 'arthur', 'example2@gmail.com', '99999967', '2008-02-01' ),
( NULL, 'carol', 'example3@gmail.com', '99999912', '2007-02-01' ),
( NULL, 'giovanna', 'example4@gmail.com', '99999991', '2006-02-01' ),
( NULL, 'renan', 'example5@gmail.com', '99999992', '2005-02-01' ),
( NULL, 'vinicius', 'example6@gmail.com', '99999993', '2009-07-28' ),
( NULL, 'gabriel', 'example7@gmail.com', '99999996', '2004-06-21' ),
( NULL, 'rodrigo', 'example8@gmail.com', '99999994', '2010-05-08' ),
( NULL, 'cassio', 'example9@gmail.com', '99999998', '2000-05-30' ),
( NULL, 'fagner', 'example10@gmail.com', '99999997', '2003-02-02' );
INSERT INTO PRODUTOS
VALUES
( NULL, 'Teste1', 5.90, 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 100 ),
( NULL, 'teste2', 6.90, 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 200 ),
( NULL, 'teste3', 7.90, 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 300 ),
( NULL, 'Teste4', 8.90, 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 400 ),
( NULL, 'Teste5', 9.90, 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 500 ),
( NULL, 'Teste6', 10.90, 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 600 ),
( NULL, 'Teste7', 11.90, 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 700 ),
( NULL, 'Teste8', 12.90, 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 800 ),
( NULL, 'Teste9', 13.90, 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 900 ),
( NULL, 'Teste10', 14.90, 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 1000 );

SELECT * FROM PEDIDOS;
INSERT INTO PEDIDOS
VALUES
( NULL, 1, '2024-03-20', 0, '2024-03-25' ),
( NULL, 2, '2024-03-19', 0, '2024-03-24' ),
( NULL, 3, '2024-03-18', 0, '2024-03-23' ),
( NULL, 4, '2024-03-17', 0, '2024-03-22' ),
( NULL, 5, '2024-03-16', 0, '2024-03-21' ),
( NULL, 6, '2024-03-15', 0, '2024-03-20' ),
( NULL, 7, '2024-03-14', 0, '2024-03-19' ),
( NULL, 8, '2024-03-13', 0, '2024-03-18' ),
( NULL, 9, '2024-03-12', 0, '2024-03-17' ),
( NULL, 10, '2024-03-11', 0, '2024-03-16' );

SELECT * FROM ITENS_PEDIDO;
INSERT INTO ITENS_PEDIDO
VALUES
( NULL, 1, 1, 3, 0,0),
( NULL, 2, 2, 4, 0,0),
( NULL, 3, 3, 7, 0,0),
( NULL, 4, 4, 9, 0,0),
( NULL, 5, 5, 2, 0,0),
( NULL, 6, 6, 12, 0,0),
( NULL, 7, 7, 4, 0,0),
( NULL, 8, 8, 3, 0,0),
( NULL, 9, 9, 19, 0,0),
( NULL, 10, 10, 1, 0,0);

UPDATE CLIENTES
SET NOME = 'joaovitor'
WHERE ID = 7;

UPDATE PRODUTOS
SET PRECO = 8.00
WHERE ID = 12;

UPDATE PEDIDOS
SET DATA_COMPRA= '2024-03-10'
WHERE ID = 10;

UPDATE ITENS_PEDIDO
SET VALOR_UNITARIO = ( SELECT PRECO FROM PRODUTOS WHERE ID = ID_PRODUTO ),  VALOR_TOTAL = ( SELECT PRECO*QUANTIDADE FROM PRODUTOS WHERE ID = ID_PRODUTO )
WHERE ID = 7;

DELETE FROM ITENS_PEDIDO WHERE ID = 9;
DELETE FROM ITENS_PEDIDO WHERE ID = 10;
