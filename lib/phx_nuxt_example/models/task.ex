defmodule PhxNuxtExample.Task do
  use Ecto.Schema
  import Ecto.Changeset

  schema "task" do
    field(:name, :string)
    field(:completed, :boolean)
    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :completed])
    |> validate_required([:name])
  end
end
