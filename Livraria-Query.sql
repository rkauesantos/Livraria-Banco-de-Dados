-- Comando para criar databases
CREATE DATABASE Livraria;

-- Marca o espaço que quero utilizar nesse momento
USE Livraria;

-- Comando para criar uma tabela
CREATE TABLE tbl_Editoras (
	ID_Editora INT,
	NomeEmpresa VARCHAR(50),
	TelefoneContato VARCHAR(30),
	EmailCorporativo VARCHAR(50),
	PRIMARY KEY (ID_Editora)
);

-- Inserção das 10 editoras exigidas na atividade
INSERT INTO tbl_Editoras (ID_Editora, NomeEmpresa, TelefoneContato, EmailCorporativo) VALUES
(1, 'Companhia das Letras', '113707-3500', 'contato@companhiadasletras.com.br'),
(2, 'Editora Rocco', '213525-2000', 'atendimento@rocco.com.br'),
(3, 'Editora Intrínseca', '213206-7400', 'contato@intrinseca.com.br'),
(4, 'Editora Sextante', '212538-4100', 'sac@sextante.com.br'),
(5, 'Editora Arqueiro', '113868-4492', 'contato@editoraarqueiro.com.br'),
(6, 'Editora Aleph', '113743-3202', 'contato@editoraaleph.com.br'),
(7, 'DarkSide Books', '212224-5252', 'contato@darksidebooks.com'),
(8, 'Editora Record', '212585-2000', 'sac@record.com.br'),
(9, 'HarperCollins Brasil', '213175-1030', 'atendimento@harpercollins.com.br'),
(10, 'Editora Globo Livros', '113767-7000', 'contato@globolivros.com.br');




 SELECT * FROM tbl_Editoras;




CREATE TABLE tbl_Autores (
  ID_Autor INT,
  NomeCompleto VARCHAR(60),
  Nacionalidade VARCHAR(30),
  DataNascimento DATE,
  PRIMARY KEY (ID_Autor)
);


INSERT INTO tbl_Autores (ID_Autor, NomeCompleto, Nacionalidade, DataNascimento) VALUES
(1, 'Machado de Assis', 'Brasileira', '1839-06-21'),
(2, 'Clarice Lispector', 'Brasileira', '1920-12-10'),
(3, 'Jorge Amado', 'Brasileira', '1912-08-10'),
(4, 'Carlos Drummond de Andrade', 'Brasileira', '1902-10-31'),
(5, 'Cecília Meireles', 'Brasileira', '1901-11-07'),
(6, 'Graciliano Ramos', 'Brasileira', '1892-10-27'),
(7, 'Guimarães Rosa', 'Brasileira', '1908-06-27'),
(8, 'Monteiro Lobato', 'Brasileira', '1882-04-18'),
(9, 'Paulo Coelho', 'Brasileira', '1947-08-24'),
(10, 'Lygia Fagundes Telles', 'Brasileira', '1918-04-19'),
(11, 'Conceição Evaristo', 'Brasileira', '1946-11-29'),
(12, 'Itamar Vieira Junior', 'Brasileira', '1979-08-06'),
(13, 'J.K. Rowling', 'Britânica', '1965-07-31'),
(14, 'George Orwell', 'Britânica', '1903-06-25'),
(15, 'J.R.R. Tolkien', 'Britânica', '1892-01-03'),
(16, 'Agatha Christie', 'Britânica', '1890-09-15'),
(17, 'Jane Austen', 'Britânica', '1775-12-16'),
(18, 'William Shakespeare', 'Britânica', '1564-04-23'),
(19, 'Arthur Conan Doyle', 'Britânica', '1859-05-22'),
(20, 'Neil Gaiman', 'Britânica', '1960-11-10'),
(21, 'Stephen King', 'Americana', '1947-09-21'),
(22, 'George R.R. Martin', 'Americana', '1948-09-20'),
(23, 'Ernest Hemingway', 'Americana', '1899-07-21'),
(24, 'Edgar Allan Poe', 'Americana', '1809-01-19'),
(25, 'Mark Twain', 'Americana', '1835-11-30'),
(26, 'F. Scott Fitzgerald', 'Americana', '1896-09-24'),
(27, 'Isaac Asimov', 'Americana', '1920-01-02'),
(28, 'Ray Bradbury', 'Americana', '1920-08-22'),
(29, 'Rick Riordan', 'Americana', '1964-06-05'),
(30, 'Suzanne Collins', 'Americana', '1962-08-10'),
(31, 'Gabriel García Márquez', 'Colombiana', '1927-03-06'),
(32, 'Isabel Allende', 'Chilena', '1942-08-02'),
(33, 'Pablo Neruda', 'Chilena', '1904-07-12'),
(34, 'Jorge Luis Borges', 'Argentina', '1899-08-24'),
(35, 'Julio Cortázar', 'Argentina', '1914-08-26'),
(36, 'José Saramago', 'Portuguesa', '1922-11-16'),
(37, 'Fernando Pessoa', 'Portuguesa', '1888-06-13'),
(38, 'Eça de Queirós', 'Portuguesa', '1845-11-25'),
(39, 'Luís de Camões', 'Portuguesa', '1524-01-01'),
(40, 'Fiódor Dostoiévski', 'Russa', '1821-11-11'),
(41, 'Liev Tolstói', 'Russa', '1828-09-09'),
(42, 'Anton Tchekhov', 'Russa', '1860-01-29'),
(43, 'Franz Kafka', 'Tcheca', '1883-07-03'),
(44, 'Victor Hugo', 'Francesa', '1802-02-26'),
(45, 'Antoine de Saint-Exupéry', 'Francesa', '1900-06-29'),
(46, 'Júlio Verne', 'Francesa', '1828-02-08'),
(47, 'Albert Camus', 'Francesa', '1913-11-07'),
(48, 'Haruki Murakami', 'Japonesa', '1949-01-12'),
(49, 'Miguel de Cervantes', 'Espanhola', '1547-09-29'),
(50, 'Dante Alighieri', 'Italiana', '1265-05-21');





-- Exemplo de como a tbl_Pedido deve ficar ligada a esses clientes
CREATE TABLE tbl_Pedido (
  ID_Pedido INT NOT NULL,
  ID_Cliente INT NOT NULL,
  ID_ItemPedido INT NOT NULL,
  DataHora DATETIME NOT NULL,
  ValorTotal DECIMAL(10, 2) NOT NULL,
  PRIMARY KEY (ID_Pedido),
  FOREIGN KEY (ID_Cliente) REFERENCES tbl_Clientes (ID_Cliente),
  FOREIGN KEY (ID_ItemPedido) REFERENCES tbl_Item_Pedido (ID_ItemPedido)
);





CREATE TABLE tbl_Livros (
  ISBN VARCHAR(30),
  ID_Autor INT NOT NULL,
  ID_Editora INT NOT NULL,
  Titulo VARCHAR(60) NOT NULL,
  PrecoVendaAtual DECIMAL(10, 2),
  QtdEstoque INT,
  AnoPublicacao VARCHAR(4),
  PRIMARY KEY (ISBN),
  FOREIGN KEY (ID_Autor) REFERENCES tbl_Autores (ID_Autor),
  FOREIGN KEY (ID_Editora) REFERENCES tbl_editoras (ID_Editora)
);


INSERT INTO tbl_Livros (ISBN, ID_Autor, ID_Editora, Titulo, PrecoVendaAtual, QtdEstoque, AnoPublicacao) VALUES
('978-85-359-0277-8', 1, 1, 'Dom Casmurro', 44.90, 25, '1899'),
('978-85-325-1101-0', 13, 2, 'Harry Potter e a Pedra Filosofal', 59.90, 40, '1997'),
('978-85-359-1484-9', 14, 1, '1984', 49.90, 30, '1949'),
('978-85-950-8474-2', 15, 9, 'O Senhor dos Anéis: A Sociedade do Anel', 79.90, 15, '1954'),
('978-85-250-5600-9', 16, 10, 'Assassinato no Expresso do Oriente', 45.00, 20, '1934'),
('978-85-325-2811-7', 2, 2, 'A Hora da Estrela', 39.90, 18, '1977'),
('978-85-805-7218-6', 29, 3, 'Percy Jackson e o Ladrão de Raios', 54.90, 35, '2005'),
('978-85-992-9649-3', 45, 9, 'O Pequeno Príncipe', 34.90, 50, '1943'),
('978-85-765-7200-8', 27, 6, 'Fundação', 64.90, 12, '1951'),
('978-85-945-4147-5', 21, 7, 'O Iluminado', 74.90, 22, '1977');


SELECT * FROM tbl_Livros





CREATE TABLE tbl_Item_Pedido (
  ID_ItemPedido INT NOT NULL,
  ISBN VARCHAR(30) NOT NULL,
  Quantidade INT NOT NULL,
  PrecoUnitarioVenda DECIMAL(10, 2) NOT NULL,
  PRIMARY KEY (ID_ItemPedido),
  FOREIGN KEY (ISBN) REFERENCES tbl_Livros (ISBN)
);



INSERT INTO tbl_Item_Pedido (ID_ItemPedido, ISBN, Quantidade, PrecoUnitarioVenda) VALUES
(1, '978-85-359-0277-8', 2, 44.90),
(2, '978-85-325-1101-0', 1, 59.90),
(3, '978-85-359-1484-9', 3, 49.90),
(4, '978-85-950-8474-2', 1, 79.90),
(5, '978-85-250-5600-9', 2, 45.00),
(6, '978-85-325-2811-7', 1, 39.90),
(7, '978-85-805-7218-6', 4, 54.90),
(8, '978-85-992-9649-3', 5, 34.90),
(9, '978-85-765-7200-8', 1, 64.90),
(10, '978-85-945-4147-5', 2, 74.90);


SELECT * FROM tbl_Livros

-- 2. Cria a tabela corretamente
CREATE TABLE tbl_Pedido (
  ID_Pedido INT NOT NULL,
  ID_ItemPedido INT NOT NULL,
  DataHora DATETIME NOT NULL,
  ValorTotal DECIMAL(10, 2) NOT NULL,
  PRIMARY KEY (ID_Pedido),
  FOREIGN KEY (ID_ItemPedido) REFERENCES tbl_Item_Pedido (ID_ItemPedido)
);

-- 3. Insere os dados com o formato de data aceito em qualquer idioma
INSERT INTO tbl_Pedido (ID_Pedido, ID_ItemPedido, DataHora, ValorTotal) VALUES
(1, 1, '20261117 10:15:00', 89.80),
(2, 2, '20261117 11:30:00', 59.90),
(3, 3, '20261117 14:05:00', 149.70),
(4, 4, '20261117 15:20:00', 79.90),
(5, 5, '20261117 16:45:00', 90.00),
(6, 6, '20261117 17:10:00', 39.90),
(7, 7, '20261117 18:00:00', 219.60),
(8, 8, '20261117 19:25:00', 174.50),
(9, 9, '20261117 20:40:00', 64.90),
(10, 10, '20261117 21:50:00', 149.80);



SELECT * FROM tbl_Pedido;