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
id_livro INT , 
id_usuario INT, 
data_emprestimo DATE NOT NULL, 
data_devolucao DATE, 
status ENUM('Ativo' , 'Devolvido') DEFAULT 'Ativo', 
FOREIGN KEY (id_livro) REFERENCES livro(id), 
FOREIGN KEY (id_usuario) REFERENCES usuario(id)
); 
SELECT * FROM biblioteca.emprestimo; 

USE biblioteca;  

INSERT INTO livro (titulo, autor, ano_publicacao , categoria) VALUES 
('Senhor dos aneis', 'J.R.R Tolkein',2024, 'Fantasia'), 
('Clean Code', 'Robert C Martin',2008, 'Programação'), 
('Dom Casmurro', 'Machado de Assis', 2003, 'Romance'); 

USE biblioteca; 

INSERT INTO usuario (nome, email, telefone) VALUES 
('Maria Silva','maria@email.com', '11999999986' ), 
('João Souya','joao@email.com','11988888876'); 

USE biblioteca; 

INSERT INTO emprestimo (id_livro, id_usuario, data_emprestimo) VALUES 
(22,1,'2025-08-12'), 
(23,2,'2025-08-12');

SELECT * FROM biblioteca.emprestimo; 

SELECT * FROM biblioteca.livro;

SELECT * FROM biblioteca.usuario;

USE biblioteca; 

-- Atualizar dados

UPDATE livro SET categoria = 'Clássico' WHERE ID = 24;

SELECT * FROM biblioteca.livro;
 
 -- Excluir um livro 
 
 USE biblioteca; 
 
 DELETE FROM livro WHERE id = 24; 
 
SELECT * FROM biblioteca.livro; 

-- Consultas

USE biblioteca; 
SELECT * FROM livro; 
SELECT nome, titulo, data_emprestimo, status 

FROM emprestimo

JOIN usuario ON emprestimo.id_usuario = usuario.id
JOIN livro ON emprestimo.id_livro = livro.id;




