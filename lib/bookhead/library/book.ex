defmodule Bookhead.Library.Book do
  use Ecto.Schema
  import Ecto.Changeset

  alias Bookhead.Library

  schema "books" do
    field(:isbn, :string)
    field(:title, :string)
    belongs_to(:author, Library.Author)

    timestamps()
  end

  def changeset(book, attrs) do
    book
    |> cast(attrs, [:title, :isbn, :author_id])
    |> validate_required([:title, :isbn])
    |> unique_constraint(:isbn)
    |> foreign_key_constraint(:author_id)
  end
end
