-- Inserindo registros na tabela Livro
INSERT INTO Livro (ID, Titulo, Genero, DataPublicacao, ISBN, NumExemplaresDisponiveis)
VALUES
  (1, 'Clean Code: A Handbook of Agile Software Craftsmanship', 'Tecnologia', '2008-08-11', '978-0132350884', 5),
  (2, 'The Pragmatic Programmer: Your Journey to Mastery', 'Tecnologia', '1999-10-20', '978-0201616224', 3),
  (3, 'Design Patterns: Elements of Reusable Object-Oriented Software', 'Tecnologia', '1994-10-10', '978-0201633610', 8),
  (4, 'Database System Concepts', 'Banco de Dados', '2019-05-30', '978-0134496688', 2),
  (5, 'SQL Cookbook: Query Solutions and Techniques for All SQL Users', 'Banco de Dados', '2005-10-10', '978-0596009762', 10);

-- Inserindo mais registros na tabela Livro para melhor visualização dos gráficos no Power BI
INSERT INTO Livro (ID, Titulo, Genero, DataPublicacao, ISBN, NumExemplaresDisponiveis)
VALUES
  (6, 'Harry Potter e a Pedra Filosofal', 'Fantasia', '1997-06-26', '978-8532530785', 5),
  (7, 'Harry Potter e a Câmara Secreta', 'Fantasia', '1998-07-02', '978-8532511012', 4),
  (8, 'Harry Potter e o Prisioneiro de Azkaban', 'Fantasia', '1999-07-08', '978-8532511013', 3),
  (9, 'Harry Potter e o Cálice de Fogo', 'Fantasia', '2000-07-08', '978-8532511014', 6),
  (10, 'Harry Potter e a Ordem da Fênix', 'Fantasia', '2003-07-21', '978-8532529455', 7),
  (11, 'Harry Potter e o Enigma do Príncipe', 'Fantasia', '2005-07-16', '978-8532530198', 4),
  (12, 'Harry Potter e as Relíquias da Morte', 'Fantasia', '2007-07-21', '978-8532530789', 6);


-- Inserindo registros na tabela Autor
INSERT INTO Autor (ID, Nome, DataNascimento, Nacionalidade, Biografia)
VALUES
  (1, 'Robert C. Martin', '1952-12-17', 'Americano', 'Robert C. Martin, conhecido como Uncle Bob, é um autor e consultor de software. Ele é famoso por seus livros sobre programação e desenvolvimento de software.'),
  (2, 'Andrew Hunt', '1963-01-01', 'Americano', 'Andrew Hunt é um dos autores de "The Pragmatic Programmer". Ele possui ampla experiência no desenvolvimento de software e é um defensor de práticas ágeis.'),
  (3, 'Erich Gamma', '1961-03-13', 'Suíço', 'Erich Gamma é um dos autores do famoso livro "Design Patterns". Ele é um renomado engenheiro de software e contribuiu para diversas áreas da programação.'),
  (4, 'Hector Garcia-Molina', '1954-02-25', 'Espanhol', 'Hector Garcia-Molina é um cientista da computação conhecido por suas contribuições na área de banco de dados. Ele é autor de diversos artigos e livros acadêmicos.'),
  (5, 'Anthony Molinaro', '1969-01-01', 'Americano', 'Anthony Molinaro é um especialista em banco de dados e autor de "SQL Cookbook". Ele compartilha soluções práticas e técnicas avançadas de SQL em seu livro.');

-- Inserindo registros na tabela Editora
INSERT INTO Editora (ID, Nome, Endereco, Telefone)
VALUES
  (1, 'Prentice Hall', 'New Jersey, USA', '+1 201-236-7139'),
  (2, 'Addison-Wesley Professional', 'Massachusetts, USA', '+1 617-848-6350'),
  (3, 'O''Reilly Media', 'California, USA', '+1 800-998-9938'),
  (4, 'Morgan Kaufmann', 'Massachusetts, USA', '+1 617-928-2500'),
  (5, 'O''Reilly Media', 'California, USA', '+1 800-998-9938');

-- Populando a tabela LivroAutorEditora
INSERT INTO LivroAutorEditora (LivroID, AutorID, EditoraID)
VALUES
  (1, 1, 1),
  (2, 2, 2),
  (3, 3, 3),
  (4, 4, 4),
  (5, 5, 5);

-- Populando a tabela Usuario
INSERT INTO Usuario (Nome, Email, Senha, DataCadastro)
VALUES
  ('João Silva', 'joao.silva@example.com', 'senha123', '2022-01-01'),
  ('Maria Souza', 'maria.souza@example.com', 'senha456', '2022-02-01'),
  ('Carlos Oliveira', 'carlos.oliveira@example.com', 'senha789', '2022-03-01'),
  ('Ana Santos', 'ana.santos@example.com', 'senhaabc', '2022-04-01'),
  ('Pedro Lima', 'pedro.lima@example.com', 'senhaxyz', '2022-05-01');

-- Populando a tabela Emprestimo
INSERT INTO Emprestimo (LivroID, UsuarioID, DataEmprestimo, DataDevolucao)
VALUES
  (1, 1, '2022-01-01', '2022-01-10'),
  (2, 2, '2022-02-01', '2022-02-08'),
  (3, 3, '2022-03-01', '2022-03-15'),
  (4, 4, '2022-04-01', '2022-04-06'),
  (5, 5, '2022-05-01', '2022-05-12');