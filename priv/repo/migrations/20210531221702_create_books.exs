defmodule Library.Repo.Migrations.CreateBooks do
  use Ecto.Migration

  def change do
    create table(:books) do
      timestamps()

      add :name, :string
      add :published_at, :utc_datetime_usec
      add :author_id, references(:authors, on_delete: :nothing)
    end

    create index(:books, [:author_id])
  end
end
