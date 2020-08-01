defmodule WebTreeCrawlerWeb.StatusViewTest do
  use WebTreeCrawlerWeb.ConnCase, async: true

  import Phoenix.View

  test "renders a status health repsonse", %{conn: conn} do
    conn = %{conn | status: 200}
    result = render(WebTreeCrawlerWeb.StatusView, "show.json", %{conn: conn})

    expected = %{"status" => "up"}

    assert result == expected
  end
end
