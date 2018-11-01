defmodule Bookhead.Library.AuthorTest do
  use Bookhead.DataCase

  alias Bookhead.Library.Author

  test "change with valid attributes" do
    change = Author.changeset(%Author{}, %{name: "Salman Rushdie"})
    assert change.valid?
  end

  test "change with invalid attributes" do
    change = Author.changeset(%Author{}, %{name: ""})
    refute change.valid?
  end

  test "name is unique" do
    %Author{}
    |> Author.changeset(%{name: "Salman Rushdie"})
    |> Repo.insert!()

    author = Author.changeset(%Author{}, %{name: "Salman Rushdie"})
    {:error, changeset} = Repo.insert(author)
    assert changeset.errors[:name] == {"has already been taken", []}
  end
end
