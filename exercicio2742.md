# exercicio2742: exibir os Richards que estão na dimensão C774 e C875. Usar o campo omega * 1,618 para achar o fator N e usar 3 casas decimais.


# criando a tabela e fazendo seed dos dados
```
CREATE TABLE dimensions(
	id INTEGER PRIMARY KEY,
	name varchar(255)
);

CREATE TABLE life_registry(
	id INTEGER PRIMARY KEY,
	name VARCHAR(255),
	omega NUMERIC,
	dimensions_id INTEGER REFERENCES dimensions (id)
);


INSERT INTO dimensions(id, name)
VALUES 
      (1, 'C774'),
      (2, 'C784'),
      (3, 'C794'),
      (4, 'C824'),
      (5, 'C875');
      
INSERT INTO life_registry(id, name, omega, dimensions_id)
VALUES
	  (1, 'Richard Postman', 5.6, 2),	
	  (2, 'Simple Jelly', 1.4, 1),	
	  (3, 'Richard Gran Master', 2.5, 1),	
	  (4, 'Richard Turing', 6.4, 4),	
	  (5, 'Richard Strall',	1.0, 3);
```


# solução para esse exercício

```
SELECT life_registry.name, ROUND((life_registry.omega * 1.618), 3) AS "Fator N"
FROM dimensions
INNER JOIN life_registry ON dimensions.id = life_registry.dimensions_id
WHERE life_registry.name LIKE 'Richard%' AND dimensions.name IN ('C875', 'C774')
ORDER BY life_registry.omega ASC;
```

obs. temos bastante coisa interessante nessa questão. Primeiro é usar o operador LIKE para achar exatamente o nome que desejamos que é 'Richard%'. Depois usamos o operador IN para escolher somente o 'C875' e 'C774'. Usamos também o ROUND para arredondar em 3 casas decimais, e usamos o aspas duplas para dar um apelido a essa tabela que será o cálculo do Fator N que é omega * 1,618.