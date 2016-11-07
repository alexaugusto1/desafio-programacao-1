# Desafio de programação 1
Desafio de programação da empresa Nexaas.

## Descrição do projeto
Você recebeu um arquivo de texto com os dados de vendas da empresa. Precisamos criar uma maneira para que estes dados sejam importados para um banco de dados.

Sua tarefa é criar uma interface web que aceite upload de arquivos, normalize os dados e armazene-os em um banco de dados relacional.

## Instruções

### Versões utilizadas

Ruby 2.3.1
Rails 4.2.3

### Passos para rodar a aplicação

Instalação das gemas e configuração do banco de dados:

    bundle install
    rake db:create
    rake db:migrate

Popular o banco com alguns dados inicais (opcional):

    rake db:seed

Ao final, basta rodar a aplicação e acessar [http://localhost:3000](http://localhost:3000):

    rails s
