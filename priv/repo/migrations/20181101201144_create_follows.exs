defmodule Bookhead.Repo.Migrations.CreateFollows do
  use Ecto.Migration

  def change do
    create table(:follows) do
      add(:user_id, references(:users, on_delete: :nothing))
      add(:author_id, references(:authors, on_delete: :nothing))

      timestamps()
    end

    create(index(:follows, [:user_id]))
    create(index(:follows, [:author_id]))
    create(unique_index(:follows, [:user_id, :author_id]))
  end
end
