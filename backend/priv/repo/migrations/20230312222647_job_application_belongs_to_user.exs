defmodule Backend.Repo.Migrations.JobApplicationBelongsToUser do
  use Ecto.Migration

  def change do
    alter table(:job_applications) do
      add :user_id, references(:users)
    end
  end
end
