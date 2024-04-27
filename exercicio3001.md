# exercicio3001: 

mostrar nome e preço de todos os produtos; 
mostrar na ordem produtos tipo A, depois B e depois C. ordenar os produtos pelo id em forma decrescente. e ordenar em ordem crescente pelos preços.
se o tipo do produto for A o preço será 20.0, se for B será 70.0, se for C será 530.5


# criando a tabela e fazendo seed dos dados
```
CREATE TABLE products (
id numeric PRIMARY KEY,
name varchar(50),
type char,
price numeric
);

INSERT INTO products (id , name, type, price)
VALUES
(1, 'Monitor',  'B', 0),
(2, 'Headset',  'A', 0),
(3, 'PC Case',  'A', 0),
(4, 'Computer Desk', 'C', 0),
(5, 'Gaming Chair', 'C', 0),
(6, 'Mouse',  'A', 0);
```


# solução para esse exercício

```
SELECT name AS type,
CASE 
	WHEN type = 'A' THEN 20.0
	WHEN type = 'B' THEN 70.0
	ELSE 530.5
END price
FROM products
ORDER BY price ASC, id DESC;
```

obs. usar CASE e WHEN e THEN para fazer a projeção e atribuir os valores respectivos, e fechar com END. Depois usar ORDER BY para ordenar o price e o id.
