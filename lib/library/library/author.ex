defmodule Library.Library.Author do
  use Ecto.Schema
  import Ecto.Changeset

  schema "authors" do
    field :birth_date, :utc_datetime_usec
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(author, attrs) do
    author
    |> cast(attrs, [:name, :birth_date])
    |> validate_required([:name, :birth_date])
  end
end
