# UnidadesFederativas

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Install Node.js dependencies with `npm install` inside the `assets` directory
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
  
  
  A execução do projeto é realizada através do comando mix phx.server
  
  Seguem alguns curls para a utlização dos endpoints:
  
  Criação de estado 
  
  curl --location --request POST 'http://localhost:4000/estado' \
--header 'Content-Type: application/json' \
--data-raw '{
    "nome" : "Sao Paulo",
    "sigla": "SP"
}'

	Criação de município
	
	curl --location --request POST 'http://localhost:4000/municipio' \
--header 'Content-Type: application/json' \
--data-raw '{
    "nome" : "Jandira",
    "estado_id": 4
}'

	Foram implementados os endpoints:
	
	- GET
	- POST
	- PUT
	- Delete
	
	Para a API de estado e para a API de municípios
