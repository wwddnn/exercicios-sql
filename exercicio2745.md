# exercicio2745: toda pessoa com renda acima de 3000 paga imposto de 10%. exibir o nome e o valor que a pessoa deve pagar com precisão de duas casas decimais.


# criando a tabela e fazendo seed dos dados
```
CREATE TABLE people (
  id INTEGER PRIMARY KEY,
  name CHARACTER VARYING (255),
  salary NUMERIC
);


INSERT INTO people(id, name, salary)
VALUES 
      (1, 'James M. Tabarez', 883),
      (2, 'Rafael T. Hendon', 4281),
      (3, 'Linda J. Gardner', 4437),
      (4, 'Nicholas J. Conn', 8011),
      (5, 'Karol A. Morales', 2508),
      (6, 'Lolita S. Graves', 8709);
```



# solução para esse exercício
```
SELECT name, ROUND((salary * 0.10), 2) AS tax
FROM people
WHERE salary > 3000
```

obs. Usar a multiplicação por 0,10 para achar os 10% da taxa que será paga para os salários maiores que 3mil. E usar o ROUND para arredondar em 2 casas decimais após a vírgula.
