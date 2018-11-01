defmodule Bookhead.User.Follows do
  use Ecto.Schema
  import Ecto.Changeset


  schema "follows" do
    field :user_id, :id
    field :author_id, :id

    timestamps()
  end

  @doc false
  def changeset(follows, attrs) do
    follows
    |> cast(attrs, [])
    |> validate_required([])
  end
end
