defmodule Bookhead.Library.Book do
  use Ecto.Schema
  import Ecto.Changeset

  schema "books" do
    field(:isbn, :string)
    field(:title, :string)
    field(:author_id, :id)

    timestamps()
  end

  @doc false
  def changeset(book, attrs) do
    book
    |> cast(attrs, [:title, :isbn])
    |> validate_required([:title, :isbn])
    |> unique_constraint(:isbn)
  end
end
