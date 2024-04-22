# exercicio2739: exibir o nome e dia do mês de cada cliente que cada cliente paga sua parcela de empréstimo. E colocar esse dia do mês com o tipo INT.


# criando a tabela e fazendo seed dos dados
```
CREATE TABLE loan(
  id INTEGER PRIMARY KEY,
  name VARCHAR(255),
  value NUMERIC,
  payday TIMESTAMP
 );

INSERT INTO loan(id, name, value, payday)
VALUES (1, 'Cristian Ghyprievy', 3000.50, '2017-10-19'),
       (2, 'John Serial', 10000, '2017-10-10'),
       (3, 'Michael Seven', 5000.40, '2017-10-17'),
       (4, 'Joana Cabel', 2000, '2017-10-05'),
       (5, 'Miguel Santos', 4050, '2017-10-20');
```


# solução para esse exercício

```
SELECT name, CAST(EXTRACT(DAY FROM payday) AS INT) AS day
FROM loan;
```

obs. primeiro faço o EXTRACT para saber o DAY, e depois faço o CAST para colocar o tipo da coluna como INT. E por fim faço o AS day para dar o nome dia a essa coluna.