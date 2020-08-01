defmodule WebTreeCrawlerWeb.StatusView do
  use WebTreeCrawlerWeb, :view

  @spec render(String.t(), map) :: map
  def render("show.json", _) do
    ~s({"error": "not_implemented"})
  end
end
