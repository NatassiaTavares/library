defmodule Library.Repo.Migrations.CreateBooks do
  use Ecto.Migration

  def change do
    create table(:books) do
      add :title, :string
      add :page_number, :integer

      timestamps()
    end
  end
end
