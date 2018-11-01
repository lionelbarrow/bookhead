defmodule(Bookhead.Library) do
  alias Bookhead.Repo
  alias Bookhead.Library.Author

  def list_authors do
    Repo.all(Author)
  end

  def get_author(id) do
    Repo.get(Author, id)
  end

  def create_author(name) do
    changeset = Author.changeset(%Author{}, %{name: name})
    Repo.insert(changeset)
  end
end
