Sistema de Controle Financeiro - Projeto Banco de Dados
Projeto acadêmico desenvolvido no curso Técnico em Desenvolvimento de Sistemas no SENAC, focado em modelagem e manipulação de banco de dados relacional MySQL.

📌 Objetivo
Criar um banco de dados para controle financeiro pessoal/familiar, com usuários, categorias de despesas e receitas, metas financeiras e compartilhamento entre usuários.

🗂️ Estrutura do Projeto
Este repositório está dividido em 3 etapas:

Etapa3.1.sql - Criação do banco de dados e das tabelas (DDL)
Etapa3.2.sql - Inserção de dados de exemplo (DML - INSERT)
Etapa3.3.sql - Consultas, atualizações e exclusões (SELECT, UPDATE, DELETE + JOIN)
🛠️ Tecnologias
MySQL
Modelagem Relacional
Chaves Primárias e Estrangeiras (Foreign Keys)
Comandos DDL e DML
📊 Tabelas Criadas
usuario - cadastro de usuários
categorias - categorias de receitas e despesas (fixa, variável, lazer, etc)
compartilhamento_usuarios - compartilhamento de controle financeiro entre usuários
saidas_financeiras - registro de despesas
entradas_financeiras - registro de receitas
metas - metas financeiras (moto, geladeira, viagem, etc)
usuario_metas - vínculo entre usuários e metas
💡 Principais Consultas
SELECT * FROM ... - listagem de dados
SELECT ... WHERE - filtros por tipo de categoria e valor
JOIN entre entradas_financeiras e usuario
UPDATE e DELETE com condições
🚀 Como executar
Abra seu MySQL Workbench
Execute primeiro o Etapa3.1.sql para criar o banco controle_financeiro
Execute o Etapa3.2.sql para inserir os dados
Execute o Etapa3.3.sql para testar consultas, edições e exclusões
