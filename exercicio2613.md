# exercicio2613: exibir o id e nome com preço menor que 2.00


# criando a tabela e fazendo seed dos dados

```
CREATE TABLE prices (
  id numeric PRIMARY KEY,
  categorie varchar(50),
  value numeric
);


CREATE TABLE movies (
  id numeric PRIMARY KEY,
  name varchar(50),
  id_prices numeric REFERENCES prices (id)
);

INSERT INTO prices (id , categorie, value)
VALUES
  (1,	'Releases',	3.50),
  (2,	'Bronze Seal',	2.00),
  (3,	'Silver Seal',	2.50),
  (4,	'Gold Seal',	3.00),
  (5,	'Promotion',	1.50);
  
INSERT INTO movies (id, name, id_prices)
VALUES
  (1,	'Batman',	3),
  (2,	'The Battle of the Dark River',	3),
  (3,	'White Duck',	5),
  (4,	'Breaking Barriers',	4),
  (5,	'The Two Hours',	2);
```


# solução para esse exercício

```
SELECT movies.id, movies.name
FROM movies
INNER JOIN prices ON movies.id_prices = prices.id
WHERE prices.value < 2.00
```

