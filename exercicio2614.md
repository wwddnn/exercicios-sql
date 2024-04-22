# exercicio2614: exibir nome dos clientes e data de locação, para as locações realizadas no mês de setembro 2016.


# criando a tabela e fazendo seed dos dados
```
CREATE TABLE customers (
  id numeric PRIMARY KEY,
  name varchar(50),
  street varchar(50),
  city varchar(50)
);

CREATE TABLE rentals (
  id numeric PRIMARY KEY,
  rentals_date date,
  id_customers numeric REFERENCES customers (id)
);

INSERT INTO customers (id, name, street, city)
VALUES
  (1,	'Giovanna Goncalves Oliveira',	'Rua Mato Grosso',	'Canoas'),
  (2,	'Kauã Azevedo Ribeiro',	'Travessa Ibiá',	'Uberlândia'),
  (3,	'Rebeca Barbosa Santos',	'Rua Observatório Meteorológico',	'Salvador'),
  (4,	'Sarah Carvalho Correia',	'Rua Antônio Carlos da Silva',	'Apucarana'),
  (5,	'João Almeida Lima',	'Rua Rio Taiuva',	'Ponta Grossa'),
  (6,	'Diogo Melo Dias',	'Rua Duzentos e Cinqüenta',	'Várzea Grande');
  
INSERT INTO rentals (id, rentals_date, id_customers)
VALUES
  (1,	'10/09/2016',	3),
  (2,	'09/02/2016',	1),
  (3,	'08/02/2016',	4),
  (4,	'09/02/2015',	2),
  (5,	'03/02/2016',	6),
  (6,	'04/04/2016',	4);
 ```

# solução para esse exercício

obs. pesquisar no google por 'extract postgres' para entender como funciona essa função. 
```
EXTRACT ( MONTH FROM source);
```

```
SELECT customers.name, rentals.rentals_date
FROM customers
INNER JOIN rentals ON customers.id = rentals.id_customers
WHERE EXTRACT(MONTH FROM rentals.rentals_date) = 9 AND EXTRACT(YEAR FROM rentals.rentals_date) = 2016;
```

obs. uso o EXTRACT e depois MONTH, e no final uso o 9 para trazer o mês desejado que é setembro. e também uso o EXTRACT  e depois YEAR para buscar o ano de 2016.