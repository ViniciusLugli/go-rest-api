# Usando uma imagem base oficial do Go
FROM golang:1.25-alpine as builder

# Definir o diretório de trabalho
WORKDIR /app

# Copiar o código da aplicação para o container
COPY . .

# Baixar as dependências do Go (se necessário)
RUN go mod tidy

# Construir a aplicação Go
RUN go build -o myapp .

# Criar uma imagem menor para rodar a aplicação
FROM alpine:latest

# Definir o diretório de trabalho no container
WORKDIR /root/

# Copiar o binário da etapa de build para o container final
COPY --from=builder /app/myapp .

# Expor a porta que a aplicação vai rodar
EXPOSE 8080

# Definir o comando para rodar a aplicação
CMD ["./myapp"]
