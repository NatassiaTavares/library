defmodule Library.Repositories.Author do
  alias Library.Models.Author
  alias Library.Repo

  import Ecto.Query

  def get_names() do
    query = from(a in Author,
     select: a.name)
    Repo.all(query)
  end
end
