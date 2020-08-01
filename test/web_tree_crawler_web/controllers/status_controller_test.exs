defmodule PgIssuingWeb.StatusControllerTest do
  use WebTreeCrawlerWeb.ConnCase

  describe "when healthy" do
    test "get index/2 returns 200 ok", context do
      response =
        context.conn
        |> get(Routes.status_path(context.conn, :index))
        |> json_response(200)

      expected = %{"status" => "up"}

      assert response == expected
    end
  end
end
