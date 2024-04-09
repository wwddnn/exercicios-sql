# exercicio2606: exibir o código e nome dos produtos, que tenham o início categoria com 'super'.


# criando a tabela e fazendo seed dos dados

```
CREATE TABLE categories (
  id numeric PRIMARY KEY,
  name varchar
);

CREATE TABLE products (
  id numeric PRIMARY KEY,
  name varchar(50),
  amount numeric,
  price numeric(7,2),
  id_categories numeric REFERENCES categories (id)
);


INSERT INTO categories (id, name)
VALUES 
  (1,	'old stock'),
  (2,	'new stock'),
  (3,	'modern'),
  (4,	'commercial'),
  (5,	'recyclable'),
  (6,	'executive'),
  (7,	'superior'),
  (8,	'wood'),
  (9,	'super luxury'),
  (10,	'vintage');
  
INSERT INTO products (id , name, amount, price, id_categories)
VALUES
  (1,	'Lampshade',	100,	800,	4),
  (2,	'Table for painting',	1000,	560,	9),
  (3,	'Notebook desk',	10000,	25.50,	9),
  (4,	'Computer desk',	350,	320.50,	6),
  (5,	'Chair',	'3000',	'210.64',	9),	
  (6,	'Home alarm',	750,	460,	4);
```


# solução para esse exercício
```
SELECT products.id, products.name
FROM products
INNER JOIN categories ON products.id_categories = categories.id
WHERE categories.name LIKE 'super%'
```

obs. uso where e o like para achar o name da categories que tem a palavra 'super' no começo. 

obs. % é usado para mostrar que pode vir qualquer palavra depois de super.