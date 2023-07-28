-- Criando o banco de dados biblioteca, se não existir.
CREATE DATABASE IF NOT EXISTS  biblioteca;

-- ***** Selecionando Banco de Dados para ativar ***** --
USE biblioteca;

-- ***** Criando TABELAS ***** --
-- Criando tabela Livro
CREATE TABLE `Livro` (
  `ID` INT PRIMARY KEY,
  `Titulo` VARCHAR(255),
  `Genero` VARCHAR(100),
  `DataPublicacao` DATE,
  `ISBN` VARCHAR(20),
  `NumExemplaresDisponiveis` INT
);

-- Criando tabela Autor
CREATE TABLE `Autor` (
  `ID` INT AUTO_INCREMENT PRIMARY KEY,
  `Nome` VARCHAR(100),
  `DataNascimento` DATE,
  `Nacionalidade` VARCHAR(100),
  `Biografia` TEXT
);

-- Criando tabela Editora
CREATE TABLE `Editora` (
  `ID` INT AUTO_INCREMENT PRIMARY KEY,
  `Nome` VARCHAR(100),
  `Endereco` VARCHAR(255),
  `Telefone` VARCHAR(20)
);

-- Criando tabela LivroAutorEditora
CREATE TABLE `LivroAutorEditora` (
  `ID` INT AUTO_INCREMENT PRIMARY KEY,
  `LivroID` INT,
  `AutorID` INT,
  `EditoraID` INT
);

-- Criando tabela Usuario --
CREATE TABLE `Usuario` (
  `ID` INT AUTO_INCREMENT PRIMARY KEY,
  `Nome` VARCHAR(100),
  `Email` VARCHAR(255),
  `Senha` VARCHAR(100),
  `DataCadastro` DATE
);

-- Criando tabela Emprestimo --
CREATE TABLE `Emprestimo` (
  `ID` INT AUTO_INCREMENT PRIMARY KEY,
  `LivroID` INT,
  `UsuarioID` INT,
  `DataEmprestimo` DATE,
  `DataDevolucao` DATE
);

-- ***** Adicionando CHAVES ESTRANGEIRAS ***** --

-- Adicionando chaves estrangeiras na tabela LivroAutorEditora
ALTER TABLE LivroAutorEditora
ADD FOREIGN KEY (LivroID) REFERENCES Livro (ID);

ALTER TABLE LivroAutorEditora
ADD FOREIGN KEY (AutorID) REFERENCES Autor (ID);

ALTER TABLE LivroAutorEditora
ADD FOREIGN KEY (EditoraID) REFERENCES Editora (ID);

-- Adicionando chaves estrangeiras na tabela Emprestimo
ALTER TABLE Emprestimo
ADD FOREIGN KEY (LivroID) REFERENCES Livro (ID);

ALTER TABLE Emprestimo
ADD FOREIGN KEY (UsuarioID) REFERENCES Usuario (ID);

