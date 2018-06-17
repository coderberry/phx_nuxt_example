defmodule PhxNuxtExample.Repo.Migrations.CreateTasks do
  use Ecto.Migration

  def change do
    create table(:tasks) do
      add(:name, :integer)
      add(:completed, :boolean)
      timestamps()
    end
  end
end
