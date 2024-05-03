# exercicio 2994:

calcular a receita de pagamento de cada medico. cada medico ganha  150 por hora mais a porcentagem a depender do turno de trabalho. 
trabalho durante o dia ((hora * 150) + 1%)
trabalho a tarde ((hora * 150) + 2%)
trabalho a noite ((hora * 150) + 15%)




# criando a tabela e fazendo seed dos dados

```
CREATE TABLE doctors (
id integer PRIMARY KEY,
name varchar(50)
);


CREATE TABLE work_shifts (
id integer PRIMARY KEY,
name varchar(50),
bonus numeric
);


CREATE TABLE attendances (
id integer PRIMARY KEY,
id_doctor integer,
hours integer,
id_work_shift integer,
FOREIGN KEY (id_doctor) REFERENCES  doctors(id),
FOREIGN KEY (id_work_shift) REFERENCES  work_shifts(id)
);


insert into doctors (id,name) values
(1,'Arlino'),
(2,'Tiago'),
(3,'Amanda'),
(4,'Wellington');


insert into work_shifts (id,name,bonus) values
(1,'nocturnal',15),
(2,'afternoon',2),
(3,'day',1);


insert into  attendances (id, id_doctor, hours, id_work_shift) values
(1,1,5,1),
(2,3,2,1),
(3,3,3,2),
(4,2,2,3),
(5,1,5,3),
(6,4,1,3),
(7,4,2,1),
(8,3,2,2),
(9,2,4,2);
```



# solução para esse exercício
```
SELECT 
	d.name, 
	ROUND(SUM((a.hours * 150.0) + (a.hours * 150.0 ) * (w.bonus / 100)), 1) AS salary
FROM doctors d
INNER JOIN attendances a ON d.id = a.id_doctor
INNER JOIN work_shifts w ON w.id = a.id_work_shift
GROUP BY d.id
ORDER BY salary DESC
```

obs. demos um novo nome d para a tabela doctors, e um novo nome a para a tabela attendances, e um novo nome w para a tabela work_shifts.

obs. fizemos um GROUP BY por id dos doctor e SUM para somar esses salarios.

obs Fizemos 2 INNER JOIN para juntar as 3 tabelas.
