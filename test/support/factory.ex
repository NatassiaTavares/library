defmodule Library.Factory do
  use ExMachina.Ecto, repo: Library.Repo

  alias Library.Models.Author

  def author_factory do
    %Author{
      name: sequence("John Doe"),
      birth_date: ~U[1990-06-07 15:30:51.270695Z]
    }
  end
end
