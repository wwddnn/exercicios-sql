# exercicio 2740:

Selecionar os 3 primeiros colocados da lista com a frase inicial Podium. E os dois últimos times que serão rebaixados para série B com a frase inicial Demoted.


# criando a tabela e fazendo seed dos dados
```
CREATE TABLE league(
  position INTEGER,
  team CHARACTER VARYING (255)
);


INSERT INTO league(position, team)
VALUES (1, 'The Quack Bats'),
       (2, 'The Responsible Hornets'),
       (3, 'The Bawdy Dolphins'),
       (4, 'The Abstracted Sharks'),
       (5, 'The Nervous Zebras'),
       (6, 'The Oafish Owls'),
       (7, 'The Unequaled Bison'),
       (8, 'The Keen Kangaroos'),
       (9, 'The Left Nightingales'),
       (10, 'The Terrific Elks'),
       (11, 'The Lumpy Frogs'),
       (12, 'The Swift Buffalo'),
       (13, 'The Big Chargers'),
       (14, 'The Rough Robins'),
       (15, 'The Silver Crocs');
```



# solução para esse exercício

obs. pesquisar no google sobre UNION SQL POSTGRES para achar como é usar o UNION entre duas consultas.

```
SELECT CONCAT('Podium: ', team) AS name
FROM league
WHERE position <= 3

UNION ALL

SELECT CONCAT('Demoted: ', team) AS name
FROM league
WHERE position >= 14;
```

obs. usar CONCAT para adicionar aos três primeiros a palavra 'Podium', e também usar o CONCAT para adicionar aos dois últimos a palavra 'Demoted'.

obs usar UNION para unir as duas consultas.

