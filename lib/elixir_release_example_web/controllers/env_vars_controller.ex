defmodule ElixirReleaseExampleWeb.EnvVarsController do
  use ElixirReleaseExampleWeb, :controller

  def index(conn, _params) do
    conn
      |> put_status(200)
      |> json(System.get_env())
  end
end
