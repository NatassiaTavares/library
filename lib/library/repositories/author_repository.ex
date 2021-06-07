defmodule Library.Repositories.Author do
  alias Library.Models.Author
  alias Library.Repo

  import Ecto.Query

  def create(attrs) do
    %Author{}
    |> Author.changeset(attrs)
    |> Repo.insert()
  end

  def update(%Author{} = author, attrs) do
    author
    |> Author.changeset(attrs)
    |> Repo.update()
  end

  def delete(%Author{} = author) do
    Repo.delete(author)
  end

  def get_all() do
    Repo.all(Author)
  end

  def get_names() do
    query =
      from(a in Author,
        select: a.name
      )

    Repo.all(query)
  end
end
