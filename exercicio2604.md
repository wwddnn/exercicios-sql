# exercicio2604: listar o id e name dos produtos que tem preço menor que 10 OU maior que 100


# criando a tabela e fazendo seed dos dados

```
CREATE TABLE products (
  id NUMERIC PRIMARY KEY,
  name CHARACTER VARYING (255),
  amount NUMERIC,
  price NUMERIC
);

INSERT INTO products (id, name, amount, price)
VALUES 
  (1,	'Two-door wardrobe',	100,	80),
  (2,	'Dining table',	1000,	560),
  (3,	'Towel holder',	10000,	5.50),
  (4,	'Computer desk',	350,	100),
  (5,	'Chair',	3000,	210.64),
  (6,	'Single bed',	750,	99);
```

# solução para esse exercício

```
SELECT id, name
FROM products
WHERE price < 10 OR price > 100
```

# outra solução possível para esse exercício é usar o NOT BETWEEN
```
SELECT id, name
FROM products
WHERE price NOT BETWEEN 10 AND 100
```



