# exercicio2746: Substituir o caracter 'H1' por 'X'.


# criando a tabela e fazendo seed dos dados
```
CREATE TABLE virus (
  id INTEGER,
  name VARCHAR(255)
);


INSERT INTO virus(id, name)
VALUES 
      (1, 'H1RT'),
      (2, 'H7H1'),
      (3, 'HUN8'),
      (4, 'XH1HX'),
      (5, 'XXXX');
```


# solução para esse exercício
```
SELECT REPLACE(name, 'H1', 'X') AS name
FROM virus;
```

obs. usar REPLACE e em seguida nome da coluna e o nome antigo, e por fim o novo nome.