defmodule Hello.Repo.Migrations.CreateCredential do
  use Ecto.Migration

  def change do
    create table(:credential) do
      add :email, :string
      add :user_id, references(:users, on_delete: :delete_all), null: false

      timestamps()
    end

    create unique_index(:credential, [:email])
    create index(:credential, [:user_id])
  end
end
