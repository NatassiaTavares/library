defmodule Library.Models.Book do
  use Ecto.Schema
  import Ecto.Changeset

  schema "books" do
    timestamps()

    field :page_number, :integer
    field :title, :string

    belongs_to(:author, Library.Models.Author)
  end

  @doc false
  def changeset(book, attrs) do
    book
    |> cast(attrs, [:title, :page_number])
    |> validate_required([:title, :page_number])
  end
end
