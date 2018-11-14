defmodule Bookhead.Library.BookTest do
  use Bookhead.DataCase

  alias Bookhead.Library.Author
  alias Bookhead.Library.Book

  setup do
    {:ok, author} = Bookhead.Library.create_author("Salman Rushdie")
    %{author: author}
  end

  test "a valid book can be created", %{author: author} do
    assert {:ok, _book} =
             Bookhead.Library.create_book("Midnight's Children", "9781407437958", author.id)
  end

  test "an invalid author id is rejected" do
    {:error, changeset} = Bookhead.Library.create_book("Who", "123456", -1)
    assert changeset.errors[:author_id] == {"does not exist", []}
  end
end
