defmodule Library.Library.Book do
  use Ecto.Schema
  import Ecto.Changeset

  schema "books" do
    field :name, :string
    field :published_at, :utc_datetime_usec
    field :author_id, :id

    timestamps()
  end

  @doc false
  def changeset(book, attrs) do
    book
    |> cast(attrs, [:name, :published_at])
    |> validate_required([:name, :published_at])
  end
end
