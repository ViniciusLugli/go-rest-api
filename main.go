package main

import (
	"fmt"

	"github.com/ViniciusLugli/go-rest-api/database"
	"github.com/ViniciusLugli/go-rest-api/routes"
)

func main() {
	database.ConectaComBancoDeDados()
	fmt.Println("Iniciando o servidor REST com Go")
	routes.HandleRequest()
}
