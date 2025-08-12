USE biblioteca; 

CREATE TABLE livro(
id INT AUTO_INCREMENT PRIMARY KEY,
titulo VARCHAR (100) NOT NULL, 
autor VARCHAR (100) NOT NULL, 
ano_publicacao YEAR NOT NULL,
categoria VARCHAR (50)
); 

SELECT * FROM biblioteca.livro; 

USE biblioteca;  

CREATE TABLE usuario(
id INT AUTO_INCREMENT PRIMARY KEY, 
nome VARCHAR (100) NOT NULL, 
email VARCHAR (100) NOT NULL, 
telefone VARCHAR (15) NOT NULL
); 

SELECT * FROM biblioteca.usuario;  

USE biblioteca;

CREATE TABLE emprestimo(
id INT AUTO_INCREMENT PRIMARY KEY, 
id_livro INT NOT NULL, 
id_usuario INT NOT NULL, 
data_emprestimo DATE NOT NULL, 
data_devolucao DATE, 
status ENUM('Ativo' , 'Devolvido') DEFAULT 'Ativo', 
FOREIGN KEY (id_livro) REFERENCES livro(id), 
FOREIGN KEY (id_usuario) REFERENCES usuario(id)
); 
SELECT * FROM biblioteca.emprestimo;

