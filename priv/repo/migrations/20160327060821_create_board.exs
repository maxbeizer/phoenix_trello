defmodule PhoenixTrello.Repo.Migrations.CreateBoard do
  use Ecto.Migration

  def change do
    create table(:boards) do
      add :name, :string, null: false
      add :user_id, references(:users)

      timestamps
    end
    create index(:boards, [:user_id])

  end
end
