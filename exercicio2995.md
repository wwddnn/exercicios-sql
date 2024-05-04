# exercicio 2995:

mostrar a temperatura e o numero de registros.




# criando a tabela e fazendo seed dos dados

```
CREATE TABLE records (
id integer PRIMARY KEY,
temperature integer,
mark integer
);

insert into records (id,temperature,mark) values
(1,30,1),
(2,30,1),
(3,30,1),
(4,32,2),
(5,32,2),
(6,32,2),
(7,32,2),
(8,30,3),
(9,30,3),
(10,30,3),
(11,31,4),
(12,31,4),
(13,33,5),
(14,33,5),
(15,33,5);
```


# solução para esse exercício

```
SELECT temperature, COUNT(mark)
FROM records
GROUP BY mark, temperature
ORDER BY mark ASC
```

obs. fazer GROUP BY com mark e temperature, e fazer o COUNT com mark. 

obs. ordenar tudo com ORDER BY





