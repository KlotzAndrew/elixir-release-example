defmodule ElixirReleaseExample.Blog.Post do
  use Ecto.Schema
  import Ecto.Changeset
  alias ElixirReleaseExample.Blog.Post


  schema "posts" do
    field :content, :string
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(%Post{} = post, attrs) do
    post
    |> cast(attrs, [:title, :content])
    |> validate_required([:title, :content])
  end
end
