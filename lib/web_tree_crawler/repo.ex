defmodule WebTreeCrawler.Repo do
  use Ecto.Repo,
    otp_app: :web_tree_crawler,
    adapter: Ecto.Adapters.Postgres
end
