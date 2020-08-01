# WebTreeCrawler

## Development environment

- Install elixir/erlang using `asdf`

Information to install asdf can be found [here](https://github.com/asdf-vm/asdf)

```bash
asdf plugin-add erlang https://github.com/asdf-vm/asdf-erlang
asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir
```

```bash
asdf install
```

or install Erlang and Elixir on your machine.

### Development environment variables

In the [.env](.env) file environments vars needs to be defined for the local environments. Those need to be loaded when working with this project. To do so, one can manually execute:

```bash
source .env
```

or automate this process using [direnv](https://direnv.net/).

```bash
# Install direnv using brew
$ brew install direnv

# From the project folder
$ direnv allow
```

Continue with the instructions [here](https://github.com/direnv/direnv#setup)

### Development environment database

- Install docker&docker-compose

Information to install docker can be found [here](https://docs.docker.com/get-docker/)
Information to install docker-compose can be found [here](https://docs.docker.com/compose/install/)

Set up postgresql database:

```bash
$ docker network create web_tree_crawler_network
$ docker-compose up
```

## Phoenix framework

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server`

## Authors

* **Alberto Revuelta Arribas** - *initial work* [kamigari](https://github.com/kamigari)
* **José Fagoaga Sancho** - *continued work* [jfagoagas](https://github.com/jfagoagas)

## License

* This project is licensed under the License - see the [LICENSE.md](LICENSE.md) file for details.
