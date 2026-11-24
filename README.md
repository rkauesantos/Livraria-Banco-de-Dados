# 📚 Sistema de Banco de Dados - Livraria

Projeto desenvolvido para estruturar e gerenciar o banco de dados relacional de uma livraria, contemplando o cadastro de livros, autores, editoras e o controle de pedidos de venda.

---

## 🗂️ Estrutura do Banco de Dados

O banco de dados **`Livraria`** foi modelado no **SQL Server** e é composto pelas seguintes tabelas:

* **`tbl_Editoras`**: Armazena os dados cadastrais e contatos das editoras parceiras.
* **`tbl_Autores`**: Registra informações biográficas e nacionalidade dos autores.
* **`tbl_Livros`**: Catálogo principal da livraria, contendo ISBN, título, preço atual, estoque e vínculos com autor e editora.
* **`tbl_Item_Pedido`**: Detalha os livros incluídos em cada venda, registrando quantidade e preço unitário praticado no momento da compra.
* **`tbl_Pedido`**: Consolida as vendas realizadas, registrando data, hora e valor total do pedido.

---

## 🧩 Modelo Lógico

Abaixo está a representação visual do relacionamento entre as tabelas do banco de dados:

![Modelo Lógico do Banco de Dados](Modelo%20Lógico.png)

---

## 🛠️ Tecnologias Utilizadas

* **SGBD:** Microsoft SQL Server (T-SQL)
* **Ferramenta de Gerenciamento:** SQL Server Management Studio (SSMS)
* **Modelagem Lógica:** dbdiagram.io

---

## 🚀 Como Executar o Projeto

1. Abra o **SQL Server Management Studio (SSMS)** e conecte-se à sua instância local.
2. Baixe ou copie o conteúdo do arquivo [`Livraria-Query.sql`](Livraria-Query.sql).
3. Cole o script em uma nova janela de consulta (*New Query*).
4. Execute o script completo (tecla **F5**) para criar o banco de dados, as tabelas e inserir os registros iniciais de teste.

---

## 📁 Arquivos do Repositório

* `Livraria-Query.sql`: Script completo contendo os comandos `CREATE DATABASE`, `CREATE TABLE`, `INSERT INTO` e consultas `SELECT`.
* `Modelo Lógico.png`: Diagrama entidade-relacionamento com as chaves primárias (`PK`) e estrangeiras (`FK`).
