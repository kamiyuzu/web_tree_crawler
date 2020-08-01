defmodule WebTreeCrawlerWeb.StatusController do
  use WebTreeCrawlerWeb, :controller

  @spec index(Plug.Conn.t(), any) :: Plug.Conn.t()
  def index(conn, _) do
    render(conn, "show.json")
  end
end
