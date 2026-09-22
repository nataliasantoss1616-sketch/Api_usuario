# API de Usuários

Este projeto é uma aplicação em Dart que consome a API pública de usuários do JSONPlaceholder e exibe os dados no terminal.

## O que a aplicação faz

A API de usuários retorna informações como:

- ID
- Nome
- Username
- Email
- Telefone
- Website

A aplicação faz uma requisição HTTP para o endpoint:

https://jsonplaceholder.typicode.com/users

Em seguida, converte cada item em um objeto da classe `Usuario` e imprime os dados no console.

## Tecnologias utilizadas

- Dart
- HTTP
- JSON
- Modelo de dados orientado a objetos

## Estrutura do projeto

```text
Usuario_api/
├── bin/
│   └── main.dart
├── lib/
│   ├── models/
│   │   └── usuario.dart
│   └── services/
│       └── usuario.service.dart
├── test/
├── pubspec.yaml
├── analysis_options.yaml
├── CHANGELOG.md
└── README.md
```

## Modelagem dos dados

A classe `Usuario` representa cada usuário retornado pela API:

- `id`
- `nome`
- `username`
- `email`
- `telefone`
- `website`

A conversão dos dados vindos do JSON é feita pelo método `fromMap()`.

## Serviço de acesso à API

O arquivo `lib/services/usuario.service.dart` contém a classe `UsuarioService`, responsável por:

- realizar a requisição HTTP
- verificar o status da resposta
- decodificar o JSON
- transformar os dados em objetos `Usuario`

## Como executar

1. Abra o terminal na pasta do projeto.
2. Instale as dependências:

```bash
dart pub get
```

3. Execute a aplicação:

```bash
dart run bin/main.dart
```

## Exemplo de saída

```text
ID: 1
Nome: Leanne Graham
Username: Bret
Email: Sincere@april.biz
Telefone: 1-770-736-8031 x56442
Website: hildegard.org
-------------------------
```

## Observações

Este projeto não cria um servidor local para receber requisições, mas sim um cliente que consome uma API externa. Ele é ideal para praticar comunicação HTTP com Dart e manipulação de dados JSON.

## Autor

Projeto desenvolvido para estudo de programação em Dart e consumo de APIs.
