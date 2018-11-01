defmodule BookheadWeb.Schema do
  use Absinthe.Schema

  import_types(BookheadWeb.Schema.LibraryTypes)

  alias BookheadWeb.Resolvers

  query do
    field :authors, list_of(:author) do
      resolve(&Resolvers.Library.list_authors/3)
    end

    field :author, :author do
      arg(:id, non_null(:id))
      resolve(&Resolvers.Library.get_author/3)
    end
  end

  mutation do
    field :create_author, type: :author do
      arg(:name, non_null(:string))
      resolve(&Resolvers.Library.create_author/3)
    end

    field :create_book, type: :book do
      arg(:title, non_null(:string))
      arg(:isbn, non_null(:string))
      arg(:author_id, non_null(:id))
      resolve(&Resolvers.Library.create_book/3)
    end
  end
end
