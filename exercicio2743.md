# exercicio2743: qual a quantidade de caracteres que as pessoas tem nos seus nomes. em ordem decrescente pela quantidade de caracteres.


# criando a tabela e fazendo seed dos dados
```
CREATE TABLE people(
	id INTEGER PRIMARY KEY,
	name varchar(255)
);


INSERT INTO people(id, name)
VALUES 
      (1, 'Karen'),
      (2, 'Manuel'),
      (3, 'Ygor'),
      (4, 'Valentine'),
      (5, 'Jo');
```

# solução para esse exercício

```
SELECT name, LENGTH(name) AS length
FROM people
ORDER BY length DESC;
```

obs. usamos o LENGTH ou então o CHAR_LENGTH para contar as letras de cada nome. Usamos AS para dar um apelido a essa coluna. E por fim colocamos em order decrescente usando ORDER BY e DESC.

