use Mix.Config

config :web_tree_crawler, WebTreeCrawlerWeb.Endpoint,
  http: [:inet6, port: System.get_env("PORT") || 4000]

# Do not print debug messages in production
config :logger, level: :info
