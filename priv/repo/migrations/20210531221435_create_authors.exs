defmodule Library.Repo.Migrations.CreateAuthors do
  use Ecto.Migration

  def change do
    create table(:authors) do
      timestamps()

      add :name, :string
      add :birth_date, :utc_datetime_usec
    end
  end
end
