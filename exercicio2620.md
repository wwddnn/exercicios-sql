# exercicio2620: exibir o nome dos clientes e o número do pedido para os clientes que fizeram pedido no primeiro semestre de 2016.


# criando a tabela e fazendo seed dos dados

```
CREATE TABLE customers (
  id numeric PRIMARY KEY,
  name varchar(255),
  street varchar(255),
  city varchar(255),
  state char(2),
  credit_limit numeric
);

CREATE TABLE orders (
  id numeric PRIMARY KEY,
  orders_date date,
  id_customers numeric REFERENCES customers (id)
);


INSERT INTO customers (id, name, street, city, state, credit_limit)
VALUES
  (1,	'Nicolas Diogo Cardoso',	'Acesso Um',	'Porto Alegre',	'RS',	475),
  (2,	'Cecília Olivia Rodrigues',	'Rua Sizuka Usuy',	'Cianorte',	'PR',	3170),
  (3,	'Augusto Fernando Carlos Eduardo Cardoso',	'Rua Baldomiro Koerich',	'Palhoça',	'SC',	1067),
  (4,	'Pedro Cardoso',	'Acesso Um',	'Porto Alegre',	'RS',	475),
  (5,	'Sabrina Heloisa Gabriela Barros',	'Rua Engenheiro Tito Marques Fernandes',	'Porto Alegre',	'RS',	4312),
  (6,	'Joaquim Diego Lorenzo Araújo',	'Rua Vitorino',	'Novo Hamburgo',	'RS',	2314);

INSERT INTO orders (id, orders_date, id_customers)
VALUES
  (1,	'13/05/2016',	3),
  (2,	'12/01/2016',	2),
  (3,	'18/04/2016',	5),
  (4,	'07/09/2016',	4),
  (5,	'13/02/2016',	6),
  (6,	'05/08/2016',	3);
```


# solução para esse exercício

```
SELECT customers.name, orders.id
FROM customers
INNER JOIN orders ON customers.id = orders.id_customers
WHERE orders.orders_date BETWEEN '2016-01-01' AND '2016-06-30'
```

# outra solução possível

```
SELECT customers.name, orders.id
FROM customers
INNER JOIN orders ON customers.id = orders.id_customers
WHERE orders.orders_date >= '2016-01-01' AND orders.orders_date <='2016-06-30'
```

