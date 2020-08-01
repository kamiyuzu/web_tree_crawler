use Mix.Config

# Configure your database
config :web_tree_crawler, WebTreeCrawler.Repo,
  database: System.get_env("POSTGRESQL_DATABASE") <> "_test",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :web_tree_crawler, WebTreeCrawlerWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
