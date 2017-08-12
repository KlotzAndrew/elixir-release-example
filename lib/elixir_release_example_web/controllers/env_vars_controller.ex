defmodule ElixirReleaseExampleWeb.EnvVarsController do
  use ElixirReleaseExampleWeb, :controller

  def index(conn, _params) do
    conn
      |> put_status(200)
      |> json(payload())
  end

  defp payload do
    %{
      System.get_env("HOSTNAME") => System.get_env("ENV_TAG")
    }
  end
end
