# exercicio 2993:

Exibir o valor mais frequente, ou seja que se repete mais vezes, ou seja é a moda que ele quer saber.


# criando a tabela e fazendo seed dos dados
```
CREATE TABLE value_table (
    amount integer
);

GRANT SELECT ON value_table TO sql_user;

insert into
value_table (amount)
values
(4),(6),(7),(1),(1),(2),(3),(2),(3),(1),(5),(6),(1),(7),(8),(9),(10),(11),(12),(4),(5),(5),(3),(6),(2),(2),(1);
```


# solução para esse exercício

```
SELECT amount, COUNT(amount) AS most_frequent_value
FROM value_table
GROUP BY amount
ORDER BY COUNT(amount) DESC
LIMIT 1;
```

obs. usar o GROUP BY e o COUNT para contar o amount que aparece com mais frequência. usar ORDER BY para ficar em order decrescente, e depois usar LIMIT 1 para exibir somente o primeiro. 



obs. no final o código fica assim abaixo ... pois tira a projeção já que ela foi feita acima ...

```
SELECT amount AS most_frequent_value
FROM value_table
GROUP BY amount
ORDER BY COUNT(amount) DESC
LIMIT 1;
```