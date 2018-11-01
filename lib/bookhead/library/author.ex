defmodule Bookhead.Library.Author do
  use Ecto.Schema
  import Ecto.Changeset

  schema "authors" do
    field(:name, :string)

    timestamps()
  end

  def changeset(author, attrs) do
    author
    |> cast(attrs, [:name])
    |> validate_required([:name])
    |> unique_constraint(:name)
  end
end
