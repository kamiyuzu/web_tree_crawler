# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :web_tree_crawler,
  ecto_repos: [WebTreeCrawler.Repo]

# Configure your database
config :web_tree_crawler, WebTreeCrawler.Repo,
  hostname: System.get_env("POSTGRESQL_HOST"),
  username: System.get_env("POSTGRESQL_USERNAME"),
  password: System.get_env("POSTGRESQL_PASSWORD"),
  database: System.get_env("POSTGRESQL_DATABASE"),
  port: System.get_env("POSTGRESQL_PORT") || 5432,
  pool_size: System.get_env("POSTGRESQL_POOL_SIZE") || 10,
  migration_timestamps: [type: :utc_datetime_usec]

# Configures the endpoint
config :web_tree_crawler, WebTreeCrawlerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "MlS3tSRTAw7ZFNV88VNHbqpMMbmFGZD5fu4dgHhO3YvRhsIi3kRLynO2qEB051bB",
  render_errors: [view: WebTreeCrawlerWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: WebTreeCrawler.PubSub,
  live_view: [signing_salt: "yBk4fJeg"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
