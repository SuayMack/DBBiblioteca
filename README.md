**Readme.md - Biblioteca**

![Biblioteca](./img/diagrama_relacionamento.png)

## Descrição

Bem-vindo ao repositório da Biblioteca! Este projeto é um requisito do curso de Formação Web Dev Fullstack - Resilia com o intuito de colocarmos em prática todo conteúdo estudado no módulo 3 do curso.
Biblioteca é um banco de dados construído utilizando MySQL Workbench e para modelagem foi utilizado o dbDiagram, foi desenvolvido para armazenar informações sobre livros, autores e empréstimos em uma biblioteca. Aqui estão as principais informações e instruções para você começar a utilizar o projeto.

## Requisitos

Antes de iniciar, verifique se você possui as seguintes tecnologias instaladas em sua máquina:

- MySQL Workbench (versão 8.0 ou superior)

## Banco de Dados

O banco de dados utilizado neste projeto é o MySQL. Abaixo estão as tabelas criadas para a implementação:

1. **Livro**: Armazena informações sobre os livros, como título, gênero, data de publicação, ISBN e número de exemplares disponíveis.

2. **Autor**: Contém detalhes sobre os autores dos livros, como nome, data de nascimento, nacionalidade e biografia.

3. **Editora**: Armazena informações das editoras dos livros, como nome, endereço e telefone.

4. **LivroAutorEditora**: Tabela intermediária para relacionar livros, autores e editoras.

5. **Usuario**: Registra os usuários da biblioteca, incluindo nome, email, senha e data de cadastro.

6. **Emprestimo**: Armazena os registros de empréstimos de livros, com informações sobre livro emprestado, usuário, data de empréstimo e data de devolução.

## Modelagem do Banco de Dados

A modelagem do banco de dados foi feita utilizando o dbDiagram, um formato simples e intuitivo para representar a estrutura do banco de dados. Abaixo está o diagrama com todas as entidades e relacionamentos criados para este projeto:

![Biblioteca](./img/modelagem_dbDiagram.png)

- Você pode verificar a estrutura, Relacionamentos aqui: [https://dbdocs.io/pry_chu/Projeto-Banco-de-Dados-Biblioteca?schema=public&view=relationships&table=Livro](https://dbdocs.io/pry_chu/Projeto-Banco-de-Dados-Biblioteca?schema=public&view=relationships&table=Livro)

```
Table Livro {
  ID INT [pk]
  Titulo VARCHAR(255)
  Genero VARCHAR(100)
  DataPublicacao DATE
  ISBN VARCHAR(20)
  NumExemplaresDisponiveis INT
}

Table Autor {
  ID INT [pk]
  Nome VARCHAR(100)
  DataNascimento DATE
  Nacionalidade VARCHAR(100)
  Biografia TEXT
}

Table Editora {
  ID INT [pk]
  Nome VARCHAR(100)
  Endereco VARCHAR(255)
  Telefone VARCHAR(20)
}

Table LivroAutorEditora {
  ID INT [pk]
  LivroID INT [ref: > Livro.ID] // Relacionamento com a tabela Livro
  AutorID INT [ref: > Autor.ID] // Relacionamento com a tabela Autor
  EditoraID INT [ref: > Editora.ID]  // Relacionamento com a tabela Editora
}

Table Usuario {
  ID INT [pk]
  Nome VARCHAR(100)
  Email VARCHAR(255)
  Senha VARCHAR(100)
  DataCadastro DATE
}

Table Emprestimo {
  ID INT [pk]
  LivroID INT [ref: > Livro.ID] // Relacionamento com a tabela Livro
  UsuarioID INT [ref: > Usuario.ID] // Relacionamento com a tabela Usuário
  DataEmprestimo DATE
  DataDevolucao DATE
}
```


## Como utilizar o projeto?

Para começar a utilizar a Biblioteca, siga os passos abaixo:

1. Clone o repositório para sua máquina local:
```bash
git clone https://github.com/SuayMack/DBBiblioteca.git
```

2. Certifique-se de ter o MySQL Workbench instalado e o servidor MySQL ativo.

3. Execute o script SQL fornecido no arquivo `db_biblioteca.sql` para criar o banco de dados e as tabelas.

4. Pronto! Agora você está pronto para executar a aplicação e começar a armazenar informações sobre livros e autores em sua biblioteca.

## Preenchimento das Tabelas

Para garantir a funcionalidade e testar o banco de dados, foram inseridos registros nas tabelas. Cada tabela possui pelo menos 5 registros, o que permite uma melhor avaliação do funcionamento da aplicação.
Você pode verificar o código para inserir dados na tabela no arquivo `populando_db_biblioteca.sql`.

## Referências

- Documentação do MySQL Workbench: [https://dev.mysql.com/doc/workbench/en/](https://dev.mysql.com/doc/workbench/en/)
- Documentação do dbDiagram: [https://dbdiagram.io/d](https://dbdiagram.io/d)
- Livros: [https://www.amazon.com.br/](https://www.amazon.com.br/)

Feito com 💜 por Priscila Chueryz