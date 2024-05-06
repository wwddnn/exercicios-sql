# exercicio 2996:

exibir ano e nome dos clientes que enviaram e receberam pacotes azuis ou do ano 2015 e também que o endereco do seu remetente ou destinatario não seja de Taiwan.



# criando a tabela e fazendo seed dos dados
```
CREATE TABLE users (
id integer PRIMARY KEY,
name varchar(50),
address varchar(50)
);

CREATE TABLE packages (
id_package integer PRIMARY KEY,
id_user_sender integer,
id_user_receiver integer,
color varchar(50),
year integer,
FOREIGN KEY (id_user_sender) REFERENCES users(id),
FOREIGN KEY (id_user_receiver) REFERENCES users(id)
);

insert into users (id,name,address) values
(1,'Edgar Codd','England'),
(2,'Peter Chen','Taiwan'),
(3,'Jim Gray','United States'),
(4,'Elizabeth ONeil','United States');

insert into packages (id_package,id_user_sender,id_user_receiver,color,year) values
(1,1,2,'blue',2015),
(2,1,3,'blue',2019),
(3,2,4,'red',2019),
(4,2,1,'green',2018),
(5,3,4,'red',2015),
(6,4,3,'blue',2019);
```


# solução para esse exercício
```

SELECT year, package_sender.sender, package_receiver.receiver
FROM packages
INNER JOIN (
	SELECT packages.id_package, users.name AS sender
	FROM users
	INNER JOIN packages ON users.id = packages.id_user_sender
	WHERE users.address <> 'Taiwan'
) AS package_sender ON packages.id_package = package_sender.id_package

INNER JOIN (
	SELECT packages.id_package, users.name AS receiver
	FROM users
	INNER JOIN packages ON users.id = packages.id_user_receiver
	WHERE users.address <> 'Taiwan'
) AS package_receiver ON packages.id_package = package_receiver.id_package

WHERE color = 'blue' OR year = 2015
ORDER BY year DESC, packages.id_package DESC
```

obs. fazer INNER JOIN para exibir os sender, e depois outro INNER JOIN para exibir os outros receiver. e renomear essas consultas com nomes de package_sender, e package_receiver.

obs. colocar essas consultas feitas, dentro da consulta maior. 

obs. fazer a projecao na consulta maior, usando o nome das tabelas criadas nas consultas de INNER JOIN... que são package_sender.sender, e package_receiver.receiver.

obs. por fim usar o WHERE para filtrar o color blue ou o ano year para 2015.

obs e usar ORDER BY para o ano e o id_package ficar em formato decrescente.

