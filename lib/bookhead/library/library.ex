defmodule(Bookhead.Library) do
  alias Bookhead.Repo
  alias Bookhead.Library.Author
  alias Bookhead.Library.Book

  def list_authors do
    Repo.all(Author)
  end

  def get_author(id) do
    Repo.get(Author, id)
  end

  def create_author(name) do
    %Author{}
    |> Author.changeset(%{name: name})
    |> Repo.insert()
  end

  def create_book(title, isbn, author_id) do
    %Book{}
    |> Book.changeset(%{title: title, isbn: isbn, author_id: author_id})
    |> Repo.insert()
  end
end
