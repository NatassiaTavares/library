defmodule Library.Repositories.Book do
  alias Library.Models.Book
  alias Library.Repo

  import Ecto.Query

  def create(attrs) do
    %Book{}
    |> Book.changeset(attrs)
    |> Repo.insert()
  end

  def update(%Book{} = book, attrs) do
    book
    |> Book.changeset(attrs)
    |> Repo.update()
  end

  def delete(%Book{} = book) do
    Repo.delete(book)
  end

  def get_all() do
    Repo.all(Book)
  end

  def get_names() do
    query =
      from(a in Book,
        select: a.name
      )

    Repo.all(query)
  end
end
