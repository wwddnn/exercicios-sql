# exercicio 2615:

Exibir o nome das cidades onde moram os clientes, mas sem que o nome da cidade se repita.


# criando a tabela e fazendo seed dos dados
```
CREATE TABLE customers (
  id numeric PRIMARY KEY,
  name varchar(50),
  street varchar(50),
  city varchar(50)
);


INSERT INTO customers (id, name, street, city)
VALUES
  (1,	'Giovanna Goncalves Oliveira',	'Rua Mato Grosso',	'Canoas'),
  (2, 'Kauã Azevedo Ribeiro',	'Travessa Ibiá',	'Uberlândia'),
  (3,	'Rebeca Barbosa Santos',	'Rua Observatório Meteorológico',	'Salvador'),
  (4,	'Sarah Carvalho Correia',	'Rua Antônio Carlos da Silva',	'Uberlândia'),
  (5,	'João Almeida Lima',	'Rua Rio Taiuva',	'Ponta Grossa'),
  (6,	'Diogo Melo Dias',	'Rua Duzentos e Cinqüenta',	'Várzea Grande');
```

# solução para esse exercício

```
SELECT DISTINCT city
FROM customers;
```

obs. usamos o termo DISTINCT para que não tenhamos cidades repetidas.