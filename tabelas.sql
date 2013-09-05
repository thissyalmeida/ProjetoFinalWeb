/* Deleta as tabelas, caso elas já existam */
DROP TABLE IF EXISTS Yoopielogin;

/* Cria as tabelas */
CREATE TABLE Yoopielogin (
	id TINYINT primary key auto_increment,
	nome VARCHAR(32) NOT NULL,
	email VARCHAR(32) NOT NULL,
	usuario VARCHAR(16) NOT NULL,
	senha VARCHAR(32) NOT NULL,
	acesso TINYINT NOT NULL
	);

/* Insere valores padroes */
INSERT INTO Yoopielogin (nome,email,usuario,senha,acesso) VALUES ('Thissiany Beatriz Almeida','thissy.almeida@gmail.com','thissyAlmeida','123456','1');

