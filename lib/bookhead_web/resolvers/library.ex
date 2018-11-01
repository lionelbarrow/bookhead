defmodule BookheadWeb.Resolvers.Library do
  def list_authors(_parent, _args, _resolution) do
    {:ok, Bookhead.Library.list_authors()}
  end

  def get_author(_parent, %{id: id}, _resolution) do
    case Bookhead.Library.get_author(id) do
      nil -> {:error, "Author ID #{id} not found"}
      author -> {:ok, author}
    end
  end

  def create_author(_parent, %{name: name}, _resolution) do
    case Bookhead.Library.create_author(name) do
      {:ok, author} -> {:ok, author}
      {:error, changeset} -> {:error, "The author '#{name}' is already present"}
    end
  end

  def create_book(_parent, %{title: title, isbn: isbn, author_id: author_id}, _resolution) do
  end
end
