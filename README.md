# API REST de Personalidades em Go

![Go version](https://img.shields.io/badge/go-1.25-blue.svg)
![License](https://img.shields.io/badge/license-MIT-green.svg)

## 📖 Sobre

Este projeto é uma API REST desenvolvida em Go para gerenciar um cadastro de "personalidades". A aplicação permite realizar operações de CRUD (Criar, Ler, Atualizar e Deletar) para as personalidades armazenadas em um banco de dados PostgreSQL.

O projeto é totalmente containerizado usando Docker e Docker Compose, facilitando a configuração e execução do ambiente de desenvolvimento e produção.

## ✨ Features

- ✅ **CRUD completo** para gerenciar personalidades.
- ✅ **Containerização com Docker:** Ambiente padronizado e de fácil configuração.
- ✅ **Hot-Reload:** Recarregamento automático da aplicação em modo de desenvolvimento.
- ✅ **Banco de dados PostgreSQL.**
- ✅ **Documentação de endpoints.**

## 🛠️ Tecnologias Utilizadas

- **[Go](https://golang.org/)**: Linguagem de programação principal.
- **[Docker](https://www.docker.com/)**: Plataforma de containerização.
- **[Docker Compose](https://docs.docker.com/compose/)**: Orquestração de containers.
- **[PostgreSQL](https://www.postgresql.org/)**: Banco de dados relacional.
- **[pgAdmin](https://www.pgadmin.org/)**: Ferramenta de administração para PostgreSQL.
- **[Gorilla/Mux](http://www.gorillatoolkit.org/pkg/mux)**: Roteador de requisições HTTP.
- **[GORM](https://gorm.io/)**: ORM para Go.
- **[Air](https://github.com/air-verse/air)**: Ferramenta de hot-reload para Go.

## 🚀 Como Começar

Siga os passos abaixo para executar o projeto em seu ambiente local.

### Pré-requisitos

- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/install/)

### Instalação

1.  **Clone o repositório:**
    ```bash
    git clone https://github.com/seu-usuario/seu-repositorio.git
    cd seu-repositorio
    ```

2.  **Crie o arquivo de ambiente:**
    Copie o arquivo `.env.example` para um novo arquivo chamado `.env`.
    ```bash
    cp .env.example .env
    ```
    Você pode alterar as variáveis de ambiente no arquivo `.env` se desejar, mas os valores padrão já estão configurados para o ambiente de desenvolvimento.

3.  **Inicie os containers com Docker Compose:**
    ```bash
    docker-compose up -d --build
    ```

A aplicação estará disponível em `http://localhost:8000`. O pgAdmin estará acessível em `http://localhost:54321`.

## Endpoints da API

A API fornece os seguintes endpoints para gerenciar as personalidades:

| Método | Rota                       | Descrição                      |
| :------- | :------------------------- | :------------------------------- |
| `GET`    | `/`                        | Página inicial.                  |
| `GET`    | `/api/personalidades`      | Retorna todas as personalidades. |
| `GET`    | `/api/personalidades/{id}` | Retorna uma personalidade.      |
| `POST`   | `/api/personalidades`      | Cria uma nova personalidade.    |
| `PUT`    | `/api/personalidades/{id}` | Atualiza uma personalidade.     |
| `DELETE` | `/api/personalidades/{id}` | Deleta uma personalidade.       |

### Exemplo de corpo da requisição (POST/PUT)

```json
{
    "nome": "Nome da Personalidade",
    "historia": "História da Personalidade"
}
```

## 📂 Estrutura do Projeto

```
.
├── controllers/      # Lógica de controle das rotas
├── database/         # Configuração da conexão com o banco de dados
├── middleware/       # Middlewares da aplicação
├── migration/        # Scripts de migração do banco de dados
├── models/           # Estruturas de dados (structs)
├── routes/           # Definição das rotas da API
├── .air.toml         # Configuração do Air (hot-reload)
├── .gitignore        # Arquivos ignorados pelo Git
├── docker-compose.yml # Configuração dos serviços Docker
├── Dockerfile        # Dockerfile para produção
├── Dockerfile.dev    # Dockerfile para desenvolvimento
├── go.mod            # Módulos e dependências do Go
├── go.sum            # Checksums das dependências
└── main.go           # Ponto de entrada da aplicação
```

## 📄 Licença

Este projeto está sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.
