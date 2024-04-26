# exercicio2744: exibir o id, senha atual e senha transformada em MD5 de cada usuário.


# criando a tabela e fazendo seed dos dados
```
CREATE TABLE account(
  id INTEGER PRIMARY KEY,
  name VARCHAR(255),
  login VARCHAR(255),
  password VARCHAR(255)
  );
  
  
INSERT INTO account(id, name, login, password)
VALUES (1, 'Joyce P. Parry', 'Promeraw', 'noh1Oozei'),
       (2, 'Michael T. Gonzalez', 'Phers1942', 'Iath3see9bi'),
       (3, 'Heather W. Lawless', 'Hankicht', 'diShono4'),
       (4, 'Otis C. Hitt', 'Conalothe', 'zooFohH7w'),
       (5, 'Roger N. Brownfield', 'Worseente', 'fah7ohNg');
```


# solução para esse exercício

```
SELECT id, password, MD5(password) AS MD5
FROM account;
```

obs. usamos o MD5 para gerar um hash para a coluna password. E depois apelidamos usando o AS MD5.