defmodule BookheadWeb.Schema.LibraryTypes do
  use Absinthe.Schema.Notation

  object :author do
    field(:id, :id)
    field(:name, :string)
    field(:books, list_of(:book))
  end

  object :book do
    field(:id, :id)
    field(:title, :string)
    field(:isbn, :string)
    field(:author, :author)
  end
end
