defmodule Backend.Repo.Migrations.CreateStages do
  use Ecto.Migration

  def change do
    create table(:stages) do
      add :stage, :string
      add :status, :string
      add :resolved_at, :utc_datetime

      timestamps()
    end
  end
end
