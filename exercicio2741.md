# exercicio2741: mostrar a frase 'Approved' junto com nome do aluno e a nota dele, para os alunos que foram aprovados (grade >= 7).


# criando a tabela e fazendo seed dos dados
```
CREATE TABLE students(
  id INTEGER PRIMARY KEY,
  name VARCHAR(255),
  grade NUMERIC
);


INSERT INTO students(id, name, grade)
VALUES (1, 'Terry B. Padilla',7.3),
       (2, 'William S. Ray',0.6),
       (3, 'Barbara A. Gongora',5.2),
       (4, 'Julie B. Manzer', 6.7),
       (5, 'Teresa J. Axtell', 4.6),
       (6, 'Ben M. Dantzler', 9.6);
```

# solução para esse exercício

```
SELECT CONCAT('Approved: ', name), grade
FROM students
WHERE grade >= 7.0 
ORDER BY grade DESC;
```

obs. usamos o WHERE para achar as notas maior e igual a 7. E usamos o ORDER BY para colocar as notas em ordem decrescente com o DESC.

obs. usar CONCAT para concatenar alguma palavra que vai aparecer no resultado final, nesse caso usamos a palavra 'Approved'.