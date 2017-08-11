defmodule ElixirReleaseExampleWeb.PageController do
  use ElixirReleaseExampleWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
