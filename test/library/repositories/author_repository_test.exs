defmodule Library.Repositories.AuthorTest do
  use ExUnit.Case

  import Library.Factory

  alias Library.Repositories.Author, as: AuthorRepo

  setup do
    # Explicitly get a connection before each test
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(Library.Repo)
  end

  describe "create/1" do
    test "create author" do
      AuthorRepo.create(%{
        name: "John Doe",
        birth_date: ~U[1990-06-07 15:30:51.270695Z]
      })

      all_authors = AuthorRepo.get_all()
      first_author = List.first(all_authors)

      assert length(all_authors) == 1
      assert first_author.name == "John Doe"
    end
  end

  describe "read/1" do
    test "get all authors" do
      insert_list(3, :author)

      assert length(AuthorRepo.get_all()) == 3
    end
  end

  describe "update/1" do
    test "update name from author" do
      author = insert(:author)

      {:ok, updated_author} = AuthorRepo.update(author, %{name: "Jane Doe"})

      assert updated_author.name == "Jane Doe"
    end
  end
end
